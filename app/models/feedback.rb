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

class Feedback < ApplicationRecord
  validates_presence_of :age, :name, :description
  validate :check_age
  validate :check_name
  mount_uploader :file, FileUploader

  private

  def check_age
    errors.add(:age, 'must be in 17..65') unless age.between?(17, 65)
  end

  def check_name
    errors.add(:name, 'must be 2 words each with capital letter') unless valid_name?
  end

  def valid_name?
    name.scan(/^[A-Z]\w+\s[A-Z]\w+/) && name.split.count == 2
  end
end
