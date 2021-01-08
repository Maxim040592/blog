class AddUsernameIndex < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :username, unique: true #таблица add_index для уменшения времени обращения к полю username
  end
end
