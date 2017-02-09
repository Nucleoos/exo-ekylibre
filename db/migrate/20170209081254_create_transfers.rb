class CreateTransfers < ActiveRecord::Migration[5.0]
  def change
    create_table :transfers do |t|
      t.references :tank, index: true, foreign_key: true
      t.integer :quantity
      t.timestamps
    end
  end
end
