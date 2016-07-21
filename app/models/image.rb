class Image < ApplicationRecord
  belongs_to :album
  # belongs_to :user, through: :album
  has_attached_file :attachment, styles: { medium: "180x180>", thumb: "100x100>" }

  validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\Z/
end
