class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  before_action :set_locale

  def set_locale
    # I18n.locale = params[:locale] || I18n.default_locale
    if params[:locale]
      cookies[:locale] = params[:locale]
    end

    if cookies[:locale]
      if I18n.locale != cookies[:locale].to_sym
        I18n.locale = cookies[:locale]
      end
    else
      I18n.locale = I18n.default_locale
    end
  end
end
