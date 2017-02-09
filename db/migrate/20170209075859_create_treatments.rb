class CreateTreatments < ActiveRecord::Migration[5.0]
  def change
    create_table :treatments do |t|
      t.references :tank, index: true, foreign_key: true
      t.string :product
      t.string :name
      t.string :comment
      t.timestamps
    end
  end
end
