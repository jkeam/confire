require 'yaml'
require 'log4r'
require_relative 'parser'
require_relative 'processor'
include Log4r

class Main
  def initialize
    # setup configs
    config = YAML::load_file(File.join(__dir__, 'config.yml'))
    filename = config['filename']
    lines_per_test_case = config['lines_per_test_case']

    # setup logger
    logger = Logger.new 'application_logger'
    logger.outputters = Outputter.stdout
    logger.level = config['log_level']
    @logger = logger

    # setup parser
    @parser = Parser.new(
      filename: filename,
      lines_per_test_case: lines_per_test_case
      logger: logger
    )

    # setup processor that will do all the work
    @processor = Processor.new(
      logger: logger
    )
  end

  def run
    block_processor = ->(line_buffer, test_number) do
      processed_block = @processor.process_block line_buffer, test_number
      puts "Case ##{test_number}: #{processed_block}"
    end

    line_processor = ->(line) do
      @processor.process_line line
    end

    @parser.parse block_processor, line_processor
  end
end

Main.new.run
