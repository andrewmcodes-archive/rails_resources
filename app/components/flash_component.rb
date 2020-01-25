class FlashComponent < ActionView::Component::Base
  FLASH_COLORS = {
    success: "bg-green-500",
    error: "bg-red-500",
    warning: "bg-orange-500",
    notice: "bg-blue-500",
  }.stringify_keys.freeze

  validates :value, presence: true
  validates :flash_color, inclusion: {in: FLASH_COLORS.values}

  def initialize(key:, value:)
    @flash_color = FLASH_COLORS[key]
    @value = value
  end

  private

  attr_reader :flash_color, :value
end
