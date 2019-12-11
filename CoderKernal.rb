class CoderKernal
    def initialize(args)
        @user = args[:user] || nil
        @encoder = args[:encoder] || nil
        @decoder = args[:decoder] || nil
    end

    def run
    end

    def ask_question(regex_rel_list, message, bad_message)
        validated = false
        answer = false
        begin
            print message
            input = gets.chomp
            regex_rel_list.each do |regex_rel|
                if input =~ regex_rel.regex
                    answer = regex_rel.relation
                    validated = true
                    break
                end
            end
            puts bad_message
        end until validated
        answer
    end
end