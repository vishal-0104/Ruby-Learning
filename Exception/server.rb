def connect_to_server
  attempts = 0
  max_attempts = 3


  begin
    attempts += 1
    puts "Attempting to connect to the server (Attempt #{attempts})"
    raise RuntimeError, "Connection failed" if attempts < max_attempts
    puts "Connected to the server successfully!"
  rescue RuntimeError => e
    puts "Error: #{e.message}"
    retry if attempts < max_attempts
    puts "Failed to connect after #{max_attempts} attempts."
  end

  
end


connect_to_server
