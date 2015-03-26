ActiveAdmin.register Item, :as => 'thingstodo'  do
menu :label => "Things to Do"
 # controller do
  # authorize_resource class: false
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :list, :of, :attributes, :on, :model, :Name, :slug, :short_tag, :Description, :Order, :category_id, descriptions_attributes: [ :id, :Title, :Content, :Order , :_destroy],images_attributes: [ :id, :Title, :Content, :Order, :image, :_destroy]
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  index do    
     column :Name 
     column :slug
     column :category do |c|
        c.category.Name
      end
    column :Order
     column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.view'), resource_path(resource), :class => "member_link view_link"
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end
  end

  form do |f|
      f.inputs "Item" do
      # add your other inputs
      f.input :category, :collection => Category.all.map{ |category| [category.Name, category.id] },:prompt => true
      f.input :Name
      f.input :slug
      f.input :short_tag
      f.input :Description, :input_html => { :class => "tinymce_editor" }
      f.input :Order

     end 

      f.inputs "Images" do
        f.has_many :images, new_record: 'Add Images', heading: false do |b|
          b.input :Title
           b.input :Content, :input_html => { :class => "tinymce_editor" }
           b.input :Order
          
          b.input :image, :as => :file, :hint => image_tag(b.object.image.url(:thumb))

          b.input :_destroy, :as => :boolean
        end
      end

        f.inputs "Descriptions" do
        f.has_many :descriptions, new_record: 'Add Descriptions', heading: false do |d|
          d.input :Title
           d.input :Content, :input_html => { :class => "tinymce_editor" }
           d.input :Order
           d.input :_destroy, :as=>:boolean, :required => false, :label=>'Remove'
           # d.button do
           #  link_to "Delete", admin_items_path(d.object), method: "delete", class: "button" unless d.object.new_record?
           # end
        end
      end
     f.actions 
   end

  show do |item|
  attributes_table do

    row :Name
    row :slug
    row :short_tag
    row :Order
    row :category do |c|
         c.category.Name
      end
    
  end

   if item.descriptions and item.descriptions.count > 0
            div :class => "panel_contents" do
              div :class => "attributes_table" do
                table do
                  tr do
                    th do
                      "Descriptions"
                    end
                    th do
                    end
                  end
                  tbody do
                    item.descriptions.each do |d|
                      tr do
                        td do
                         h4 d.Title 
                         
                        end
                        td do 
                           d.Content
                         end 
                      end
                    end
                  end
                end
              end
            end
          else
            h3 "No description available"
          end

      if item.images and item.images.count > 0
            div :class => "panel_contents" do
              div :class => "attributes_table" do
                table do
                  tr do
                    th do
                      "Images"
                    end
                  end
                  tbody do
                    item.images.each do |d|
                      tr do
                        td do
                          image_tag d.image_url(:thumb)
                        end
                      end
                    end
                  end
                end
              end
            end
          else
            h3 "No Image available"
          end
end
filter :category 
filter :Name 
filter :Description
filter :category, as: :select, collection: -> {Category.all.map{|s| [s.Name,s.id]}.uniq},  input_html: { class: 'chosen-input' } #or as you've shown before, using pluck :)

controller do
    def scoped_collection
      super.where(:category_id=>Category.find_by_slug('thingstodo').id)

      # Or provide a custom collection similar to the current implementation:
      # client().account.messages.list.sort_by{ |message| Date.rfc2822(message.date_sent) }.reverse
    end

  end
end

