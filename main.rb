require 'Date'

class ToDoList
    attr_accessor :entries

    def initialize
        puts "-----\nCreating new ToDo list... \n-----"
        @entries = Array.new
    end

    def createEntry
        newEntry = ToDoListEntry.new
        @entries.push(newEntry)
        return newEntry
    end
end


class ToDoListEntry
    attr_accessor :name, :content, :timeEntered, :timeModified, :timeCompleted

    def initialize
        puts "Creating new list entry"
        @name = "list001"
        @timeEntered = DateTime.now
        puts "Created at #{ @timeEntered }"
    end
end

listTest = ToDoList.new
listTest.createEntry