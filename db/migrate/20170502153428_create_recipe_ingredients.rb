class CreateRecipeIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_ingredients do |t|
      t.string :name
      t.string :amount

      t.timestamps
    end
  end
end
