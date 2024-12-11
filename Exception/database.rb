class DataBaseError < StandardError
  def initialize(message)
    super(message)
  end
end


class ConnectionError < StandardError
  def initialize(message)
    super(message)
  end
end


def database_query
  begin 
    connect = rand(2)
    raise DataBaseError.new("Data base has some issue") if connect == 1
    puts "Data base connected"
  rescue DataBaseError => e
    raise ConnectionError.new("failed due to data base : #{e.message}")
  end 
end


begin
  database_query
rescue ConnectionError => e
  puts "Error : #{e.message}"
end




