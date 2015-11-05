module Redmine_watchers_by_group
  class Hooks < Redmine::Hook::ViewListener
    def view_issues_new_top(context={ })
      controller = context[:controller]
      return '' unless controller
      action_name = controller.action_name
      return '' unless action_name
      return '' unless action_name=="new" && context[:request].parameters[:copy_from].blank?
      context[:controller].send(:render_to_string, {
          :partial => 'watchers/multiselect_group',
          :locals => context
        })
    end
  end
end
