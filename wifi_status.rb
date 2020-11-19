class String
  def bg_green
    "\e[42m#{self}\e[0m"
  end

  def bg_red
    "\e[41m#{self}\e[0m"
  end
end

def search_for_connection
  connected_banner = " ".bg_green * 80
  disconnected_banner = " ".bg_red * 80
  while true do
    google_online = system 'ping -c1 www.google.com > /dev/null 2>&1'
    if google_online
      puts connected_banner
    else
      puts disconnected_banner
    end
  end
end

search_for_connection
