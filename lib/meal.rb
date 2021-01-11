class Meal
    attr_accessor :waiter, :customer, :total, :tip
  
    @@all = []
  
    def initialize(waiter, customer, total, tip=0)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end
  
    def self.all
        @@all
    end
end 


# Object relationships
#   Customer
#     #new_meal
#       initializes a meal using the current Customer instance, a provided Waiter instance and a total and tip
#     #meals
#       returns an Array of Meal instances associated with this customer
#     #waiters
#       returns an Array of Waiter instances associated with this customer's meals