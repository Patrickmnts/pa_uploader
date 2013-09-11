class AddRecipientEmailToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :recipient_email, :string
  end
end
