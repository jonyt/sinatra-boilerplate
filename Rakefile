# The default, if you just run `rake` in this directory, will list all the available tasks
task :default do
  puts "All available rake tasks"
  system('rake -T')
end

desc "Start Unicorn in development mode"
task :s do
  system("unicorn -c config/unicorn.rb -E development")
end

# NOTE: unicorn:start should be run on production to start the system up
namespace :unicorn do
  desc "Start Unicorn"
  task :start do
    puts "Unicorns unleashed" if system("unicorn -c config/unicorn.rb -D -E development")
  end

  desc "Stop Unicorn"
  task :stop do
    if unicorn_pid
      puts "Unicorn killed (womp womp)" if system("kill -s QUIT #{ unicorn_pid }")
    else
      puts "No Unicorn to kill"
    end
  end

  desc "Graceful reload"
  task :reload do
    if unicorn_pid
      puts "Unicorn reloaded" if system("kill -s USR2 #{ unicorn_pid }")
    else
      puts "No PID to reload"
    end
  end
end

# read that PID
def unicorn_pid
  File.read("./tmp/unicorn.pid") || false
end