def stock_picker prices
	profits = {}
	pairs = []

	prices.each_with_index do |price, index|
		for i in (index + 1)...prices.length do
			profit = prices[i] - prices[index]

			profits[profit] = [prices[index], prices[i]]
		end
	end

	p profits.max[1].to_s + " for a profit of #{profits.max[0]}"
end

def stock_generator
	stocks = []

	9.times do
		stocks.push(rand(1..20))
	end

	p stocks

	stocks
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker(stock_generator)
