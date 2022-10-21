class CreateReadingTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :reading_times do |t|
      t.belongs_to :book
      t.belongs_to :user
      t.integer :count
      t.timestamps
    end
  end
end
