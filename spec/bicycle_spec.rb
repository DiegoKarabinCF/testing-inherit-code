# frozen_string_literal: true

require 'spec_helper'
require 'support/shared_examples/bicycle_examples'
require 'support/shared_examples/bicycle_subclass_examples'

class BikeDouble < Bicycle
  def default_tire_size
    0
  end

  def local_spares
    { saddle: 'painful' }
  end
end

RSpec.describe Bicycle do
  subject { described_class.new(tire_size: 0) }

  let(:double) { BikeDouble.new }

  it_behaves_like :bicycle

  it 'Should force subclasses to implement default_tire_size' do
    expect { subject.default_tire_size }.to raise_error(NotImplementedError)
  end

  it 'Should include local_spares in spares' do
    expected_spares = {
      tire_size: 0,
      chain: '11-speed',
      saddle: 'painful'
    }

    expect(double.spares).to eq(expected_spares)
  end
end

RSpec.describe BikeDouble do
  it_behaves_like :bicycle_subclass
end
