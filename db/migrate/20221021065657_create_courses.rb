class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.belongs_to :user
      t.timestamps
    end
  end
end
