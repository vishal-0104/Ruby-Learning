class Book
  attr_reader :title , :author ,:genre


  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = author
  end
end


class EBook < Book
  def downloading
    "Downloading the ebook of '#{title}' by #{author}"
  end

end


class PhysicalBook < Book
  def checkout
    "Checking out physical book of '#{title}' by #{author}"
  end

end


books = [EBook.new("EBook", "russ", "ruby"), PhysicalBook.new("Mathematics", "R.S.", "Non-Fiction")]
books.each do |book|
  if book.is_a?(EBook)
    puts book.downloading
  else
    puts book.checkout
  end
end