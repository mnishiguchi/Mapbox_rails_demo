# http://ricostacruz.com/til/npm-in-rails
system 'npm install' if Rails.env.development? || Rails.env.test?
