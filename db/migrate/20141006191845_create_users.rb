class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ""
      t.string :access_token

      t.timestamps
    end
  end
end
