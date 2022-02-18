# frozen_string_literal: true

# Bike Double representation
class BikeDouble < Bicycle
  def default_tire_size
    0
  end

  def local_spares
    { saddle: 'painful' }
  end
end
