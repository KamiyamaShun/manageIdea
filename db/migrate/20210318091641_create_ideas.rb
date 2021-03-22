class CreateIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :ideas do |t|
      t.references :category,  foreign_key: true
      t.string :body, null: false
    end
  end
end
