class PageHeadingComponent < ActionView::Component::Base
  validates :title, :subtitle, presence: true

  def initialize(title:, subtitle:)
    @title = title
    @subtitle = subtitle
  end

  private

  attr_reader :title, :subtitle
end
