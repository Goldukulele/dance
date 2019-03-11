class CreateDancers < ActiveRecord::Migration[5.2]
  def change
    create_table :dancers do |t|
      t.string :name
      t.text :bio
      t.string :style
      t.timestamps
    end
  end
end
