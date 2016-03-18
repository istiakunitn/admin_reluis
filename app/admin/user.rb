ActiveAdmin.register User do

  form do |f|
    f.inputs 'User Details' do
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
    column :email
    column :username
    column :institution
    column :last_sign_in_at
    actions
  end

  permit_params :email, :username, :institution_id, :password, :password_confirmation

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
