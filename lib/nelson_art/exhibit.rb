class NelsonArt::Exhibit

	attr_accessor :name, :dates, :description, :cost, :location

	@@all_exhibits

	def initialize(exhibit_hash)
		#add attributes to exhibit objects as the attributes for each exhibit are scraped from the individual
		#exhibit pages. Then each exhibit is pushed to a collector array.
		exhibit_hash.each do |attribute, value|
			self.send("#{attribute}=", value)
		end
		@@all_exhibits << self
	end

	
end