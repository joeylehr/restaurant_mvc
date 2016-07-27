
#restaurant creator
joes_burgers = Restaurant.create(name: "Joe's Burgers", motto: "Meh, it could be worse!", founder: "Joey Chuckles", date_founded: "2016-03-23")

#locations creator
miami = Location.create(location: "Miami", opening_date: "2016-04-23", city: "Miami", state: "FL", restaurant_id: 1)
orlando = Location.create(location: "Orlando", opening_date: "2016-05-23", city: "Orlando", state: "FL", restaurant_id: 1)
new_york = Location.create(location: "New York", opening_date: "2016-04-21", city: "New York", state: "NY", restaurant_id: 1)

# food item creator
cheese_burger = FoodItem.create(name: "Cheese Burger", cost: 5.00, serving_size: "Single", ingredients_description: "Meat Pattie, Cheese, Bun, Lettuce")
double_cheese_burger = FoodItem.create(name: "Miami Mean Double Cheese Burger", cost: 7.50, serving_size: "Single", ingredients_description: "2x Meat Pattie, Cheese, Bun, Lettuce")

# ingredients creator
bread = Ingredient.create(name: "Bun", calories: 200, meat: false, dairy: false, poultry: false, perishable: true)
cheese = Ingredient.create(name: "American Cheese", calories: 300, meat: false, dairy: true, poultry: false, perishable: true)
meat_pattie = Ingredient.create(name: "Meat Pattie", calories: 500, meat: true, dairy: false, poultry: false, perishable: true)
lettuce = Ingredient.create(name: "Lettuce", calories: 50, meat: false, dairy: false, poultry: false, perishable: true)

# food_item_ingredients creator:
#cheeseburger
FoodItemIngredient.create(food_item_id: 1, ingredient_id: 1)
FoodItemIngredient.create(food_item_id: 1, ingredient_id: 2)
FoodItemIngredient.create(food_item_id: 1, ingredient_id: 3)
FoodItemIngredient.create(food_item_id: 1, ingredient_id: 4)

#doublecheese burger
FoodItemIngredient.create(food_item_id: 2, ingredient_id: 1)
FoodItemIngredient.create(food_item_id: 2, ingredient_id: 2)
FoodItemIngredient.create(food_item_id: 2, ingredient_id: 3)
FoodItemIngredient.create(food_item_id: 2, ingredient_id: 3)
FoodItemIngredient.create(food_item_id: 2, ingredient_id: 4)


# location_food_items creator
#cheeseberger for each location
LocationFoodItem.create(food_item_id: 1, location_id: 1)
LocationFoodItem.create(food_item_id: 1, location_id: 2)
LocationFoodItem.create(food_item_id: 1, location_id: 3)
# exclusive berger for Miami
LocationFoodItem.create(food_item_id: 2, location_id: 1)


# Create employees
joe = Employee.create(name: "Joe", date_of_birth: "1980-02-21", hometown: "Miami", start_date: "2016-03-21", bonus: nil, current_employee: true, location_id: 1)
jon = Employee.create(name: "Jon", date_of_birth: "1983-02-21", hometown: "Orlando", start_date: "2016-03-21", bonus: nil, current_employee: true, location_id: 2)

# create roles
host = Role.create(title: "Host", starting_salary: 35000, next_possible_promotion: "Waiter")
waiter = Role.create(title: "Waiter", starting_salary: 40000, next_possible_promotion: "Manager")
chef = Role.create(title: "Chef", starting_salary: 50000, next_possible_promotion: "Head Chef")
sous_chef = Role.create(title: "Sous Chef", starting_salary: 40000, next_possible_promotion: "Chef")
head_chef = Role.create(title: "Head Chef", starting_salary: 70000, next_possible_promotion: nil)
manager = Role.create(title: "Manager", starting_salary: 70000, next_possible_promotion: nil)
cashier = Role.create(title: "Cashier", starting_salary: 35000, next_possible_promotion: "Waiter")

# create employee_role
EmployeeRole.create(employee_id: 1, role_id: 4)
EmployeeRole.create(employee_id: 2, role_id: 5)


# create an order and associate it to a location 
order1 = Order.create(location_id: 1)
order2 = Order.create(location_id: 2)
order3 = Order.create(location_id: 3)
order4 = Order.create(location_id: 1)


# associate an order with one or multiple food items 
FoodItemOrder.create(food_item_id: 2, order_id: 1)
FoodItemOrder.create(food_item_id: 1, order_id: 1)
FoodItemOrder.create(food_item_id: 1, order_id: 2)
FoodItemOrder.create(food_item_id: 1, order_id: 3)
FoodItemOrder.create(food_item_id: 1, order_id: 3)
FoodItemOrder.create(food_item_id: 1, order_id: 3)
FoodItemOrder.create(food_item_id: 1, order_id: 3)
FoodItemOrder.create(food_item_id: 1, order_id: 3)



