
require "minitest/autorun"
require_relative "coin_changer.rb"
class Coin_Changer < Minitest::Test

  def test_empty
    assert_equal({quarter: 0, dime: 0, nickel: 0, penny: 0}, coin_changer(0))
  end

  def test_1_cent
    assert_equal({quarter: 0, dime: 0, nickel: 0, penny: 1}, coin_changer(1))
  end

  def test_2_cents
    assert_equal({quarter: 0, dime: 0, nickel: 0, penny: 2}, coin_changer(2))
  end

  def test_5_cents
    assert_equal({quarter: 0, dime: 0, nickel: 1, penny: 0}, coin_changer(5))
  end

  def test_6_cents
    assert_equal({quarter: 0, dime: 0, nickel: 1, penny: 1}, coin_changer(6))
  end

  def test_10_cents
    assert_equal({quarter: 0, dime: 1, nickel: 0, penny: 0}, coin_changer(10))
  end

  def test_15_cents
    assert_equal({quarter: 0, dime: 1, nickel: 1, penny: 0}, coin_changer(15))
  end

  def test_16_cents
    assert_equal({quarter: 0, dime: 1, nickel: 1, penny: 1}, coin_changer(16))
  end

  def test_fail_purpose
  	assert_equal({quarter: 0, dime: 0, nickel: 0, penny: 1}, coin_changer(2))
  end

end




