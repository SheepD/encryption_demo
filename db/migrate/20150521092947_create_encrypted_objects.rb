class CreateEncryptedObjects < ActiveRecord::Migration
  def change
    create_table :encrypted_objects do |t|
      t.string :secret_stuff
      t.string :secret_stuff2
      t.string :tell_this_to_the_world

      t.timestamps null: false
    end
  end
end
