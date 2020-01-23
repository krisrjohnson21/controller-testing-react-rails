class CreateFloofs < ActiveRecord::Migration[5.0]
  def change
    create_table :floofs do |t|
      t.string :name, null: false
      t.integer :floofiness
      t.string :image
    end
  end
end
