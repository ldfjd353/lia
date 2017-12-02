class Idea < ApplicationRecord
    mount_uploader :picture, PictureUploader
    has_many :comments
    after_create :revers_name

    def revers_name 
 
     oldname=self.name
     self.update(name: oldname.reverse)
    end
end
