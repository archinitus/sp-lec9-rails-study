class Twit < ActiveRecord::Base
    has_many :comments, :dependent => :destroy
    mount_uploader :my_image, S3uploaderUploader
end
