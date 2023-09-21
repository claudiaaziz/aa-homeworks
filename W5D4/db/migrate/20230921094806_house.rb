class House < ActiveRecord::Migration[7.0]
  def change
    create table :house do |t|
      t.text :address

      t.timestamps
    end
  end
end
