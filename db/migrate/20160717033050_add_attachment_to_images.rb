class AddAttachmentToImages < ActiveRecord::Migration[5.0]
  def up
    add_attachment :images, :attachment
  end

  def down
    remove_attachment :images, :attachment
  end
end
