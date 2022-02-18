# frozen_string_literal: true

RSpec.shared_examples :bicycle do
  it 'Should responds to default_tire_size' do
    expect(subject).to respond_to(:default_tire_size)
  end

  it 'Should responds to default_chain' do
    expect(subject).to respond_to(:default_chain)
  end

  it 'Should responds to chain' do
    expect(subject).to respond_to(:chain)
  end

  it 'Should responds to size' do
    expect(subject).to respond_to(:size)
  end

  it 'Should responds to tire_size' do
    expect(subject).to respond_to(:tire_size)
  end

  it 'Should responds to spares' do
    expect(subject).to respond_to(:spares)
  end
end
