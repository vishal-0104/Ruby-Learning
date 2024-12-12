class Animal
  def make_sound
    begin
      raise NotImplementedError, "Subclasses must implement the make_sound method."    
    rescue NotImplementedError => e
      puts e.message
    end  
  end


  def describe_animal
    puts "#{self.class} says: #{make_sound}"
  end
end


class Dog < Animal
  def make_sound
    "woof"
  end
end


class Cat < Animal
  def make_sound
    "Meow"
  end
end


dog = Dog.new
cat = Cat.new
dog.describe_animal
cat.describe_animal
