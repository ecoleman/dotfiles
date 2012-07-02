require 'rake'
require 'erb'

desc "install the dot files into user's home directory"
task :install do
  $replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.rdoc LICENSE].include? file
    
    if file[0].eql?('_') and File.directory?(file)
      _file = file[1..file.length]
      if Dir.exist?(File.join(ENV['HOME'], ".#{_file}"))
        Dir[file + "/*"].each do |f|
          root_path = File.join(ENV['HOME'], ".#{_file}")
          f = f[file.length+1..f.length]
          process_file(root_path, f)
        end
      end

      next
    end
    next

    process_hidden_file(ENV['HOME'], file)
  end
end

def process_file(root_dir, file)
  new_file = File.join(root_dir, "#{file.sub('.erb', '')}")

  puts "file = #{file}"
  puts "new file = #{new_file}"
  if File.exist?(new_file)
    if File.identical?(file, new_file)
      puts "identical ~/#{file.sub('.erb', '')}"
    elsif $replace_all
      replace_file(file)
    else
      print "overwrite ~/#{file.sub('.erb', '')}? [ynaq] "
      case $stdin.gets.chomp
      when 'a'
        $replace_all = true
        replace_file(file)
      when 'y'
        replace_file(file)
      when 'q'
        exit
      else
        puts "skipping ~/#{file.sub('.erb', '')}"
      end
    end
  else
    link_file(root_dir, file)
  end
end

def process_hidden_file(root_dir, file)
  new_file = File.join(root_dir, ".#{file.sub('.erb', '')}")

  if File.exist?(new_file)
    if File.identical?(file, new_file)
      puts "identical ~/.#{file.sub('.erb', '')}"
    elsif $replace_all
      replace_file(file)
    else
      print "overwrite ~/.#{file.sub('.erb', '')}? [ynaq] "
      case $stdin.gets.chomp
      when 'a'
        $replace_all = true
        replace_file(file)
      when 'y'
        replace_file(file)
      when 'q'
        exit
      else
        puts "skipping ~/.#{file.sub('.erb', '')}"
      end
    end
  else
    link_file(root_dir, ".#{file}")
  end
end

def replace_file(root_path, file)
  full_path = File.join(root_path, ".#{file.sub('.erb', '')}")
  system %Q{rm -rf "#{full_path}"}
  link_file(root_path, file)
end

def link_file(root_path, file)
  puts "link_file(#{root_path}, #{file})"
  puts " ln -s $PWD"
exit
  full_path = File.join(root_path, "#{file.sub('.erb', '')}")
  if file =~ /.erb$/
    puts "generating #{full_path}"
    File.open(full_path, 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking #{full_path}"
    system %Q{ln -s "$PWD/#{file}" "#{full_path}"}
  end
end
