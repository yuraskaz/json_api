class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.integer :rating
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
