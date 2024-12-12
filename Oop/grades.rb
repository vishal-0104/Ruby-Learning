class GradeError < StandardError
  def initialize(message)
    super(message)
  end
end

class Student
  attr_accessor :name, :age
  attr_reader :grades


  def initialize(name, age)
    @name = name
    @age = age
    @grades = [] 
  end

  def add_grade(grade)
    begin
      raise GradeError.new("Grade must be in between 0 to 100.") unless grade.between?(0, 100)
      @grades << grade
      puts "Grade #{grade} added successfully."
    rescue GradeError => e
      puts e.message
    end
  end


  def calculate_average
    return 0 if @grades.empty?
    average = @grades.sum / @grades.size.to_f
    puts "Average Grade: #{average.round(2)}"
    average
  end


end


vishal = Student.new("Vishal", 22)


vishal.add_grade(100) 
vishal.add_grade(50)  
vishal.add_grade(110) 
vishal.calculate_average