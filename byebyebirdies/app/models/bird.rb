class Bird < ApplicationRecord
  validates :birth_date, :color, :name, :sex, :desciption, presence: true
  validates :sex, inclusion: ["M", "F"]
  validates :colors, inclusion: ["Blue", "Red", "Fuscia", "Purple",
    "Lime-Green", "Green", "Yellow", "Black", "Grey", "Gray", "Orange",
    "Salmon", "Pink", "Beige", "Olive", "Turqoise"]

   
end
