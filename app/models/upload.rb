class Upload < ActiveRecord::Base
  mount_uploader :package, PackageUploader
  validates :user_name, presence: true
  validates :message, presence: true
  validates :package, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :recipient_email, presence: true,
                    format: { with: VALID_EMAIL_REGEX }
  validates :user_email, presence: true,
                    format: { with: VALID_EMAIL_REGEX }
end
