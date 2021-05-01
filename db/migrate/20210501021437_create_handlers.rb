class CreateHandlers < ActiveRecord::Migration[6.0]
  def change
    create_table :handlers do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.text :description
      t.string :city
      t.image_url :thumbnail
      t.integer :hour_rate

      t.timestamps
    end
  end
end
