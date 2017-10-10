    module Properties
      module ClassMethods
        def four_legs
          "Has four legs"
        end

        def type_of_wood
            "Cherry"
        end
      end

      def description
        puts "This piece has four legs and is made of cherry."
      end
    end