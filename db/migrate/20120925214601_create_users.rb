class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :organization
      t.string :email
      t.string :inspiration1
      t.string :inspiration2
      t.string :inspiration3

      t.timestamps
    end
  end
end
