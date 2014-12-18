class BookInStock

	attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		if isbn.to_s.empty? || price <= 0
			raise ArgumentError.new('isbn is empty or price < 0.')
		end
		@isbn = isbn
		@price = price
	end	
	def price_as_string
		return '$' << sprintf("%.2f", price)
	end
end