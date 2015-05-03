#127.0.0.1 - - [02/Mar/2014:05:52:15 -0800] "GET /events/diversity08/hotel.html HTTP/1.0" 200 3084 "-" "Mozilla/5.0 (compatible; MJ12bot/v1.4.4; http://www.majestic12.co.uk/bot.php?+)"
lf = ARGV.first
File.open(lf, "r") do |logf|
  logf.each do |line|
    url = line.split(" ")[6]
    filetype = url.split('.')[-1]
    next if filetype.include? "/"
      filetype.split("?")[0]
      counts = Hash.new
      suffix = filetype.split("?")[0]
      p counts[suffix]
  end
end
