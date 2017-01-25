require 'minitest/autorun'
require_relative 'function_name.rb' # could just say "relative" and specify full path, but would only work on our machine

# Convention is to use camel-case for class names in Ruby
# Ex: FirstSecondThirdFourth
class TestFunctionName < Minitest::Test

  def test_1_
    # 
    results = 
    assert_equal( , )
  end

end