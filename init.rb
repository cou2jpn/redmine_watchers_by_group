require 'redmine'

require_dependency 'hooks/hooks'
Redmine::Plugin.register :redmine_watchers_by_group do
  name 'Watcher Sellection by Group'
  author 'Jongwook Choi, and Milan Stastny of ALVILA SYSTEMS'
  description 'Allows issue creator to select multiple watchers by group (forked to support latest redmine)'
  version '0.2.0'
  author_url 'https://github.com/wookayin/redmine_watchers_by_group'
end

