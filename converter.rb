require 'unirest'

puts 'convert the amount from, eg: EUR (EURO)'
f = gets.chomp
puts 'convert the amount to, eg: USD (USA Dollar)'
t = gets.chomp
puts 'indicates the amount'
X = gets.chomp

# These code snippets use an open-source library. http://unirest.io/ruby
response = Unirest.get "https://currencyconverter.p.mashape.com/availablecurrencies",
  headers:{
    "X-Mashape-Key" => [INSERT HERRE YOUR X-Mashape-Key],
    "Accept" => "application/json"
  }

# uncomment the follow line to have the currencies list
#puts response.body

# uncomment the follow line to have the response code
#puts response.code

response = Unirest.get "https://currencyconverter.p.mashape.com/?from=" + f + "&from_amount=" + X + "&to=" + t + "",
  headers:{
    "X-Mashape-Key" => [INSERT HERRE YOUR X-Mashape-Key],
    "Accept" => "application/json"
  }

puts 'the amount is:'
puts response.body["to_amount"]