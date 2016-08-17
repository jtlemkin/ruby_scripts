require "open-uri"

def fetch_page(url)
	open(url).read
end

def count_tags(page, tag)
	pattern = /<#{tag}\b/
	tags = page.scan(pattern)
	tags.length
end

sites = ["http://www.wsj.com", "http://www.nytimes.com", "http://www.theonion.com"]
tags = ["div","h1","h2","h3","img","p"]   

sites.each do |url|
	puts "#{url} has:"
	tags.each do |tag|
		page = fetch_page(url)
		tag_count = count_tags(page, tag)
		puts "\t - #{tag_count} <#{tag}> tags"
	end
end