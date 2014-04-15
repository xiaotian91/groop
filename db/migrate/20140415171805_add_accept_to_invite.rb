class AddAcceptToInvite < ActiveRecord::Migration
  def change
    add_column :invitations, :is_accepted, :integer
  end
end
