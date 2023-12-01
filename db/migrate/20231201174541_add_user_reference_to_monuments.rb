class AddUserReferenceToMonuments < ActiveRecord::Migration[7.1]
  def change
    add_reference :monuments, :user, index: true
  end
end
