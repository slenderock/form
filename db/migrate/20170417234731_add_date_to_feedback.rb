class AddDateToFeedback < ActiveRecord::Migration[5.0]
  def change
    add_column :feedbacks, :date, :datetime
  end
end
