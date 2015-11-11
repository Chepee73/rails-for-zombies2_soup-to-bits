class Book < ActiveRecord::Base

	has_many :book_genres
	has_many :genres, through: :book_genres

	scope :finished, ->{ where.not(finished_on: nil) }
	scope :recent, ->{ where('finished_on > ?', 2.days.ago)}
	scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present?}
	scope :filter, ->(title){
		joins(:genres).where('genres.name = ?', title) if title.present?}

	before_save :set_keywords


# Scope always return a collection so this isn's necesary.
 #  def self.search(keyword)
 #    if keyword.present?
 #    	where(title: keyword)
	# else
	# 	all
	# end
 #  end

  def finished?
    finished_on.present?
  end

  protected 
  	def set_keywords
  		self.keywords = [title, author, description].map(&:downcase).join(' ')
  	end
end
