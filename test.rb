require_relative 'LolFKeys'
require 'minitest'
require "minitest/autorun"

describe Bindings do
  before do
  end

  describe "initial binding configuration initialization" do

    it "creates 5 key configuration" do
      @bindings = Bindings.new(["z","x","c","v","b"])
      @bindings.getKeys.length.must_equal 5
    end

    it "creates 4 key configuration" do
      # @bindings = Bindings.new(["z","x","c","v"])
      # @bindings.getKeys.length.must_equal 4
    end

    describe "incorrect key configuration" do

      it "should ask for user to input key configuration" do
        # @bindings = Bindings.new(["z","x","c"])
        # @bindings.abortIfError.must_equal 3
      end

    end

  end

  describe "reading and updating lol config file" do

      it "should find the key binding file" do
        @file = KeyFile.new('C:\Riot Games\League of Legends\Config\input.ini')
        @file.fileExists?.must_equal true
      end

  end

end