puts "Программа, подсчитывающая сумму покупок"
purchases = {}
sum = 0
loop do
  puts "Введите название товара. Для прекращения ввода - напишите \"стоп\""
  product = gets.chomp
  break if (product == 'стоп' || product == 'stop')

  puts "Введите количество товара: "
  number_of_prod = gets.chomp.to_f

  puts "Введите стоимость за одну единицу товара: "
  price_of_prod = gets.chomp.to_f

  purchases[product] = {number: number_of_prod, price: price_of_prod, total_price: number_of_prod * price_of_prod}
end

puts "В списке покупок следующее:"
purchases.each do |prod_name, props|
  puts "#{prod_name}: количество товара: #{props[:number]}, цена за единицу товара: #{props[:price]}, Итоговая стоимость: #{props[:total_price]}"
  sum += props[:total_price]
end

puts "Итоговая сумма всех покупок: #{sum}"
