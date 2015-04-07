ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }
  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
        span class: "blank_slate" do
         #span I18n.t("active_admin.dashboard_welcome.welcome")
        # small I18n.t("active_admin.dashboard_welcome.call_to_action")
        span "Welcome to Nepaladviser Admin Page"
         
          users = User.group('Date(created_at)').count
   
        render :partial =>"common/graph", :locals => { :users => users } 
    end
    
    columns do
      column do
      panel "Recent Reviews" do 
      table_for Review.where(:approved => false).limit(3).order("RANDOM()") do  
      column :title  
      column :description 

      column :approved
      column "" do |resource|
      links = ''.html_safe
      links += link_to "Approve", approve_admin_review_path(resource), :class => "status_tag"
      links
    end
  end
strong { link_to "View All reviews", admin_reviews_path }    
 end
     
    end 
     column do
     panel "New User Signup" do 
    # section "Users", :priority => 4 do
    # div do
    #   render "search_user"
    # end
    #end 
      table_for User.where(:role => "normal").order(created_at: :desc).limit(5) do  
      column :email
      column :role 
      column :sign_in_count
    end
      strong { link_to "View All users", admin_users_path }
    end 
    end
  end
end

    # Here is an example of a simple dashboard with columns and panels.
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content

end
