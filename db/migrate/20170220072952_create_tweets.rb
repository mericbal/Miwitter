class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
    	t.string :body
    	t.boolean :private, default: false
    	t.references :user

    	t.timestamps
    end
  end
end
