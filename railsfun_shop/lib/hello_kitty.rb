require 'open-uri'
class HelloKitty
  def self.say
    url = "https://www.bitoex.com"
    html = open(url).read
    match = html.match(/<title>([^<]*)<\/title>/)
    puts match 
    return "Hi!" * 100
  end
end


HelloKitty.say
