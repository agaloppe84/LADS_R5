class CreatePromos < ActiveRecord::Migration[5.0]
  def change
    create_table :promos do |t|
      t.string :title
      t.string :description
      t.date :start
      t.date :end
      t.boolean :current
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
