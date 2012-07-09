module ApplicationHelper
  def render_analytics
    if Rails.env.production?
      render("renders/analytics")
    end
  end
end
