# frozen_string_literal: true

RSpec.shared_examples :bicycle_subclass do
  it 'Should responds to post_initialize' do
    expect(subject).to respond_to(:post_initialize)
  end

  it 'Should responds to local_spares' do
    expect(subject).to respond_to(:local_spares)
  end

  it 'Should responds to default_tire_size' do
    expect(subject).to respond_to(:default_tire_size)
  end
end
