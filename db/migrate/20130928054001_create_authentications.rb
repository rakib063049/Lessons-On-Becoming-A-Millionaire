class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :uid
      t.string :provider
      t.string :name
      t.integer :user_id
      t.string :token
      t.string :expired_at

      t.timestamps
    end
  end
end
