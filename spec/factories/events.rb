# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :event do |f|
  f.name "MyString"
  f.description ""
  f.user_id 1
  f.event_date "2010-11-13 07:39:31"
end
