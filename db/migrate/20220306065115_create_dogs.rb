class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.string :name, not_null: false
      t.integer :age, not_null: false
      t.boolean :good, default: true
      t.timestamps
    end
  end
end
