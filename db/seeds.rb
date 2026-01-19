# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Seeding Coins..."

coins = [
  {
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://cryptologos.cc/logos/bitcoin-btc-logo.png"
  },
  {
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://cryptologos.cc/logos/ethereum-eth-logo.png"
  },
  {
    description: "Dash",
    acronym: "DASH",
    url_image: "https://cryptologos.cc/logos/dash-dash-logo.png"
  },
  {
    description: "Litecoin",
    acronym: "LTC",
    url_image: "https://cryptologos.cc/logos/litecoin-ltc-logo.png"
  },
  {
    description: "Ripple",
    acronym: "XRP",
    url_image: "https://cryptologos.cc/logos/xrp-xrp-logo.png"
  },
  {
    description: "Binance Coin",
    acronym: "BNB",
    url_image: "https://cryptologos.cc/logos/bnb-bnb-logo.png"
  }
]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end

puts "Finished seeding Coins."

puts "Seeding Mining Types..."

mining_types = [
  { description: "Proof of Work", acronym: "PoW" },
  { description: "Proof of Stake", acronym: "PoS" },
  { description: "Delegated Proof of Stake", acronym: "DPoS" },
  { description: "Proof of Authority", acronym: "PoA" },
  { description: "Proof of Space", acronym: "PoSpace" }
]

mining_types.each do |mining_type|
  MiningType.find_or_create_by!(mining_type)
end

puts "Finished seeding Mining Types."
