ActiveAdmin.register Margin do
  config.clear_action_items!
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :ourea_factor, :ourea_fixed, :etisalat_fixed, :etisalat_factor, :plan

index do
  id_column
  column :plan
  column :ourea_fixed
  column :ourea_factor
  column :etisalat_fixed
  column :etisalat_factor
  actions
end

end
