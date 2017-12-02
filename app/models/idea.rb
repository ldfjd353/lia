class Idea < ApplicationRecord
    has_many :comments
    mount_uploader :picture, PictureUploader
      after_create :revers_name

    def revers_name 
 
     oldname=self.name
     self.update(name: oldname.reverse)
    end
end
