class Product
  MILK = { :unit_price => 3.97, :sale_quantity => 2, :sale_price => 5 }.freeze
  BREAD = { :unit_price => 2.17, :sale_quantity => 3, :sale_price => 6 }.freeze
  BANANA = { :unit_price => 0.99 }.freeze
  APPLE = { :unit_price => 0.89 }.freeze
end

class Purchase
  def initialize(data)
    @items = {}
    data.uniq.each { |item| @items[item] = data.count(item) }
  end

  def description
    puchase_details = "Item     \tQuantity      Price\n--------------------------------------\n"
    @items.each { |item, quantity| puchase_details += "#{item}\t\t#{quantity}\t\t#{sale_price(item, quantity)}\n" }
    puchase_details
  end

  def sale_price(item, quantity)
    item = Product.const_get(item.upcase)
    sale_quantity = item[:sale_quantity] ? item[:sale_quantity] : 1
    item_sale_price = item[:sale_price] ? item[:sale_price] : item[:unit_price]
    (item_sale_price * (quantity / sale_quantity) + item[:unit_price] * (quantity % sale_quantity)).round(2)
  end
end

puts "Please enter all the items purchased separated by a comma"
data = gets.chomp.split(',').map{ |input| input.strip.capitalize }
purchase = Purchase.new(data)

puts purchase.description