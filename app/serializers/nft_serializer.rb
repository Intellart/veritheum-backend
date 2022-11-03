class NftSerializer < ActiveModel::Serializer
  #embed :ids, :include => true
  attributes :fingerprint, :tradeable, :price, :name, :description, :url,
             :asset_name, :policy_id, :cardano_address, :created_at, :updated_at

  has_many :tags
  has_many :likes
  has_many :endorsers

  has_one :user, foreign_key: 'owner_id', key: :owner

  def category
    object.category_id ? Category.find(object.category_id).category_name : ''
  end


  def cardano_address
    object.cardano_address_id ? CardanoAddress.find(object.cardano_address_id).address : ''
  end
end
