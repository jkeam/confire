require "minitest/autorun"
require 'confire/processor'

describe Confire::Processor do
  before do
    @processor = Confire::Processor.new
  end

  describe "when asked to process a test case" do
    it "must process it" do
      test_number = 1
      line_buffer = [["5", "5", "23"], ["3", "1", "1"]]
      expected = [["5", "5", "23"], ["3", "1", "1"]]

      actual = @processor.process_block line_buffer, test_number
      actual.must_equal expected
    end
  end

  describe "when asked to process a line" do
    it "must process it" do
      line = "5 5 23"
      expected = ["5", "5", "23"]

      actual = @processor.process_line line
      actual.must_equal expected
    end
  end
end
