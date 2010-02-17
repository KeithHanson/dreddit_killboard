class KillMail
  include DataMapper::Resource
  
  property :id, Serial
  property :faction, String
  property :destroyed_ship, String
  property :system, String
  property :security, String
  property :damage_taken, Integer
  
  has 1, :victim, :model => "Character"
  has n, :killers, :model => "Character", :through => Resource
  
  
  
  def self.print
    "I'm a mail of death"
  end

  def self.import(data)
    
  end
end
