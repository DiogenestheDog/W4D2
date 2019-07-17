class Employee
  attr_reader :salary
  
  def initialize(name, title, salary, boss)
    @name, @title, @salary, @boss = name, title, salary, boss
  end

  def bonus(multiplier)
    @salary * multiplier
  end
end

class Manager < Employee
  attr_accessor :employees

  def initialize(name, title, salary, boss=nil)
    super(name, title, salary, boss)
    @employees = []
  end

  def bonus(multiplier)
    base = @employees.inject(0) { |sum, employee| sum += employee.salary }
    base * multiplier
  end
end

# if $PROGRAM == __FILE__ 
#   josh = Employee.new("josh", "chef", 50000, "drake")
# end