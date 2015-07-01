require 'rails_helper'

describe Game do
  it { should validate_presence_of :name}
  it { should belong_to :company}
end
