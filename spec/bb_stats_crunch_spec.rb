$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'bb_stats_crunch'

describe BbStatsCrunch do
  it 'should have a file existing under files' do
    File.exist?('files/GL1960.TXT').should be_true
  end
    
#
  it 'should be 1236 games played in 1960' do
    count = 0
    File.open('files/GL1960.OUTPUT') {|f| count = f.read.count("\n")}
    count.should == 1236
  end

  it 'number of wins must add up to number of cames played' do

  end
end
