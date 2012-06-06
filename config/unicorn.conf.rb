preload_app true
worker_processes 4
timeout 300

listen 8080
pid 'tmp/pids/unicorn.pid'

before_fork do |server, worker|
  defined?(ActiveRecord::Base) and
      ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and
      ActiveRecord::Base.establish_connection
end