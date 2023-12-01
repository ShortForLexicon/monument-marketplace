class AddMonumentAndUserReferencesToOffers < ActiveRecord::Migration[7.1]
  def change
    add_reference :offers, :monument, index: true
    add_reference :offers, :user, index: true

  end
end
