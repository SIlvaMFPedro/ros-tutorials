from std_msgs.msg import Int64
from python_bindings_tutorial import AddTwoInts
a = Int64(4)
b = Int64(2)
addtwoints = AddTwoInts()
sum = addtwoints.add(a, b)
sum