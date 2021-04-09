require 'secret_diary'
describe SecretDiary do
  it 'starts off locked' do
    expect(subject.locked?).to eq(true)
  end 

  context '#unlock' do
    it 'allows user to unlock diary' do
      subject.unlock
      expect(subject.locked?).to eq(false)
    end 
  end

  context '#lock' do
    it 'allows user to unlock then lock a diary' do
      subject.unlock
      subject.lock
      expect(subject.locked?).to eq(true)
    end 
  end

  context '#add_entry' do
    it 'throws an error if diary is locked' do
      expect { subject.add_entry }.to raise_error('Diary is locked')
    end
    it 'does not throw an error when unlocked' do
      allow(subject).to receive(:locked?) { false }
      expect { subject.add_entry }.not_to raise_error('Diary is locked')
    end 
  end 

  context '#get_entries' do
    it 'throws an error if diary is locked' do
      expect { subject.add_entry }.to raise_error('Diary is locked')
    end
    it 'does not throw an error when unlocked' do
        allow(subject).to receive(:locked?) { false }
        expect { subject.add_entry }.not_to raise_error('Diary is locked')
    end 
  end 
end