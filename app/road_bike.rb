# frozen_string_literal: true

# RoadBike representation
class RoadBike < Bicycle
  attr_reader :tape_color

  def post_initialize(opts)
    @tape_color = opts[:tape_color]
  end

  def local_spares
    { tape_color: }
  end

  def default_tire_size
    '23'
  end
end
