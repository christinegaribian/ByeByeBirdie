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

require 'test_helper'

class BirdTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
