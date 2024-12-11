begin
  file = File.open("output.txt", "w")
  file.puts("This is some content written to the file.")
  puts "Content written successfully."
rescue StandardError => e
  puts "An error occurred while writing to the file: #{e.message}"
ensure
  file.close if file
  puts "File closed."
end
