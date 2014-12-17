# encoding: utf-8

module RedmineFavoriteProjects
  
  class RedmineFavoriteProjectsHooksListener < Redmine::Hook::ViewListener
    
    def view_projects_form(context)
      f = context[:form]
      options = {
                  l(:project_name_view_default) => '0',
                  l(:project_name_view_name) => '1',
                  l(:project_name_view_id) => '2',
                  l(:project_name_view_id_name) => '3',
                  l(:project_name_view_name_id) => '4'
                }
      content_tag(:p, f.select(:project_name_view, options, :label => 'Projektname für Projektliste'))
    end
    
  end

end