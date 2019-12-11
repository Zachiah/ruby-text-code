class RegexRelation
    attr_reader :regex, :relation
    
    def initialize(args)
        @regex = args[:regex]
        @relation = args[:relation]
    end
end