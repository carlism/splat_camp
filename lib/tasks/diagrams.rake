graphviz_home = "/Applications/Graphviz.app/Contents/MacOS"

railroad_gem_path = "#{RAILS_ROOT}/vendor/gems/railroad-0.5.0"

namespace :doc do
  namespace :diagram do

    task :models do
      sh "ruby -I #{railroad_gem_path}/lib #{railroad_gem_path}/bin/railroad -i -a -m -M | #{graphviz_home}/dot -Tpng > doc/models.png"
    end

    task :controllers do
      sh "ruby -I #{railroad_gem_path}/lib #{railroad_gem_path}/bin/railroad -i -C | #{graphviz_home}/neato -Tpng > doc/controllers.png"
    end
  end

  desc "Builds models and controllers diagrams"
  task :diagrams => %w(diagram:models diagram:controllers)
end