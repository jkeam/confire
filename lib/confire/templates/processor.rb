# This is where the main bits are processed
#   We can process lines and blocks here
class Processor
  # Will process a test case.  simply return whatever we want to print out as results
  def process_block(line_buffer, test_number)
    line_buffer
  end

  # Process the line to be stored in the line_buffer
  def process_line(line)
    line.split ' '
  end
end