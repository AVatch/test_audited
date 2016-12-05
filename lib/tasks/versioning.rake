namespace :versioning do
  desc "TODO"
  task test: :environment do

    # Create a post
    # p = Post.create(text: "Hello World", likes: 1)
    # p.likes = 3
    # p.save
    # p.likes = 6
    # p.save

    p = Post.last
    puts "Number of audits: #{p.audits.count}"
    
    p.revisions.each_with_index do |revision, i|
      audit = p.audits[i]

      puts "#{revision.text} : #{revision.likes}"
      
      puts "\t#{audit.action}"
      puts "\t#{audit.audited_changes}"
    end

  end

end
