# frozen_string_literal: true

require 'spec_helper'
require 'support/shared_examples/bicycle_examples'

RSpec.describe Bicycle do
  subject { described_class.new(tire_size: 0) }

  let(:double) { BikeDouble.new }

  it_behaves_like :bicycle

  it 'Should force subclasses to implement default tire size' do
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
