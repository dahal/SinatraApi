class CreateApikeys < ActiveRecord::Migration
  def change
    create_table :apikeys do |t|
      t.string :key
      t.integer :usage_counter , default: 0
    end
  end
end
