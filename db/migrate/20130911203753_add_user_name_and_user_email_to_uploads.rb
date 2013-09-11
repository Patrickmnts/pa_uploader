class AddUserNameAndUserEmailToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :user_name, :string
    add_column :uploads, :user_email, :string
  end
end