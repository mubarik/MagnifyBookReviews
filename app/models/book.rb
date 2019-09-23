class Book < ApplicationRecord
	has_many :authors
	has_many :reviews
	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
    validates :image_url, allow_blank: true, format: {
        with:
        %r{\.(gif|jpg|png)\Z}i,
        message: 'must be a URL for GIF, JPG or PNG image.'
        }

    def averageRating
    	sum = 0
    	average =0
    	self.reviews.each do |review|
    		sum = sum + review.rating
    		puts 'in average method'
    		puts sum
    	end
    	total = self.reviews.length
    	if total > 0
			average = sum/total
		end
		average
    end    
end
