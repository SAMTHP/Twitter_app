class CreatePrivatemessages < ActiveRecord::Migration[5.2]
  def change
    create_table :privatemessages do |t|
      t.string :object
      t.text :content
      t.references :sender, index: true

      t.timestamps
    end
  end
end
