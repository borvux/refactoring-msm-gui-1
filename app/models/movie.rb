# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  belongs_to(:director)
  has_many(:characters)
  has_many(:actors, through: :characters, source: :actor)
  # def director
  #   return Director.where({ :id => self.director_id }).at(0)
  # end

  # def characters
  #   return Character.where({ :movie_id => self.id }).at(0)
  # end
end
