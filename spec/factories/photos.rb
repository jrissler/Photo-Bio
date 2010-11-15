# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :photo do |f|
  f.name "MyString"
  f.description "MyText"
  f.friendly_file_name "MyString"
  f.user_id 1
  f.event_id 1
end
