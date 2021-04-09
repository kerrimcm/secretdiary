require_relative 'diary_lock'
class DiaryEntries 
  attr_reader :diary_lock
  def initialize(diary_lock = DiaryLock.new)
    @diary_lock = diary_lock
  end 
  
  def add_entry
    raise 'Diary is locked' if @diary_lock.locked?
  end
    
  def get_entries
    raise 'Diary is locked' if @diary_lock.locked?
  end
end 
