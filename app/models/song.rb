class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :released, inclusion: { in: [true,false] }
  validate :release_year_is_optional
  validates :artist_name, presence: true

  def release_year_is_optional
    current_year = Date.current.year
    puts attributes.inspect
    if (released && ( release_year.nil? || release_year.empty? ))
      errors.add(:release_year, "Release year has to be present and not higher than current year!")
    end 
  end  
end 