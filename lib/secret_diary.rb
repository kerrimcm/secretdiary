class SecretDiary
  def initialize(locked = true)
    @locked = locked
  end

  def locked?
    @locked
  end 

  def unlock
    @locked = false 
  end

  def lock
    @locked = true
  end

  def add_entry
    raise 'Diary is locked' if locked?
  end

  def get_entries
    raise 'Diary is locked' if locked?
  end
end