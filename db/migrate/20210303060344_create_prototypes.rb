class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.text :title,             null: false
      t.text :catch_copy,        null: false
      t.integer :folder_id,          null: false
      t.integer  :level_id,     null: false
      t.references :user, foreign_key: true
    end
  end
end
