module ApplicationHelper
  def locale(locale)
    if I18n.locale == :en && locale == :en
      "English"
    elsif I18n.locale == :es && locale == :es
      "Español"
    elsif I18n.locale == :fr && locale == :fr
      "Français"
    elsif I18n.locale == :de && locale == :de
      "Deutsch"
    elsif I18n.locale.to_s == "pt-BR" && locale.to_s == "pt-BR"
      "Português (Brasil)"
    else
      link_to locale_name(locale), url_for(locale: locale)
    end
  end

  def date_br(date_us)
    date_us.strftime("%d/%m/%Y") if date_us.present?
  end

  def app_name
    "Crypto Coin Manager"
  end
end
