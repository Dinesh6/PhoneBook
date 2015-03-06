class CreatePhbooks < ActiveRecord::Migration
  def change
    create_table :phbooks do |t|
      t.string :name
      t.string :phone
      t.string :note
      t.integer :User_id

      t.timestamps null: false
    end
  end
end
