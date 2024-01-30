class CreateDresses < ActiveRecord::Migration[7.1]
  def change
    create_table :dresses do |t|
      t.string :title
      t.text :description
      t.string :size
      t.string :color
      t.string :category
      t.float :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
