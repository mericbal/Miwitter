class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
    	t.references :follower, :followed_user

      t.timestamps
    end
  end
end
