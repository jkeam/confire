require "minitest/autorun"
require_relative '../custom_processor'

describe CustomProcessor do
  before do
    @processor = CustomProcessor.new
  end

  describe "when asked to process a test case" do
    it "must process it" do
      line_buffer = [["5", "5", "23"], ["3", "1", "1"]]
      expected = [["5", "5", "23"], ["3", "1", "1"]]

      actual = @processor.process_testcase line_buffer
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

