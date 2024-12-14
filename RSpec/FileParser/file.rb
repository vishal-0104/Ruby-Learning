class FileParser
  def self.parse_csv(content)
    
    return [] if content.strip.empty?

    rows = content.split("\n")
    headers = rows.first.split(",").map(&:strip)
    data = []

    rows[1..].each_with_index do |row, row_index|
      values = row.split(",").map(&:strip)

      
      if values.size != headers.size
        raise "Malformed file: Row #{row_index + 2} has mismatched columns."
      end

      
      data << values
    end

    
    [headers] + data
  end
end
