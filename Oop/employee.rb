class Employee
  attr_accessor :name , :salary


  def initialize(name, salary)
    @name = name
    @salary = salary
  end


  def display_details
    puts "Name of the employee is : #{@name} and salary is : #{@salary}"
  end

end


class Manager < Employee
  def give_bonus(amount)
    @salary += amount
    puts "Total salary after bonus of #{amount} is : #{@salary}"
  end
end


class Developer < Employee
  def increase_salary(percentage)
    @salary += @salary * (percentage / 100.0)
    puts "Total salary after increment of #{percentage}% is : #{@salary}"
  end
end


manager = Manager.new("vishal", 5000)
manager.give_bonus(1000)
puts manager.display_details


developer = Developer.new("varun", 4000)
developer.increase_salary(10)
puts developer.display_details 