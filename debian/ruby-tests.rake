# adapted from upstream Rakefile

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/*_test.rb'].exclude(['test/shoulda/test_framework_detection_test.rb','test/shoulda/railtie_test.rb','test/shoulda/rerun_snippet_test.rb'])
end

task :default => :test
