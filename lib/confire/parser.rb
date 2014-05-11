class Confire
  # Parses the google test case
  class Parser
    attr_accessor :filename, :lines_per_test_case

    # Remember to set:
    #   filename to read (will blow a ArgumentError if not set)
    #   lines_per_test_case
    def initialize(options = {})
      @filename = options[:filename]
      @lines_per_test_case = options[:lines_per_test_case] || 1
      @logger = options[:logger]
    end

    # This will read a given test case and pass that into the test_case_processor.
    #  A test case is defined as the number of lines_per_test_case
    #  Can optionally pass in a line_processor that will process a line before adding it to the buffer.
    #  Will stop reading after we hit the number of test cases defined in the file
    # Assumption: Number of test cases is defined in the first line
    def parse(test_case_processor, line_processor = nil)
      (raise ArgumentError.new('Missing input filename to parse')) unless @filename
      line_counter = -1
      test_cases_read = 0

      test_cases = 0
      line_buffer = []

      IO.foreach(@filename) do |line|
        line.strip!
        # read number of cases
        if line_counter == -1
          test_cases = line.to_i
          # if unable to parse or we get 0, blow up
          raise ArgumentError.new('Missing number of test cases on first line') if test_cases == 0
          line_counter = 0
        # process the test case
        elsif line_counter == (lines_per_test_case - 1)
          line = line_processor.call(line) if line_processor
          line_buffer << line
          test_cases_read += 1
          test_case_processor.call(line_buffer, test_cases_read)
          line_buffer = []
          line_counter = 0
          return if test_cases_read == test_cases
        # keep reading
        else
          line = line_processor.call(line) if line_processor
          line_buffer << line
          line_counter += 1
        end
      end
    end
  end
end
