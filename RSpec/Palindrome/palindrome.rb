class Palindrome
  def palindrome_number?(num)
    original = num
    reverse = 0

    while num > 0
      digit = num % 10
      reverse = reverse * 10 + digit
      num /= 10
    end

    reverse == original
  end
end
