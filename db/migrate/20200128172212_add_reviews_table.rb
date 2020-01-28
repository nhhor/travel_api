class AddReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :review_title, :string
      t.column :review_body, :string
      t.column :rating, :integer
      t.column :user_id, :integer
      t.column :destination_id, :integer
      t.timestamps
    end
  end
end
