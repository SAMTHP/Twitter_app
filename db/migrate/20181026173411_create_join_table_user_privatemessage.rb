class CreateJoinTableUserPrivatemessage < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :privatemessages do |t|
      # t.index [:user_id, :privatemessage_id]
      # t.index [:privatemessage_id, :user_id]
    end
  end
end
