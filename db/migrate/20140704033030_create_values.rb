class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.string :exact_value
      t.string :standard_value
      t.boolean :accepted
      t.references :field, index: true

      t.timestamps
    end
  end
end
