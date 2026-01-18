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

Coin.create!(
  description: "Bitcoin",
  acronym: "BTC",
  url_image: "https://cryptologos.cc/logos/bitcoin-btc-logo.png"
)

Coin.create!(
  description: "Ethereum",
  acronym: "ETH",
  url_image: "https://cryptologos.cc/logos/ethereum-eth-logo.png"
)

Coin.create!(
  description: "Dash",
  acronym: "DASH",
  url_image: "https://cryptologos.cc/logos/dash-dash-logo.png"
)

Coin.create!(
  description: "Litecoin",
  acronym: "LTC",
  url_image: "https://cryptologos.cc/logos/litecoin-ltc-logo.png"
)

Coin.create!(
  description: "Ripple",
  acronym: "XRP",
  url_image: "https://cryptologos.cc/logos/xrp-xrp-logo.png"
)

Coin.create!(
  description: "Binance Coin",
  acronym: "BNB",
  url_image: "https://cryptologos.cc/logos/bnb-bnb-logo.png"
)