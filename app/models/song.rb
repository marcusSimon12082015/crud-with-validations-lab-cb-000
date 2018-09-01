class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :released, inclusion: { in: [true,false] }
  validates :title, uniqueness: { scope: :release_year}
  validates :artist_name, presence: true 
  
end 