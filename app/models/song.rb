class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :released, inclusion: { in: [true,false] }
  validate :release_year_is_optional
  validates :title, uniqueness: { scope: :release_year, message: "should happen only once a year" }
  validates :artist_name, presence: true

  def release_year_is_optional
    current_year = Date.current.year
    puts current_year
    puts attributes.inspect
    if (released && release_year.nil?)
      errors.add(:release_year, "Release year has to be present!")
    end  
  end  
end 