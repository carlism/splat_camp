# see http://github.com/spicycode/beholder/tree/master
map_for(:default_dungeon) do |wizard|
  
  # these are the directories we will be watching
  wizard.keep_a_watchful_eye_for 'app', 'config', 'lib', 'example'
 
  # changes to files in app directory will run the corresponding example in the example directory
  wizard.prepare_spell_for /\/app\/(.*)\.rb/ do |spell_component|
    ["example/#{spell_component[1]}_example.rb"]
  end
  
  # changes files in the lib directory will run the corresponding example in the example/lib directory
  wizard.prepare_spell_for /\/lib\/(.*)\.rb/ do |spell_component|
    ["example/lib/#{spell_component[1]}_example.rb"]
  end
  
  # changes files in the example directory will re-run the example
  wizard.prepare_spell_for /\/example\/(.*)_example\.rb/ do |spell_component|
    ["example/#{spell_component[1]}_example.rb"]
  end
  
  # changes to the example_helper will re-run all examples
  wizard.prepare_spell_for /\/example\/example_helper\.rb/ do |spell_component|
    Dir["example/**/*_example.rb"]
  end

  # changes to anything in the config directory will re-run all examples
  wizard.prepare_spell_for /\/config/ do
    Dir["example/**/*_example.rb"]
  end
end