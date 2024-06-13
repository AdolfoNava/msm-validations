# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  validates(:id, presence: true)
  validates(:name, presence: true)
  def characters
    return Character.where({ :actor_id => self.id })
  end
end
