# frozen_string_literal: true

require 'spec_helper'
require 'support/shared_examples/bicycle_subclass_examples'

RSpec.describe BikeDouble do
  it_behaves_like :bicycle_subclass
end
