class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :field_name

      t.timestamps
    end
  end
end
