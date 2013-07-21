class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.string :item
      t.string :amount

      t.timestamps
    end
  end
end
