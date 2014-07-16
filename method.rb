class Object
  def self.descendants
    ObjectSpace.each_object(Class).select { |klass| klass < self }
  end
end
count = Object.descendants.count
puts count
p  Object.descendants.select {|klass|
 		klass.instance_methods.include? :count
	 }