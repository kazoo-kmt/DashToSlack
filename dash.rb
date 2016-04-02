#{}`sudo tcpdump -ennqti wlan0 > myout`

File.open('myout').each do |line|
  #puts "line: #{line}"
  # sleep 1
  if line.include?("f0:27:2d:db:27:ec")
    puts "button was pressed!"
  end
end
