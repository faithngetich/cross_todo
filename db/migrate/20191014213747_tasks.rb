class Todos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.references :list, foreign_key: true
    end
  end
end
