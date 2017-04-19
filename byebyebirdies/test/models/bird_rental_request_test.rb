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

require 'test_helper'

class BirdRentalRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
