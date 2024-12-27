-- simple implementaion of queue
queue = {}

function queue:new()
    self.__index = self
    return setmetatable({last = -1, first = 0}, self)
end

function queue:pop()
    local value = self[self.first]
    self[self.first] = nil
    self.first = self.first + 1
    return value
end

function queue:push(value)
    self.last = self.last + 1
    self[self.last] = value
end

function queue:len()
    return self.last - self.first + 1
end


-- breadth-first search
function BFS(graph, init, target)

    local searchque = queue:new()

    for _, value in pairs(graph[init]) do
        searchque:push(value)
        print(value)
        print(searchque[_])
    end
    
    local function search(searchque, searched)
        if searchque:len() <= 0 then
            return false
        end
        
        local node = searchque:pop()

        if not searched[node] then
            if node == target then
                return true
            end

            for _, value in pairs(graph[node]) do
                searchque:push(value)
            end
            
            searched[node] = true
        end

        return search(searched, searched)
    end
    
    return search(searchque, {})
end

local graph = {}
graph["you"] = {"alice", "bob", "claire"}
graph["bob"] = {"anuj", "peggy"}
graph["alice"] = {"peggy"}
graph["claire"] = {"thom", "jonny"}
graph["anuj"] = {}
graph["peggy"] = {}
graph["thom"] = {}
graph["jonny"] = {}

print(BFS(graph, 'you', 'bob'))