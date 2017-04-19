# == Schema Information
#
# Table name: bird_rental_requests
#
#  id         :integer          not null, primary key
#  bird_id    :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           default("PENDING")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BirdRentalRequest < ApplicationRecord
  validates :status, inclusion: ["PENDING", "APPROVED", "DENIED"]
  validates :bird_id, :start_date, :end_date, presence: true
  validate :does_not_overlap_approved_request

  belongs_to :bird,
    primary_key: :id,
    foreign_key: :bird_id,
    class_name: "Bird"

  def overlapping_requests
    BirdRentalRequest
      .where(bird_id: self.bird_id)
      .where('NOT (end_date < ? OR start_date > ?)',
        self.start_date, self.end_date)
  end

  def overlapping_approved_requests
    overlapping_requests
      .where(status: "APPROVED")
  end

  def does_not_overlap_approved_request
    errors[:overlap] << "Overlapping Request" if overlapping_approved_requests.exists?
  end
end
