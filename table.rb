#Create a class Table that:
# - inherits from class Furniture 
# - has added variable for seating(Integer) 
# Uses the module Properties as a mixin to determine number of legs, type of wood, dimensions and description.

require_relative "properties"
require_relative "furniture"

# Inheritance: table inherits methods(furniture.rb) and inherits properties(Properties module in properties.rb)
class Table < Furniture

    include Properties  # from properties.rb
    include ClassMethods # from properties.rb

    def seats(integer)
        puts "Seats #{integer}."
    end
end

# creates a new table for the methods and properties
inherit_table = Table.new

# print methods and properties in table
puts "Table Details: "
inherit_table.total_size(4, 4, 6) # From furniture.rb

inherit_table.seats(4) # From table.rb

print inherit_table.description   # From properties.rb
print inherit_table.four_legs   # From properties.rb

