#!/usr/bin/env ruby

require 'obfuscate'

Obfuscate.setup do |config|
  config.salt = "4R()E\7q`g%j.n=ue2;5T2Y*#L9F,L=n%ncsm?x8hKTj/v2x\!btuJ7k6" # Length must be between 1-56 
  config.mode = :string           # defaults to :string
end

obfuscated = Obfuscate.obfuscate("pizda")
clarified = Obfuscate.clarify(obfuscated) 

puts obfuscated
puts clarified