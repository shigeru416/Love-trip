class CreateBrowsingHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :browsing_histories do |t|

      t.string :user_id
      t.string :post_id
      t.timestamps
    end
  end
end
