# Fake an engine 
module Soundmanager2
  module Rails
    
    # Pretty ghetto that this is a non-DRY req for an Engine
    # So, stubborn sudara hackily gets VERSION from the gem's VERSION file
    VERSION = File.open(File.join(File.dirname(__FILE__),"../VERSION"), "rb").read
    
    # Fake the engine, also somewhat ghetto, but hey.
    class Engine < ::Rails::Engine
    end
  
  end
end