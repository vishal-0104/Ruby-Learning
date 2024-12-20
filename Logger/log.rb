require 'logger'


logger = Logger.new("application.log")


logger.level = Logger::INFO


logger.debug("This debug message will not be logged due to the logging level.")
logger.info("This is an informational message.")
logger.warn("This is a warning message.")
logger.error("This is an error message.")
logger.fatal("This is a fatal message.")


puts "Logging complete! Check the application.log file for details."