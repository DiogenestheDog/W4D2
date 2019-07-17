require_relative "employee.rb"

ned = Manager.new("ned", "founder", 1000000)

darren = Manager.new("darren", "TA manager", 78000, "ned")

david = Employee.new("david", "ta", 10000, "darren")

shawna = Employee.new("shawna", "ta", 12000, "darren")

darren.employees.concat([david, shawna])
ned.employees.concat([darren], darren.employees)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000

# p darren.employees[0].salary

# ned.employees.each do |employee|
#   p employee.salary
# end