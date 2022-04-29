# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

field1 = StudyField.create(field_name: 'Physics')
field2 = StudyField.create(field_name: 'Chemistry')

user1 = User.create!(
  email: 'test@test.com',
  first_name: 'First name',
  last_name: 'Last name',
  password: '123456',
  orcid_id: '0000-0000-0000-0001',
  study_field_id: 1
)
user2 = User.create!(
  email: 'test2@test.com',
  first_name: 'Name',
  last_name: 'Lastname',
  password: '123456',
  orcid_id: '0000-0000-0000-0002',
  study_field_id: 2
)

wallet1 = Wallet.create!(user_id: 1)
wallet2 = Wallet.create!(user_id: 2)

addr1 = CardanoAddress.create!(address: '1testBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB', dirty: false, wallet_id: 1)
addr2 = CardanoAddress.create!(address: '1testAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', dirty: false, wallet_id: 2)

tag1 = Tag.create!(tag: 'test-tag')
tag2 = Tag.create!(tag: 'test-tag-2')

col1 = NftCollection.create!(collection_name: 'test-collection')

cat1 = Category.create!(category_name: 'test-category')

trans1 = OnchainTransaction.create!(
  timestamp: '2022-15-04 12:00:00',
  buyer_address: 'addr1q8usdmn7lz7tgvn6xd99jc4ysrgyj83t4hvmvket4w28v8ml072qh4vkn5euu9s8h0g70stvwfh0cshtxf7502hta72qu3vxru',
  seller_address: 'addr1vyasfpcn39d6l3rrn8hpuumcdypuj8dkkudur4ethc44ueqrjd9y8',
  price: 76.0,
  transaction_id: 'c2882f40e4512572bb8594e467d84fccceb0cff17e62f0d8bcb807f79a7c97a0'
)
trans2 = OnchainTransaction.create!(
  timestamp: '2022-25-04 12:00:00',
  buyer_address: '1testAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA',
  seller_address: 'addr1vyasfpcn39d6l3rrn8hpuumcdypuj8dkkudur4ethc44ueqrjd9y8',
  price: 76.0,
  transaction_id: 'ceeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee9a7c97a0'
)

nft1 = Nft.create!(
  tradeable: true,
  price: 10.00000000,
  name: 'Mandala Sovereigns 4024',
  description: 'test-description',
  subject: 'test-subject',
  owner_id: 1,
  category_id: 1,
  nft_collection_id: 1,
  asset_name: 'lion00024',
  policy_id: '8001dede26bb7cbbe4ee5eae6568e763422e0a3c776b3f70878b03f1',
  fingerprint: 'asset1hr5j2pulx3273er0dpcz9yu6xzeuypsc9nq2au',
  onchain_transaction_id: 1,
  cardano_address_id: 1
)
nft2 = Nft.create!(
  tradeable: false,
  price: 1000.00000000,
  name: 'Test',
  description: 'test-description',
  subject: 'test-subject',
  owner_id: 2,
  category_id: 1,
  nft_collection_id: 1,
  asset_name: 'lion00024',
  policy_id: '8001dede26bb7cbbe4ee5eae6568e763422e0a3c776b3f70878b03f1',
  fingerprint: 'a1',
  onchain_transaction_id: 2,
  cardano_address_id: 2
)

nft_tag1 = NftTag.create!(user_id: 1, tag_id: 1, fingerprint: 'asset1hr5j2pulx3273er0dpcz9yu6xzeuypsc9nq2au')
nft_tag2 = NftTag.create!(user_id: 2, tag_id: 2, fingerprint: 'asset1hr5j2pulx3273er0dpcz9yu6xzeuypsc9nq2au')

nft_endorse1 = NftEndorser.create!(user_id: 1, fingerprint: 'asset1hr5j2pulx3273er0dpcz9yu6xzeuypsc9nq2au')
nft_endorse2 = NftEndorser.create!(user_id: 2, fingerprint: 'asset1hr5j2pulx3273er0dpcz9yu6xzeuypsc9nq2au')

nft_like1 = NftLike.create!(user_id: 1, fingerprint: 'asset1hr5j2pulx3273er0dpcz9yu6xzeuypsc9nq2au')
nft_like2 = NftLike.create!(user_id: 2, fingerprint: 'asset1hr5j2pulx3273er0dpcz9yu6xzeuypsc9nq2au')

rating1 = Rating.create!(user_id: 1, rated_user_id: 2, rating: 5)
rating2 = Rating.create!(user_id: 2, rated_user_id: 1, rating: 1)
