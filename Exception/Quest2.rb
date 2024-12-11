class AgeError < StandardError


  def initialize(message)
    super(message)
  end


end

def age_limit


  begin
    puts "Enter your age:"
    age = Integer(gets.chomp)
    raise AgeError.new("the age should be in between 18 to 100") if age <=18 || age=>100
    

  rescue AgeError => e
    puts "Caught an error #{e.message}"
    retry


  ensure
    return "Your age is : #{age}"
  end
  
  
end


puts age_limit