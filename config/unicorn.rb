# See http://datachomp.com/archives/using-unicorn-with-sinatra-or-padrino-on-heroku/
worker_processes 3
timeout 30
preload_app true