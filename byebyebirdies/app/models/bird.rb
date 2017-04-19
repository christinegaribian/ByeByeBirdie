# == Schema Information
#
# Table name: birds
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'action_view'

class Bird < ApplicationRecord
  COLORS = ["Blue", "Red", "Fuscia", "Purple",
    "Lime-Green", "Green", "Yellow", "Black", "Grey", "Gray", "Orange",
    "Salmon", "Pink", "Beige", "Olive", "Turqoise"]


  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :sex, inclusion: ["M", "F"]
  validates :color, inclusion: COLORS

  include ActionView::Helpers::DateHelper

  has_many :bird_rental_requests,
    primary_key: :id,
    foreign_key: :bird_id,
    class_name: "BirdRentalRequest",
    dependent: :destroy

  def age
    time_ago_in_words(self.birth_date)
  end

end
