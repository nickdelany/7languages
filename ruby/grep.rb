pattern = Regexp.new(ARGV[0])
file = ARGV[1]

File.open(file, "r") do |fp|
  num = 1
  fp.readlines().each { |line|
    puts "#{num}: #{line}" if pattern.match(line)
    num += 1
  }
end
