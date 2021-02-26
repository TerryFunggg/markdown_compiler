class Token
  attr_reader :type, :value

  def initialize(type:, value:)
    @type = type
    @value = value
  end

  def self.end
    Token.new(type: 'EOF', value: '')
  end

  def length
    value.length
  end

  def null?
    @value.nil? && type.nil?
  end

  def to_s
    "<type: #{@type}, value: #{@value}"
  end

  def to_h
    { type: @type, value: @value }
  end
end
