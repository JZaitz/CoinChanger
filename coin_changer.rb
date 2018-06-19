puts "Coin Changer"





  def coin_changer(amount)

    coins = [25, 10, 5, 1]
    purse = []

    coins.each do |coin|
      purse << [coin] * (amount/coin) if amount >= coin
      amount =  amount - (coin * (amount/coin))
    end

    purse.flatten
  end

puts "What number would you like change for?"
num =  gets.chomp.to_i
puts "**************************************"
puts "Here are your coins!"

puts coin_changer(num)
