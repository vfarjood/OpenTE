#include "opente/core/CoreTE.hpp"
#include "opente/utils/Log.hpp"
#include "opente/utils/CmdLineParser.hpp"



int main(int argc, char* argv[])
{
    LOG_INFO("Main:          Program has started.");

    CmdLineParser parser(argc, argv);

    LOG_UPDATE_CONFIGURE(parser.get<std::string>("logMode"),
                         parser.get<std::string>("logType"),
                         parser.get<std::string>("logLevel")); 

    // Setup the model:
    CoreTE model(parser);

    // Load the model:
    model.load();

    // detecte objects:
    model.detect();

    // Save the result:


    LOG_INFO("Main:          Exit the program.");
    return 0;
}