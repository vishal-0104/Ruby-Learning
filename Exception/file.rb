begin
    puts "Enter the file path"
    path = gets.chomp
    file = File.read(path,"r")
    
rescue Errno::ENOENT => e
    puts "File not found"
    retry
rescue Errno::EACCES => e
    puts "Permission Denied"
rescue Errno::EISDIR => e
    puts "Directory not found"
  ensure
    file.close if file
end
  


