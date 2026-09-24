module BooksHelper
  # 見出し用の △（昇順）▽（降順）ボタンを作る
  def sort_links(column)
    %w[asc desc].map { |direction|
      active = params[:sort] == column && params[:direction] == direction
      link_to (direction == "asc" ? "△" : "▽"),
              books_path(sort: column, direction: direction),
              title: (direction == "asc" ? "昇順" : "降順"),
              style: "text-decoration:none; font-size:0.85em; padding:1px 4px; margin-left:2px; border-radius:4px;" +
                     (active ? "background:#2563eb; color:#fff;" : "color:#2563eb;")
    }.then { |links| safe_join(links) }
  end
end
