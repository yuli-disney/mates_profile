# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

desc 'Migration methods.'
command 'migration' do |g|
  g.desc 'For Enterprise Grid workspaces, map local user IDs to global user IDs'
  g.long_desc %( For Enterprise Grid workspaces, map local user IDs to global user IDs )
  g.command 'exchange' do |c|
    c.flag 'users', desc: 'A comma-separated list of user ids, up to 400 per request.'
    c.flag 'to_old', desc: 'Specify true to convert W global user IDs to workspace-specific U IDs. Defaults to false.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.migration_exchange(options))
    end
  end
end
