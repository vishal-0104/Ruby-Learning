class StringManipulator
  def initialize(str)
    @str = str
  end

  def reverse_words
    @str.split.reverse.join(" ")
  end

  def capitalize_words
    @str.split.map(&:capitalize).join(" ")
  end
end