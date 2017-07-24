
def coin_changer(change_given)
  
  coin_value = {quarter: 25, dime: 10, nickel: 5, penny: 1}
  coins_returned = {quarter: 0, dime: 0, nickel: 0, penny: 0}

  coin_value.each do |actual_coins, value_of_coins|
    while change_given >= value_of_coins
      change_given = change_given - value_of_coins
      coins_returned[actual_coins] += 1
      end
    end
  
  coins_returned

end


