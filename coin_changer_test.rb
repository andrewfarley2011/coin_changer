
# require "minitest/autorun" 
# require_relative "multi-dimensional_array.rb" 
# class Multi_Dimensional_Array < Minitest::Test  

#   def test_1_equals_1
#     assert_equal(1,1)
#   end


# end 

require "minitest/autorun"
require_relative "random_pairing.rb"

class TestPairingNames < Minitest::Test 
def test_pair	
    names = ["Katie", "Derick", "Steph", "Ty"]
    results = pair(names)
    assert_equal(2, results.count)
  end
  def test_multiple_pairs
    names = ["Katie", "Beard", "Steph", "Ty", "Chris", "Robert", "Marcus", "Aaron", "Derrick G.", "Andrew", "Adrian", "John", "Steven", "Tori"]
    results = pair(names)
    assert_equal(7, results.count)
end
  def test_odd_ball
    p names = ["Katie", "Beard", "Steph", "Ty", "Chris", "Robert", "Mark", "Aaron", "Derrick G.", "Andrew", "Adrian", "John", "Steven", "Tori", "Tyler"]
    p results = pair(names)
    p assert_equal(7, results.count)
  end
  end 