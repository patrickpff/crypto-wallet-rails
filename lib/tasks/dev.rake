require 'tty-spinner'

namespace :dev do
  desc "Setup development environment"
  task setup: :environment do
    unless Rails.env.development?
      puts "This task can only be run in the development environment."
      next
    end

    multi = TTY::Spinner::Multi.new("[:spinner] Setting up development environment...", format: :dots)
    multi.auto_spin
    
    tasks = {
      "Dropping database" => "db:drop",
      "Creating database" => "db:create",
      "Running migrations" => "db:migrate",
      "Seeding database" => "db:seed",
    }

    tasks.each do |description, rake_task|
      spinner = multi.register("[:spinner] #{description}...", format: :dots)
      spinner.auto_spin
      begin
        %x(rails #{rake_task})
        spinner.success("(Done)")
      rescue => e
        spinner.error("(Failed)")
        puts "Error during #{description.downcase}: #{e.message}"
      ensure
        Rake::Task[rake_task].reenable
      end
    end
  end

end
