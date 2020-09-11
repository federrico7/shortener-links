class Link < ApplicationRecord
	validates_uniqueness_of :short_url
	validates_presence_of :short_url, :original_url 
end
