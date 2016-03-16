ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	permit_params :first_name,:last_name,:email,:attachment, role_ids: []

	form do |f|
    f.inputs "User Details" do
    	f.input :first_name
    	f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    	f.input :attachment, as: :file
    	f.input :roles, as: :select, multiple: false, collection: Role.all
    end
    f.actions
  end

	show  title: proc{|user| user.name} do
    attributes_table do
      row "Profile" do |user|
        image_tag user.attachment.url, size: '200x200'
      end
      row :first_name
      row :last_name
      row :email
      row :roles do | user |
        user.roles.map { |role| role.name }.join(", ") unless user.roles.blank?
      end
    end
  end


	index do
    selectable_column
    column "Profiles" do |user|
    	image_tag user.attachment.url(:thumb)
  	end
    column :first_name
    column :last_name
    column :email
    column :roles do |user|
      user.roles.map { |role| role.name }.join(", ") unless user.roles.blank?
    end
    actions
  end

  
  filter :first_name
  filter :last_name
  filter :email
  filter :roles

end
