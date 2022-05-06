# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.float :price
      t.string :image

      t.timestamps
    end
  end
end
