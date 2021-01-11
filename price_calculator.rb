class Product
  MILK = { :unit_price => 3.97, :min_sale_qty => 2, :sale_price => 5 }.freeze
  BREAD = { :unit_price => 2.17, :min_sale_qty => 3, :sale_price => 6 }.freeze
  BANANA = { :unit_price => 0.99 }.freeze
  APPLE = { :unit_price => 0.89 }.freeze
end

class Purchase
  def initialize(data)
    @items = {}
    data.uniq.each { |item| @items[item] = data.count(item) }
  end
end

puts "Please enter all the items purchased separated by a comma"
data = gets.chomp.split(',').map{ |input| input.strip.capitalize }
purchase = Purchase.new(data)