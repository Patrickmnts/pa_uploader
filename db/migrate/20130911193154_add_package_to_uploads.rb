class AddPackageToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :package, :string
  end
end
