class User
    attr_accessor: name
    
    def initialize(args)
        args = {name: nil}.merge(args)
        @name = args[:name]
    end
end