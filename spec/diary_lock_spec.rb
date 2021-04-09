require 'diary_lock'
describe DiaryLock do
  it 'starts off locked' do
    expect(subject.locked?).to eq(true)
  end 
    
  context '#unlock' do
    it 'unlocks the diary' do
      subject.unlock
      expect(subject.locked?).to eq(false)
    end 
  end
    
  context '#lock' do
    it 'unlocks and then locks the diary' do
      subject.unlock
      subject.lock
      expect(subject.locked?).to eq(true)
    end 
  end
end
