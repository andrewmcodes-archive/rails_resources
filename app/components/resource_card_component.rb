class ResourceCardComponent < ActionView::Component::Base
  validates :resource, presence: true

  def initialize(resource:)
    @resource = resource
  end

  private

  attr_reader :resource
end
