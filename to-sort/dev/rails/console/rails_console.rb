#!/usr/bin/env ruby

require "pry"

def main
  _load_env
  _load_data
  __start
  __main
  __finish
end

def __start
  puts "Started"
  puts
  _set_tenant
end

def __finish
  puts "done"
  puts
end

def _load_data
  load ENV["PWD"] + "/.local/src/load_data.rb"
end

def _load_env
  load ENV["PWD"] + "/config/environment.rb"
end

def _set_tenant
  TenantManager.switch_tenant! Account.first
end

def rel
  _load_data
end

def rel_env
  _load_env
end

def admin_person
  u = User.find_by(email: "pat@harber.biz")
  @p ||= u.person
end

main
