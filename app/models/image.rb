class Image < ApplicationRecord
  belongs_to :album
  has_attached_file :attachment, styles: { medium: "300x300>", thumb: "100x100>" },
  :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
  :url => ":rails_root/public/system/:attachment/:id/:style/:filename",
  default_url: "/images/:style/missing.png"
  validates_attachment_content_type :attachment, :content_type => ["image/jpg", "image/png", "image/jpeg"]
end
