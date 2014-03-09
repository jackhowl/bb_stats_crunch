$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

  require 'bb_stats_crunch.rb'

describe BbStatsCrunch do

  it 'should tell me the mood' do
    BbStatsCrunch.new("Jack").mood.should eq "Jack is always HAPPY!!"
  end

end
