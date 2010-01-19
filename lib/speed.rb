module Speed
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    
    @@results = {}
    
    def timer(name)
      start_time = Time.now
      yield
      result = Time.now - start_time
      @@results[name.to_sym] = result
    end
    
    def speed
      @@results
    end
  end
end