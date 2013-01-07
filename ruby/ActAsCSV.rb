class CsvRow
  def initialize(headers, data)
    @row = {}
    col = 0
    headers.each { |h|
      @row[h] = data[col]
      col += 1
    }
  end

  def method_missing name, *args
    @row[name.to_s]
  end
end

class ActsAsCsv
  def self.acts_as_csv
    define_method "read" do
      file = File.new(self.class.to_s.downcase + '.txt')
      @headers = file.gets.chomp.split(', ')
      file.each do |row|
        @result << row.chomp.split(', ')
      end
    end
    define_method "headers" do
      @headers
    end
    define_method "csv_contents" do
      @result
    end
    define_method "initialize" do
      @result = []
      read
    end
  end

  def each
    @result.each { |r|
      yield CsvRow.new(@headers, r)
    }
  end
end

class RubyCsv < ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect

m.each { |r| p r.h3 }
