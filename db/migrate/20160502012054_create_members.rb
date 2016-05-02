class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.belongs_to :user, index: true, null: false
      t.belongs_to :group, index: true, null: false
      t.integer :owed, null: false, default: 0
      t.integer :owes, null: false, default: 0
      t.timestamps null: false
    end
  end
end
