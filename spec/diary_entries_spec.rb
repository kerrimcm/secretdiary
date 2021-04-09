require 'diary_entries'
describe DiaryEntries do
  context '#add_entry' do
    it 'throws an error if diary is locked' do
      expect { subject.add_entry }.to raise_error('Diary is locked')
    end
    it 'does not throw an error when unlocked' do
      diary_lock = double(:diary_lock)
      diary_entry = DiaryEntries.new(diary_lock)
      allow(diary_lock).to receive(:locked?) { false }
      expect { diary_entry.add_entry }.not_to raise_error('Diary is locked')
    end 
  end 

  context '#get_entries' do
    it 'throws an error if diary is locked' do
      expect { subject.add_entry }.to raise_error('Diary is locked')
    end
    it 'does not throw an error when unlocked' do
        diary_lock = double(:diary_lock)
        diary_entry = DiaryEntries.new(diary_lock)
        allow(diary_lock).to receive(:locked?) { false }
        expect { diary_entry.add_entry }.not_to raise_error('Diary is locked')
    end 
  end 
end 