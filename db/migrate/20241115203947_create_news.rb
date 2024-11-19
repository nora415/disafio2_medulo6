class CreateNews < ActiveRecord::Migration[7.2]
  def change
    create_table :news do |t|
      t.string :image
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
