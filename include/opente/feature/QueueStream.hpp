#pragma once

#include <mutex>
#include <queue>
#include <opencv2/core.hpp>

template <typename T>
class QueueStream : private std::queue<T> 
{
 public:
  QueueStream();
  ~QueueStream();


  void  add(const T& entry);
  T     get();
  float getFps();
  bool  isEmpty();
  void  clear();

  unsigned int size();


 private:
  cv::TickMeter m_tick_meter;
  std::mutex m_mutex;

  unsigned int m_counter;
  int m_number_of_elements;

protected:
  QueueStream(const QueueStream& source) = delete;
  QueueStream(QueueStream&& source) noexcept = delete;

  QueueStream& operator=(const QueueStream& source) = delete;
  QueueStream& operator=(QueueStream&& source) noexcept = delete;

};


template <typename T>
QueueStream<T>::QueueStream() : m_counter(0), m_number_of_elements(0) {}

template <typename T>
QueueStream<T>::~QueueStream() {}


template <typename T>
void QueueStream<T>::add(const T& entry) 
{
  std::lock_guard<std::mutex> lock(m_mutex);
  std::queue<T>::push(entry);
  m_counter++;
  m_number_of_elements++;

  if (m_counter == 1) {
    m_tick_meter.reset();
    m_tick_meter.start();
  }
}

template <typename T>
T QueueStream<T>::get() 
{
  std::lock_guard<std::mutex> lock(m_mutex);
  T entry = this->front();
  this->pop();
  m_number_of_elements--;
  return entry;
}

template <typename T>
float QueueStream<T>::getFps() 
{
  m_tick_meter.stop();
  float fps = static_cast<float>(m_counter / m_tick_meter.getTimeSec());
  m_tick_meter.start();

  return fps;
}

template <typename T>
void QueueStream<T>::clear() 
{
  std::lock_guard<std::mutex> lock(m_mutex);
  while (!this->empty()) 
    {
      this->pop();
      m_number_of_elements--;

    }
}

template <typename T>
bool QueueStream<T>::isEmpty() 
{
  return this->empty();
}

template <typename T>
unsigned int QueueStream<T>::size() 
{ 
  return m_number_of_elements; 
}