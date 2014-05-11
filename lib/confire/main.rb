require 'yaml'
require 'log4r'
require 'confire/parser'
require 'confire/processor'
include Log4r

class Confire
  class Main
    def initialize(options = {})
      # setup configs
      #config = YAML::load_file(File.join(__dir__, 'config.yml'))
      config = YAML::load_file('config.yml')
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
        lines_per_test_case: lines_per_test_case,
        logger: logger
      )

      # setup processor that will do all the work
      @processor = Processor.new(
        logger: logger,
        custom_processor: options[:custom_processor]
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
end

