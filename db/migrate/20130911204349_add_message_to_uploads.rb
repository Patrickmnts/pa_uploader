class AddMessageToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :message, :text
  end
end
