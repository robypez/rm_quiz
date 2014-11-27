describe 'Setting' do

  before do
    class << self
      include CDQ
    end
    cdq.setup
  end

  after do
    cdq.reset!
  end

  it 'should be a Setting entity' do
    Setting.entity_description.name.should == 'Setting'
  end
end
