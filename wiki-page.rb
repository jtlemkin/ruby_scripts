require "rubygems"
require "rest-client"

url = "http://en.wikipedia.org/"
res = RestClient.get(url)

fname = "wiki-page.html"
File.open(fname, "w") {|f| f.puts res}