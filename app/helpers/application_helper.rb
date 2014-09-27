module ApplicationHelper
  require 'rdiscount'

  def mark(content)
    RDiscount.new(content).to_html
  end
end
