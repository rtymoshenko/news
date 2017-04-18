class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.integer :link_id
      t.text :body
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :coments, :link_id
  end
end
