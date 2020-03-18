using Logging

logger = SimpleLogger(open("log1.txt", "w+"))

with_logger(logger) do
    @info(" here is some context specific logging")
end

global_logger(logger)

@info("All logs will use the global logger by default.")