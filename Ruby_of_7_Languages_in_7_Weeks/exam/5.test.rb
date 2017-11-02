require File.expand_path(File.dirname(__FILE__) + "/5.rb")

class TestSuite
  include Testable
  def test_integer
    1.should == 1
    1.should > 0
    2.should >= 2
    2.should >= 1
    2.should <= 2
    2.should <= 3
    2.should != 3
    2.should < 3
    4.should > 3
  end

  def test_float
    2.3.should_not < 1.2
    2.3.should_not > 3.4
  end

  def test_boolean
    true.should be_true
    true.should_not be_false
    false.should_not be_nil
    nil.should be_nil
  end

  def test_string
    "".should be_empty
    "present".should_not be_empty
    "bachue".should be_start_with 'b'
    "bachue".should be_end_with 'e'
  end

  def test_type
    1.should be_true
    nil.should be_nil
  end

  def test_comparison
    2.3.should_not != 2.3
    2.3.should_not >= 2.3
    1.should == 1
  end

  def no_test_case
  end
end

expected = {
  'test_integer' => true,
  'test_float' => true,
  'test_boolean' => true,
  'test_string' => true,
  'test_type' => false,
  'test_comparison' => false
}

actual = TestSuite.test

puts expected == actual ? "Pass : expected: #{expected} actual: #{actual.inspect}" : "__Fail : expected: #{expected.inspect} actual: #{actual}__"

