ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  show do
    attributes_table do
      row :email
      row :created_at
    end
  end

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
