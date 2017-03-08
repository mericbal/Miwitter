class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    	t.string :first, :last, :username, :email, :password_digest
    	t.attachment :avatar

      t.timestamps
    end
  end
end
