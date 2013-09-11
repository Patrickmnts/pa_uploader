class Upload < ActiveRecord::Base
  mount_uploader :package, PackageUploader
end
