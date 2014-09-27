module ApplicationHelper
  require 'rdiscount'

  def mark(content)
    raw RDiscount.new(content).to_html
  end
end
