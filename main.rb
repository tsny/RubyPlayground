require 'Date'

class ToDoList
    attr_accessor :entries, :timeCreated, :timeLastModified

    def initialize
        puts "\n-----\nCreating new ToDo list... \n-----"
        @entries = Array.new
        @timeCreated = DateTime.now
        @timeLastModified = DateTime.now
    end

    def to_s
        "List created on #{ @timeCreated } and last modified on #{ @timeLastModified }"
    end

    def createEntry
        newEntry = Entry.new
        @entries.push(newEntry)
        return newEntry
    end
end

class Entry
    attr_accessor :name, :content, :timeEntered, :timeModified, :timeCompleted, :flags

    def initialize(name = "New Entry")
        puts "Creating new list entry"
        @timeEntered = DateTime.now
        @name = name unless name.nil?
        puts "Created #{ @name } entry at #{ @timeEntered }"
    end
end

module EntryFlags
    IMPORTANT = 1
    TIMESENSITIVE = 2
    RANDOM = 3
end

# MAIN

listTest = ToDoList.new

listTest.createEntry
listTest.createEntry("test entry")