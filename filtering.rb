# ----- Problem -----
# input: a query
#         - contains price min and max and brand
# output: an array
#         - contains hash elements that meet the query requirements

# rules:
#       Implicit:
#       - price in min and max are included in range when filtering 

# ----- Examples -----
# search(query)
# => [ { name: "Thinkpad x220", price: 250 } ]

# search(query2)
# => [ { name: "Dell Inspiron", price: 300 }, 
#      { name: "Dell Inspiron", price: 450 } ]

# ----- Data Structure -----
# hash - keys and values, arrays

# ----- Algorithm -----
# filter for products with price between min and max
# filter for products with name

# ----- Code -----
PRODUCT = [
  { name: "Thinkpad x210", price: 220 },
  { name: "Thinkpad x220", price: 250 },
  { name: "Thinkpad x250", price: 979 },
  { name: "Thinkpad x230", price: 300 },
  { name: "Thinkpad x230", price: 330 },
  { name: "Thinkpad x230", price: 350 },
  { name: "Thinkpad x240", price: 700 },
  { name: "Macbook Leopard", price: 300 },
  { name: "Macbook Air", price: 700 },
  { name: "Macbook Pro", price: 600 },
  { name: "Macbook", price: 1449 },
  { name: "Dell Latitude", price: 200 },
  { name: "Dell Latitude", price: 650 },
  { name: "Dell Inspiron", price: 300 },
  { name: "Dell Inspiron", price: 450 }
]

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: "dell"
}

def search(query)
  PRODUCT.select do |computer|
    if computer[:price] >= query[:price_min] && computer[:price] <= query[:price_max]
      computer[:name].downcase.start_with?(query[:q])
    end
  end
end

p search(query)
p search(query2)
