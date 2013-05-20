require 'redmine'

require_dependency 'hooks/hooks'
Redmine::Plugin.register :redmine_watchers_by_group do
  name 'Watcher Sellection by Group'
  author 'Jongwook Choi, and Milan Stastny of ALVILA SYSTEMS, and forked by cou2jpn'
  description 'Allows issue creator to select multiple watchers by group and roles.'
  version '0.3.0'
  author_url 'https://github.com/cou2jpn/redmine_watchers_by_group'
end

