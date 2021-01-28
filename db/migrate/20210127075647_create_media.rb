class CreateMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :media do |t|

      t.text    :title,        null: false
      t.text    :text,         null: false
      t.text    :image,        null: false
      t.integer :category_id,  null: false
      t.timestamps
    end
  end
end
