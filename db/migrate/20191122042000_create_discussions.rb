class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      t.string :name
      t.datetime :birthday
      t.text :past
      t.text :current
      t.text :future
      t.timestamps
    end
  end
end
