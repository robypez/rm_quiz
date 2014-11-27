describe 'Answer' do

  before do
    class << self
      include CDQ
    end
    cdq.setup
  end

  after do
    cdq.reset!
  end

  it 'should be a Answer entity' do
    Answer.entity_description.name.should == 'Answer'
  end
end
