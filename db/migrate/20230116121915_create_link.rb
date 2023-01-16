class CreateLink < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.string :old_link
      t.string :new_link

      t.timestamps
    end
  end
end
