def is_ruby_19?
  RUBY_VERSION == '1.9.1' or RUBY_VERSION == '1.9.2'
end

# Encoding.default_internal = Encoding.default_external = "ASCII-8BIT" if is_ruby_19?

TEST_KEY = 'test-key'
