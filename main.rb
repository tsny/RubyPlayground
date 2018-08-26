require 'Date'

class ToDoList
    attr_accessor :entries, :timeCreated, :timeLastModified

    def initialize
        puts "-----\nCreating new ToDo list... \n-----"
        @entries = Array.new
        @timeCreated = DateTime.now
        @timeLastModified = DateTime.now
    end

    def to_s
        "List created on #{ @timeCreated } and last modified on #{ @timeLastModified }"
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

# MAIN

listTest = ToDoList.new

listTest.createEntry
listTest.createEntry
listTest.createEntry