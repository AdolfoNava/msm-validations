# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  validates(:id, presence: true)
  validates( :actor_id, presence: true)
  validates( :movie_id, presence: true)
  def movie
    return Movie.where({ :id => self.movie_id }).at(0)
  end
end
