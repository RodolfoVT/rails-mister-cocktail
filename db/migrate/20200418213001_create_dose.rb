class CreateDose < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.string :description
      t.references :cocktail, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
    end
  end
end
