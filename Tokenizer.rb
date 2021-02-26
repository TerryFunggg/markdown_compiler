require_relative 'Token'
require_relative './Scanner/scanner_register'

class Tokenizer
  def tokenize(text)
    tokens = map_tokens text
  end

  private

  def map_tokens(text)
    return [Token.end] if text.empty?

    token = scan_token text
    [token] + map_tokens(text[token.length..])
  end

  def scan_token(text)
    SCANNER.each do |scanner|
      token = scanner.to_token text
      return token unless token.null?
    end
  end
end
