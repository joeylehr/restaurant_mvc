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

# all order numbers = Restaurant.first.order_ids
# get food items using: Order.find(3).food_items
# return all orders
a.map do |order_number|
  Order.find(order_number).food_items
end


MOCK UP OF CLASSES BELOW:
========================

~~!!RESTAURANT!! 
has_many locations 
has_many employees through locations
has_many fooditmes through locations
  - name
  - motto
  - founder

ID      |     Name        |     motto             |       Founder
1           Joe's Tapas       "You'll love it!"          "Joe Lehr"


~~!!LOCATION!!
belongs_to Restaurant
has_many locaton_fooditems
has_many fooditems through locaton_fooditems
has_many ingredients through food_item_ingredients
has_many employees
  - location/name
  - opening date
  - city
  - state
  - restaurant_id

ID |  Location/Name     |    Opening Date |   City  | State | Restaurant_id
1   Joe's Tapas - MIAMI       1/2/2016      MIAMI     FL          1
2   Joe's Tapas - ORLANDO     1/10/2016     ORLANDO   FL          1



~~!!FOODITEM!!
has_many locaton_fooditems
has_many locations through locaton_fooditems
has_many food_item_ingredients
has_many ingredients through food_item_ingredients
  - name
  - cost
  - serving size (single / family)
  - calories
  - ingredients

ID |   Name          | Cost    | Servizing Size | Calories |         Recipe 
 1     Cheese Burger     $6.50        single       1200        "cheese, bread, meat"  

!!LOCATION_FOODITEM!!
belongs to location
belongs to fooditem
ID |  FOOD_ITEM_ID | LOCATION_ID
1        1               1
2        1               2


!!FOOD_ITEM_INGREDIENTS!!
belongs_to food_item
belongs_to ingredients

ID |  FOOD_ITEM_ID | INGREDIENT_ID
1         1              1
2         1              2
3         1              3
4         1              4

!!INGREDIENTS!!
has_many food_item_ingredients
has_many food_items through food_item_ingredients
  - name (differentiate between family size and single size)
  - calories
  - vegetable?
  - meat?
  - dairy?
  - poultry?
  - perishable?

ID | Name    | Calories |    Meat   |  Dairy  |   Veggie   | Perishable
1    Bread      140          False     False      False       True
2    Cheese     200          False     True       False       True
3    Meat       300          True      False      False       True
4    Lettuce    010          False     False      True        False



!!ROLE!!
has_many employee_roles
has_many employees through employee_roles
  - title
  - salary (integer)
  - next possible promotion?

ID | Title      | Starting_Salary   | Next Possible Promotion
1    Host         35,000              Waiter
2    Waiter       40,000              Manager
3    Chef         50,000              Head Chef
4    Sous Chef    40,000              Chef
5    Head Chef    70,000              nil
6    Manager      70,000              nil
7    Cashier      35,000              Waiter


!!EMPLOYEE!!

belongs_to location
has_many employee_roles
has_many roles
  - name
  - age
  - hometown
  - start date
  - bonus
  - currently an employee?
  - location_id
ID | Name | Age | Hometown | Start_date | Bonus      | Currently an employee? | Location_id
1    Joe    29    Miami,FL   3/24/2016       nil               True                    1
2    Jon    30    Orlando,FL 3/25/2016       nil               True                    2


!!EMPLOYEE_ROLE!!
belongs_to employee
belongs to role
ID | Employee_id | Role_id 
1         1           4
2         2           5


!!ORDER!!
--> belongs_to location
--> order has_many food_items
--> food_items has_many orders
** create joint table food_item_orders **



!!food_item_orders!!
belongs_to order
belongs_to food_items
ID | order_id | food_item_id
1       1           1
2       1           2





