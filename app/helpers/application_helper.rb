module ApplicationHelper
  include AuthHelper
  def copyright_notice_year_range(start_year)
    start_year = start_year.to_i
    current_year = Time.new.year
    if current_year > start_year && start_year > 2000
      "#{start_year} - #{current_year}"
    elsif start_year > 2000
      "#{start_year}"
    else
      "#{current_year}"
    end
  end

  def current_user_on_page?(user_to_show)
    current_user == user_to_show
  end
end
