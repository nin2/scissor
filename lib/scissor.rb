require 'scissor/chunk'
require 'scissor/fragment'
require 'scissor/sound_file'
require 'scissor/sequence'

def Scissor(*args)
  Scissor::Chunk.new(*args)
end

module Scissor
  def self.silence(duration)
    Scissor(File.dirname(__FILE__) + '/../data/silence.mp3').
      slice(0, 1).
      fill(duration)
  end

  def self.sequence(*args)
    Scissor::Sequence.new(*args)
  end
end
