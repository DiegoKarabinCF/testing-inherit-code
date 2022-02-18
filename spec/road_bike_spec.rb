# frozen_string_literal: true

require 'spec_helper'
require 'support/shared_examples/bicycle_examples'
require 'support/shared_examples/bicycle_subclass_examples'

RSpec.describe RoadBike do
  subject { described_class.new(tape_color: 'red') }

  it_behaves_like :bicycle
  it_behaves_like :bicycle_subclass

  it 'Should put tape color in local_spares' do
    expect(subject.local_spares[:tape_color]).to eq('red')
  end
end
