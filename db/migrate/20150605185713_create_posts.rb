class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :body
      t.string :string
      t.string :landmark
      t.string :city
      t.string :state
      t.string :country
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
