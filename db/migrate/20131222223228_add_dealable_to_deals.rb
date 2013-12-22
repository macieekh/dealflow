class AddDealableToDeals < ActiveRecord::Migration
  def change
    add_reference :deals, :dealable, polymorphic: true, index: true
  end
end
