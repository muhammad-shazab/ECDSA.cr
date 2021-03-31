require "./ecdsa/*"
require "./ecdsa/exceptions/*"

require "big"
require "random"
# require "digest/sha256"
require "./sha3/*"
require "./sha3/digest/*"

module ECDSA
  def self.get_group(c : Symbol)
    raise "Group #{c} not found" unless CURVES.has_key?(c)
    h = CURVES[c]
    return Group.new(c, h[:p], h[:a], h[:b], h[:gx], h[:gy], h[:n])
  end
end
