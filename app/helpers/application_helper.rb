module ApplicationHelper
  def date_br(date_us)
    date_us.strftime("%d/%m/%Y") if date_us.present?
  end

  def app_name
    "Crypto Coin Manager"
  end
end
