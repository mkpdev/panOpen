class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :content
      t.belongs_to :course
      t.timestamps
    end
  end
end
