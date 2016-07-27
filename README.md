11 different classes / data tables in total.

Seed data file is included that shows the classes in action -- the breakdown of the app (to be viewed alongside the seed info) is as follows:

- The Restauarant class is instantiated and creates the "Joe's Burgers" object/instance
  --> The Restauarant class has many locations (meaning franchises in real life) and via has_many through 'locations', you can check the total amount of food_items, employees, or orders that have been created 
  --> Restauarant attributes are: name, motto, founder, date_founded

- The Location class is instantiated, and as mentioned above, each location instance belongs_to the "Joe Burgers" object (using the foreign key, restaurant_id: 1)
  --> The Location class belongs_to restaurant and has_many: orders, employees,  location_food_items, ingredients (through location_food_items), food_items (through location_food_items) -- these are explained in more detail below
  --> Location attributes are: location (sorta like name), opening_date, city, state, restauarant_id

- The FoodItem class is instantiated and creates two food objects, cheese_burger and double_cheese_burger.
  --> FoodItem uses a join-table with Locations through LocationFoodItems -- the idea behind this is to ensure that each  food object can be associated with multiple locations. Additionally, certain locations can have specific food items that can't be purchased elsewhere.
  --> FoodItem uses also a join-table with Ingredients through FoodItemIngredients3 -- the idea behind this is that ingredients are not exclusive to a FoodItem ... a double cheeseburger and a cheeseburger are both made up of the same ingredients.
  --> Lastly, FoodItem uses a join-table with Orders through FoodItemOrders -- the idea behind this is that a FoodItem, like a burger, is not exclusive to a single order, additionally, as you can see in the seed info, one specific order can contain multiple burgers.
  --> FoodItem attributes are: name, cost, serving_size, ingredients_description 

- The Ingredient class is instantiated and creates four ingredient objects - bread, cheese, meat_pattie, and lettuce.
  --> Ingredient has many FoodItemIngredients (join table) and also FoodItems
  --> Ingredient attributes are: name, calories, meat, dairy, poultry, perishable 

- FoodItemIngredient is the join table for FoodItem + Ingredient and as you can see from the seed file, to create the cheeseburger, the join table class is instantiated four times, each time with the different ingredient and the cheeseburger object (FoodItem with ID 1). 
  --> An additional example includes the double_cheese_burger (FoodItem with ID 2), which uses the meat pattie object twice (Ingredient ID 3)

- As mentioned above, LocationFoodItems is a join-table for Location + FoodItems -- the idea behind this is to ensure that each food object can be associated with multiple locations. Additionally, certain locations can have specific food items that can't be purchased elsewhere.
  --> In the seed file, the cheeseburger object (FoodItem with ID 1) is instantiated with all three locations 
  --> However, the double cheeseburger (called "Miami Mean Double Cheese Burger") is only available in Miami 
    --> Meaning if you run "Location.first.food_items", you'll see that Location 1 (Miami) includes both burger types while the other two locations only list cheeseburger
    --> *A checker method would have to be in place to validate that the food object ordered was part of the location's food_items list*

- The Employee class is instantiated and creates two different employee objects -- joe and jon.
  --> Employee objects belong_to a specific location (joe belongs to the "Miami" location)
  --> Employee uses a join table with Roles through EmployeeRoles, so that employee objects can be associated with a job/role. Employees can be associated with more than one role ... if one was to get promoted.
  --> Employee attributes are: name, date_of_birth, hometown, start_date, bonus, current_employee, location_id

- The Role class is instantiated and creates several  types of jobs -- such as host, waiter, chef, etc.
  --> Role attributes include title, starting_salary, next_possible_promotion
  --> As mentioned above, the Role class uses a join table with Employee via EmployeeRoles

- The EmployeeRole class is instantiated and creates two different associations -- making joe a sous_chef and jon a head_chef

- The Order class is instantiated and makes four different order objects
  --> Order objects belong_to location, meaning that a specific order is exclusive to a location
  --> Order uses a join table with FoodItems through FoodItemOrder so that order objects can consist of multiple food items

- The FoodItemOrder is instantiated and associates order1 twice (which has a location_id of 1 meaning "Miami") -- once with a cheeseburger (FoodItem ID 1) and once with a double cheeseburger (FoodItem ID 2).
  --> Meaning that order with ID 1, is made up of 1 cheeseburger and 1 double cheeseburger

*******

Ideas:
* WRITE METHOD THAT CHECKS IF THE FOOD ITEM IS LOCAL THE TO THE LOCATION *
- Restaurant can find the most popular locations
- Restaurant can find the location that makes the most money
- Be able to promote someone
- Who has been promoted?
- Speciality food per location?
- Method to count the calories?
- Order object
- Print out menu and price for each specific location?
- See if someone got promoted
- See someone's total salary (salary + bonus)




