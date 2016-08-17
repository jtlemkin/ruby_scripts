def grandfather_clock &block

	time = Time.now.hour

	time.times do |x|
		block.call
	end

end

$nestingDepth = -1

def log d, &block

	$nestingDepth += 1

	puts ('  ' * $nestingDepth) + 'Beginning "' + d + '"...'
	puts ('  ' * $nestingDepth) + '... "' + d + '" finished, returning: ' + block.call.to_s

end

/grandfather_clock { puts "Dong" }/

log "outer block" do 
	log "some little block" do
		5
	end
		
	log "yet another block" do
		"I like Thai food!"
	end
	false
end
