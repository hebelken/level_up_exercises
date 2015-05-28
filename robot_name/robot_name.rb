class NameCollisionError < RuntimeError; end
class NameStructureError < RuntimeError; end

class Robot
  attr_reader :name

  def initialize(args = {})
    @name = ""
    generate_name
    @name = args[:name_generator].call unless !args[:name_generator]
    name_structured_corectly?
  end

  def generate_name
    generated_chars = 2.times { @name << ('A'..'Z').to_a.sample }
    generate_num = 3.times { @name << ('0'..'9').to_a.sample }
    @name
  end

  def name_structured_corectly?
    if !@name =~ /[[:alpha:]]{2}[[:digit:]]{3}/
      raise NameStructureError, "Robot name must follow convention: AA111"
    end
    true
  end
end

class RobotDirectory
  def initialize
    @directory = []
  end

  def directory
    @directory
  end

  def register(robot)
    @directory << robot.name unless name_duplicated?(robot)
  end

  def name_duplicated?(robot)
    if @directory.include?(robot.name)
      raise NameCollisionError, "A robot named '#{robot.name}' already exists."
    end
    false
  end
end

robodir = RobotDirectory.new
robot = Robot.new
robodir.register(robot)
generator = -> { 'AA111' }
robot = Robot.new(name_generator: generator)
robodir.register(robot)
puts robodir.directory