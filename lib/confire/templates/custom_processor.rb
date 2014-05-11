require 'pry'
class CustomProcessor
  # Logger setup in config.yml
  attr_accessor :logger

  # Gets passed in a buffer (array) of lines.
  #   Given an input with two lines
  #   -------
  #   5 5 23
  #   3 1 1
  #   1 2 3
  #   4 5 6
  #   -------
  #
  #   For example:
  #     If each test case was 2 lines long the first invocation would have the input:
  #       ['5 5 23', '3 1 1']
  #     and the second would be:
  #       ['1 2 3', '4 5 6']
  #
  #   For another example:
  #     This method takes buffers up what is returned from process_line.
  #     So if process_line creates an array by using line.split ' ', you will get an array of arrays.
  #     First invocation:
  #       [["5", "5", "23"], ["3", "1", "1"]]
  #     Second invocation:
  #       [["1", "2", "3"], ["4", "5", "6"]]
  def process_testcase(line_buffer)
    line_buffer
  end

  # Processing that can be done per each line.  Whatever this returns gets stored as a line in the
  # array of arrays described in the process_testcase method.
  #   For example:
  #     method input: '5 5 23'
  #     method implementation: line.split ' '
  #     method output: ["5", "5", "23"]
  def process_line(line)
    line.split ' '
  end
end
