class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.integer :groop_id

      t.timestamps
    end
  end
end
