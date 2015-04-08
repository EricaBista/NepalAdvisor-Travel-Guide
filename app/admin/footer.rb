module ActiveAdmin
  module Views
    class Footer < Component
      def build
        super :id => "footer"                                                    
        super :style => "text-align: right;"                                     

        div do     
          span "\xC2\xA9".force_encoding('UTF-8')                                                              
          small link_to "nepaladvisor", "http://nepaladviser.com"
          span do "#{Date.today.year}"  end                                     
        end
      end

    end
  end
end