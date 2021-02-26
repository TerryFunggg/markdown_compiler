require_relative '../Token.rb'

class HeaderScanner
  TYPE = {
    '*'      => 'HEADER_ONE',
    '**'     => 'HEADER_TWO',
    '***'    => 'HEADER_THREE',
    '****'   => 'HEADER_FOUR',
    '*****'  => 'HEADER_FIVE',
    '******' => 'HEADER_SIX'
  }.freeze

  def self.to_token(text)
    char = text[0]
    Token.new(type: TYPE[char], value: char)
  end
end
