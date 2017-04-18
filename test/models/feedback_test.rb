# == Schema Information
#
# Table name: feedbacks
#
#  id          :integer          not null, primary key
#  age         :integer
#  name        :string
#  file        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  date        :datetime
#

require 'test_helper'

class FeedbackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
