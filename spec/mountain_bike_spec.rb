# frozen_string_literal: true

require 'spec_helper'
require 'support/shared_examples/bicycle_examples'
require 'support/shared_examples/bicycle_subclass_examples'

RSpec.describe MountainBike do
  subject { described_class.new(front_shock: 'Manitou', rear_shock: 'Fox') }

  it_behaves_like :bicycle
  it_behaves_like :bicycle_subclass

  it 'Should put front shock in local_spares' do
    expect(subject.local_spares[:front_shock]).to eq('Manitou')
  end

  it 'Should put rear_shock in local_spares' do
    expect(subject.local_spares[:rear_shock]).to eq('Fox')
  end
end
