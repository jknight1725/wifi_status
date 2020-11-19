class String
  def bg_green; "\e[42m#{self}\e[0m" end
  def bg_red; "\e[41m#{self}\e[0m" end
end
connected_banner = String.new(" "*80).bg_green
disconnected_banner = String.new(" "*80).bg_red
while true do
  google_online = system 'ping -c1 www.google.com > /dev/null 2>&1'
  if google_online
    puts connected_banner
  else
    puts disconnected_banner
  end
end
