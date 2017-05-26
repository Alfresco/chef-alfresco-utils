# This resource is meant to be used by AWS instances using AMIs with prebaked LibreOffice

actions :run
default_action :run

resource_name :change_own_mod

property :source,     String, name_property: true
property :mode,       String
property :user,       String
property :group,      String
property :recursive,  [true, false], default: false

action :run do
  r = new_resource

  %w(chown chgrp chmod).each do |command|
    if command == 'chown'
      res = r.user
      type = 'user'
    elsif command == 'chgrp'
      res = r.group
      type = 'group'
    elsif command == 'chmod'
      res = r.mode
      type = 'perm'
    end
    execute "#{command} #{res} #{'-R' if r.recursive} #{r.source}" do
      not_if { shell_out("find #{r.source} \! -#{type} #{res}").stdout.strip == '' }
      not_if { res.to_s.empty? }
    end
  end

  # execute "change #{r.source} owner" do
  #   command "chown #{r.user} #{'-R' if r.recursive} #{r.source}"
  #   not_if { shell_out("find #{r.source} \! -user #{r.user}").stdout.strip == '' }
  #   not_if { r.user.to_s.empty? }
  # end
  #
  # execute "change #{r.source} group" do
  #   command "chgrp #{r.group} #{'-R' if r.recursive} #{r.source}"
  #   not_if { shell_out("find #{r.source} \! -group #{r.group}").stdout.strip == '' }
  #   not_if { r.group.to_s.empty? }
  # end
  #
  # execute "change #{r.source} mode" do
  #   command "chmod #{'-R' if r.recursive} #{r.mode} #{r.source}"
  #   not_if { shell_out("find #{r.source} \! -perm #{r.mode}").stdout.strip == '' }
  #   not_if { r.mode.to_s.empty? }
  # end
end
