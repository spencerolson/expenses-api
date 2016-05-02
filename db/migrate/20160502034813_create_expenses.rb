class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.belongs_to :member, index: true, null: false
      t.integer :cost, null: false
      t.datetime :expense_date
      t.timestamps null: false
    end
  end
end
