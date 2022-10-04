class CreateTwerps < ActiveRecord::Migration[7.0]
  def change
    create_table :twerps do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
