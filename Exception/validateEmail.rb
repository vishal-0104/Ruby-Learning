class InvalidEmailError < StandardError
  def initialize(message)
    super(message)
  end
end


def validate_email(email)
  regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  raise InvalidEmailError.new("Email is invalid") unless email.match?(regex)
  puts "Email is valid: #{email}"
end


begin
  puts "Enter an email address:"
  email = gets.chomp
  validate_email(email)
rescue InvalidEmailError => e
  puts "Error: #{e.message}"
end
