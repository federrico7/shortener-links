class Link < ApplicationRecord
	validates_uniqueness_of :short_url
	validate :format_original_url
	validates_presence_of :short_url, :original_url 

	def format_original_url
		uri = URI.parse(original_url || "")
		if uri.host.nil?
			errors.add(:original_url, "invalid URL format")
		end		
	end

	def shortened_url
		"http://localhost:300/links/#{short_url}"
	end
end
