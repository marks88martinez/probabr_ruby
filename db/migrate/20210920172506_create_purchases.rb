class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.string :buyer_name
      t.string :email
      t.integer :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
