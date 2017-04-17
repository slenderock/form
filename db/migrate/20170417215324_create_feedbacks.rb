class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.integer :age
      t.string :name
      t.string :file
      t.text :description

      t.timestamps
    end
  end
end
