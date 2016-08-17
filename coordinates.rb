require "rubygems"
require "rest-client"
require "crack"

def get_coordinates_from_address(addr)
	url = "http://maps.googleapis.com/maps/api/geocode/xml?sensor=false&address=#{addr}"
	res = RestClient.get(URI.encode(url))
	parsed_res = Crack::XML.parse(res)

	lat = parsed_res["GeocodeResponse"]["result"][0]["geometry"]["location"]["lat"]
	lng = parsed_res["GeocodeResponse"]["result"][0]["geometry"]["location"]["lng"]

	"#{lat}, #{lng}"
end

puts get_coordinates_from_address("1 Times Square, NYC")
#puts get_coordinates_from_address("1595 Emeric Ave, CA")