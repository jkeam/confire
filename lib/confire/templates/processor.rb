# This is where the main bits are processed
#   We can process lines and blocks here
class Processor
  attr_accessor :logger

  def initialize(options = {})
    @logger = options[:logger]
  end

  # Will process a test case.
  # Just return whatever we want to print out as results.
  # line_buffer: an array of inputs.  each line read is an element in the array
  # test_number: the current test case number we are working on.  probably won't need this value
  def process_block(line_buffer, test_number)
    line_buffer
  end

  # Process the line
  #   Each of these lines get stored as an element in the line_buffer array
  # line: the line the process
  def process_line(line)
    line.split ' '
  end
end