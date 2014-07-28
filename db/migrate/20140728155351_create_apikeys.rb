class CreateApikeys < ActiveRecord::Migration
  def change
    create_table :apikeys do |t|
      t.string :key#, default:SecureRandom.hex
      t.integer :usage_counter , default: 0
      t.belongs_to :user
    end
  end
end
