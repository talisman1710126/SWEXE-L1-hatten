module ApplicationHelper
  def book_count_label
    "登録冊数：#{Book.count}冊"
  end

  def copyright_year
    Time.current.year
  end
end
