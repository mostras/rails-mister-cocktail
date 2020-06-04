puts "============ STARTING INGREDIENTS CREATION =========="

Ingredient.delete_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
doc = open(url).read
data = JSON.parse(doc)

data["drinks"].each do |ingredient|
  ingr = Ingredient.create(name: ingredient["strIngredient1"])
  puts "#{ingr.name} created !!"
end

puts "============ STARTING INGREDIENTS CREATION =========="
