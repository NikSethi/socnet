class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name
      t.text :content
      t.user_id :integer

      t.timestamps
    end
  end
end
