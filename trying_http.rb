require 'net/http'

url = 'http://pokeapi.co/api/v1/pokemon/50/'
resp = Net::HTTP.get_response(URI.parse(url))

resp_text = resp.body

puts resp