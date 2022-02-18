# frozen_string_literal: true

# Bicycle representation
class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(**opts)
    @size      = opts[:size]
    @chain     = opts[:chain] || default_chain
    @tire_size = opts[:tire_size] || default_tire_size

    post_initialize(opts)
  end

  def spares
    { tire_size:, chain: }.merge(local_spares)
  end

  def default_tire_size
    raise NotImplementedError
  end

  # subclasses may override
  def post_initialize(opts); end

  def local_spares
    {}
  end

  def default_chain
    '11-speed'
  end
end
