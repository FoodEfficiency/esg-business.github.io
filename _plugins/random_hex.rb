module RandomHex
  # Outputs a string of random hexadecimal characters of any length.
  # Defaults to a six-character string.
  # @example Generate 6 random characters.
  #   {{ random_hex_string }}
  # @example Generate 20 random characters.
  #   {{ random_hex_string 10 }}
  class RandomNumberTag < Liquid::Tag
    # Called by Jekyll only once to register the module.
    # @param tag_name [String] Describe this parameter's purpose
    # @param text [String] Describe this parameter's purpose
    # @param context [String] Describe this parameter's purpose
    # @return [String, nil] Describe the return value
    def initialize(tag_name, text, context)
      super(tag_name, text, context)
      text.to_s.strip!
      if text.empty?
        @n = 6
      else
        tokens = text.split(' ')
        abort "random_hex_string error - more than one token was provided: '#{text}'" if tokens.length > 1
        not_integer = !Integer(text, exception: false)
        abort "random_hex_string error: '#{text}' is not a valid integer" if not_integer
        @n = text.to_i
      end
    end

    def render(_)
      require 'securerandom'
      SecureRandom.hex(@n)
    end
  end
end

Liquid::Template.register_tag('random_hex_string', RandomHex::RandomNumberTag)
