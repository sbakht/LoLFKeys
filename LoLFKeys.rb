#1234
#ajtsm
#szxcv
#sxzcv

#0=>a, 1=>j, 2>t, 3>s, 4>m
#0=>null,

class Bindings

  def initialize(bindings = [], order = ['top', 'mid', 'jungle', 'adc', 'support'])
    @bindings = bindings
    @order = order
    @bindingType = bindings.length
    validateBindings()
  end

  def getKeys
    return @bindings
  end

  def getOrder
    return @order
  end

  def getBindingType
    return @bindingType
  end

  def validateBindings
    if @bindings.length == 4 && !validateOrder()
      puts "No Key Binding Configuration Found. Creating New Config:"
      createBindings()
    end
    if @bindings.length != 4 && @bindings.length != 5
      puts "No Key Binding Configuration Found. Creating New Config:"
      createBindings()
    end
  end

  def createBindings
    @bindingType = nil
    while @bindingType != 4 && @bindingType != 5
      puts "Do you want 5 key bindings or the 4 key dynamic configuration? (Enter 4/5)"
      @bindingType = gets.to_i
    end

    if @bindingType == 5
      setFullKeyBinds()
    end

    if @bindingType == 4
      setDynamicKeyBinds()
    end

  end

  def setFullKeyBinds
    @bindings = []
    puts "Enter Top Lane Key :"
    @bindings << gets.chomp
    puts "Enter Mid Lane Key :"
    @bindings << gets.chomp
    puts "Enter Jungle Lane Key :"
    @bindings << gets.chomp
    puts "Enter Adc Lane Key :"
    @bindings << gets.chomp
    puts "Enter Support Lane Key :"
    @bindings << gets.chomp
    saveBindings()
  end

  def setDynamicKeyBinds
    while !validateOrder()
      puts ''
      puts "Enter lane order that will be map the 4 other lanes 4 keys seperated by space: \n(Ex. top mid jungle adc support)"
      @order = gets.chomp.split(' ')
    end
    puts "Enter Key 1 :"
    @bindings << gets.chomp
    puts "Enter Key 2:"
    @bindings << gets.chomp
    puts "Enter Key 3:"
    @bindings << gets.chomp
    puts "Enter Key 4:"
    @bindings << gets.chomp
    saveBindings()
  end

  def validateOrder
    comparison = ['top', 'mid', 'jungle', 'adc', 'support']

    if @order.length != 5
      return false
    end

    for lane in @order
      if !comparison.include? lane
        return false
      end
    end
    return true
  end

  def saveBindings
    file = File.open('config.ini','w')
    file << @bindings.join(',')
    file << "\n"
    file << @order.join(',')
    file.close()
    puts "Configuration Complete"
    puts ""
  end

end

class KeyFile

  def initialize(location)
    @location = location
    openFileIntoArray()
  end

  def openFileIntoArray
    if fileExists?()
      @fileArray = File.readlines(@location)
    end
  end

  def updateFileArray(allyNum, key)
    @fileArray.each_with_index do |line, index|
      if line.include?("evtSelectAlly#{allyNum}") || line.include?("evtSelect#{allyNum}")
        if allyNum == "Self"
          @fileArray[index] = "evtSelectSelf=[space],[#{key}]\n"
        else
          @fileArray[index] = "evtSelectAlly#{allyNum}=[#{key}]\n"
        end
        puts @fileArray[index]
      end
    end
  end

  def writeToFile
    File.write(@location, @fileArray.join)
  end

  def fileExists?
    return File.file?(@location)
  end

end

class User

  def initialize(bindings, file)
    @bindings = bindings
    @file = file
    @bindOrder = []
    @ingameOrder = []
    while !@selfLane
      puts "Enter your lane (t/m/j/a/s):"
      @selfLane = convertToFullName(gets.chomp)
    end
    setBindings()
  end

  def setBindings
    while !validateOrder
      puts "Enter the order of the laners including yourself (Ex. mtsaj):"
      @ingameOrder = gets.chomp.split('')
    end

    allyNum = 1
    @ingameOrder.each_with_index do |lane, index|
      if setBindOrder(lane, allyNum).is_a? Integer
        allyNum = allyNum + 1
      end
    end

    if @bindings.getBindingType == 4
      @bindOrder.delete("Self")
    end

    @bindOrder.each_with_index do |item, index|
      @file.updateFileArray(item, @bindings.getKeys[index])
    end
    @file.writeToFile()
  end

  def setBindOrder(lane, allyNum)
    if lane == @selfLane
      @bindOrder[@bindings.getOrder.index(lane)] = "Self"
      return "Self"
    else
      @bindOrder[@bindings.getOrder.index(lane)] = allyNum
      return allyNum
    end
  end

  def validateOrder

    if @ingameOrder.length != 5
      return false
    end

    @ingameOrder.each_with_index do |char, index|
      fullName = convertToFullName(char)
      if fullName 
        @ingameOrder[index] = fullName
      else
        return false
      end
    end

    return true
  end

  def convertToFullName(char)
    if char == 't'
      return 'top'
    elsif char == 'm'
      return 'mid'
    elsif char == 'j'
      return 'jungle'
    elsif char == 'a'
      return 'adc'
    elsif char == 's'
      return 'support'
    else
      return nil
    end
  end

end

if !File.exist?('config.ini')
  bindings = Bindings.new()
else
  config = File.open('config.ini')
  keys = config.gets.strip.split(',')
  order = config.gets.strip.split(',')
  if !keys
    bindings = Bindings.new()
  elsif !order
    bindings = Bindings.new(keys)
  else
    bindings = Bindings.new(keys, order)
  end
end

file = KeyFile.new('C:\Riot Games\League of Legends\Config\input.ini')
user = User.new(bindings, file)