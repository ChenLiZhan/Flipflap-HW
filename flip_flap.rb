require_relative 'tsv_buddy'
require 'yaml'

# Class that contains several methods to parse format of data between each other
class FlipFlap
  include TsvBuddy
  # Do not create any initializers
  def take_yaml(yml)
    @data = YAML.load(yml)
  end

  def to_yaml
    @data.to_yaml
  end
end
