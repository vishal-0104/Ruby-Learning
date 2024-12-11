def fetch_data
  data = rand(2)
  raise RuntimeError.new("Unable to fetch data") if data == 1
  puts "fetch data successfully"
end


def process_data
  begin
    fetch_data
  rescue RuntimeError => e
    puts "Error : #{e.message}"
  end
end

process_data
