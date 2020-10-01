todo_lists = [
                { id: 1,  list_name: 'Groceries', todos: [
                                                              { id: 1, name: 'Bread', completed: false },
                                                              { id: 2, name: 'Milk', completed: false },
                                                              { id: 3, name: 'Apple Juice', completed: false }
                                                                                                                 ]
                },
                

                { id: 2,  list_name: 'Homework',  todos: [
                                                            { id: 1, name: 'Math', completed: false },
                                                            { id: 2, name: 'English', completed: false }
                                                                                                          ]
                }
              ]

=begin

an array with two nested hashes
each hash has a key id, list_name, todos. 
Todos KEY is an array with nested hashes
To access todo we NEED TO get into each hash with 

TODO_LIST[1]
TODO_LIST[1][:todos] < array we need to get in there



=end
