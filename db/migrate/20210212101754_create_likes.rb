class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :liker_id
      t.string :likable_type
      t.integer :likeable_id

      t.timestamps
    end
  end
end
