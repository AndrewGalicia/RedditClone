class CreateSubs < ActiveRecord::Migration[7.0]
  def change
    create_table :subs do |t|
      t.string :title, null: false, unique: true
      t.string :description
      t.references :mod, null: false, unique: true, foreign_key: { to_table: :users }
      t.timestamps
    end
    add_index :subs, :title
  end
end


