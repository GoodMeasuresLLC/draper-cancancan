require 'spec_helper'

describe Draper::CanCanCan do
  it 'has a version number' do
    expect(Draper::CanCanCan::VERSION).not_to be nil
  end

  describe 'decorated objects' do
    let(:object) {Activity.new}
    let(:decorated_object) {ActivityDecorator.decorate(object)}
    let(:ability) {Ability.new(:user)}
    it 'have bling' do
      expect(decorated_object.bling?).to eq(true)
    end
    it 'can? works' do
      expect(ability.can?(:read, object)).to eq(true)
    end
    it 'decorated can? works' do
      expect(ability.can?(:read, decorated_object)).to eq(true)
    end
  end
end
