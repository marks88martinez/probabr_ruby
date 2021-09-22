class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :name
      t.text :note
      t.references :purchase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
