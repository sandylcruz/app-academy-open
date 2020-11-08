=begin
We will be creating a sequence of data structures that will 
culminate in a MinMaxStackQueue, our custom data structure 
that will keep track of the min and max in constant time. 
We will get to the specifics of how it does this in a second.

We will be building the following in order:

1. MyQueue
2. MyStack
3. StackQueue
4. MinMaxStack
5. MinMaxStackQueue

Since the window only moves one index at a time, it would be 
nicer to represent it as a queue. Every time we move the window, 
we could enqueue the next element and dequeue the last element.
This would allow us to avoid using Array#slice, so that we 
can traverse the array in constant time.

A queue is a simple abstract linear data structure where 
elements are stored in order and can be added or removed one 
at a time. A queue follows first in, first out (FIFO). 
Unlike Ruby's Array data structure, most Queue implementations 
do not expose methods to slice or sort the data, or to find a 
specific element. The basic operations are:

- Queue
  - enqueue: adds an element to the back of the queue
  - dequeue: removes an element from the front of the queue 
    and returns it

We will also write a peek method, which returns the "top" or 
"next" item without actually removing it.

Queues may be implemented in terms of simpler data structures, 
such as linked lists, but in Ruby you can actually use an 
Array as the underlying data store, as long as you don't 
expose it publicly (i.e., don't define an attr_reader for it). 
We'll do this in today's exercises.

Implement a Queue class. Use the following initialize method 
as a starting point:

Implement peek, size, empty?, enqueue, and dequeue methods on 
your Queue.
=end

class MyQueue

  def initialize
    @store = []
  end
  
end