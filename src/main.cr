unless ARGV.size == 2
    puts "Usage: #{PROGRAM_NAME} old new"
    exit 1
end

olds = File.read_lines ARGV.shift
news = File.read_lines ARGV.shift

require "./re_tail"

re_tail(olds, news).each do |line|
    puts line
end
