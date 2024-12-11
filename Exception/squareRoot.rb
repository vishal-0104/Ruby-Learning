class SquareRootError < StandardError
  def initialize(message)
    super(message)
  end
end


def calculate_square_root

    begin
      puts "Enter a number"
      input = gets.chomp
      number = Float(input)
      raise SquareRootError.new("Negative number") if number < 0
      
      puts "The square root of #{number} is #{Math.sqrt(number)}"

    rescue SquareRootError => e
      puts "Error: #{e.message}. Please enter a valid non-negative number."
      retry
    ensure
      puts "Programe execution done"
    end
end

calculate_square_root
