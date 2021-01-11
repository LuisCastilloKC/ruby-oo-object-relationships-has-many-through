class Waiter
    attr_accessor :name, :yrs_experience
  
    @@all = []
  
    def initialize(name, yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        @@all << self
    end
  
    def self.all
        @@all
    end

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    end 

    def meals
        Meal.all.select {|meal|meal.waiter == self}
    end

    def best_tipper
        best_tipped_meal = meals.max {|meal_a, meal_b| meal_a.tip <=> meal_b.tip}
        best_tipped_meal.customer
      end 
end 


# Waiter
#     #new_meal
#       initializes a meal using the current Waiter instance, a provided Customer instance and a total and tip
#     #meals
#       returns an Array of Meal instances associated with this waiter
#     #best_tipper
#       returns the Customer instance associated with the meal that received the largest tip

# Finished in 0.00742 seconds (files took 0.11442 seconds to load)
# 12 examples, 0 failures