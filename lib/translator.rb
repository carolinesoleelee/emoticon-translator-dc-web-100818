require "yaml"

def load_library(file_path)
hash = {"get_meaning" => {}, "get_emoticon" => {} }
YAML.load_file(file_path).each do |meaning, array|
    english, japanese = array
    library["get_emoticon"][english] = japanese
    library["get_meaning"][japanese] = meaning
  end
  library
end

def get_japanese_emoticon(file_path, emoticon)
hash = load_library(file_path)
end
