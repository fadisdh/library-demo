class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :name
      t.datetime :checkout_date
      t.datetime :return_date
      t.boolean :returned
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
