ActiveAdmin.register User do

  form do |f|
    f.inputs 'User Details' do
      f.input :full_name
      f.input :email
      f.input :username
      f.input :institution
      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :full_name
    column :email
    column :username
    column :institution
    column :profile_picture
    column :last_sign_in_at
    actions
  end

  permit_params :full_name, :email, :username, :institution_id, :password, :password_confirmation, :profile_picture

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


end
