=begin
We want to find the max window range of array in O(n) time, 
which means we cannot make use of Array#slice, and each 
window must calculate the min and max instantly. Every time 
we move the window, we enqueue the next element and dequeue 
the last element. This solves the problem with slice. However, 
removing items from MyQueue takes O(n) time. As the first 
element of the array is shifted off, the remaining elements 
will be reassigned in new position in memory. Also, it still 
leaves us with the problem of expensive min and max operations. 
To resolve this, we'll have to make clever use of another data 
structure, the stack.

Stacks are another simple linear data structure. Elements are 
also stored in order and can be added or removed one at a time. 
A stack is first in, last out (FILO). Similar to queues, stack 
implementations do not expose methods to slice or sort the 
data, or to find a specific element. The basic operations are:
- Stack
  - push: adds an element to the top of the stack
  - pop: removes an element from the top of the stack and 
    returns it

Implement peek, size, empty?, pop and push methods on your Stack.
=end

class MyStack
  def initialize
    @store = []
  end

  def peek
  end

  def size
  end

  def empty?
  end

  def pop
  end

  def push
  end

end