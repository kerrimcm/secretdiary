class DiaryLock 
  def initialize(diary_lock = true)
    @diary_lock = diary_lock
  end 

  def unlock
    @diary_lock = false
  end

  def lock
    @diary_lock = true
  end 

  def locked?
    @diary_lock
  end 
end
