class Errortittle < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'},
    {id: 1, name: 'others'},
    {id: 2, name: 'NameError'},
    {id: 3, name: 'NoMethodError'},
    {id: 4, name: 'Actioncontroller'},
    {id: 5, name: 'Template is missing'},
    {id: 6, name: 'ArgumentError'},
    {id: 7, name: 'LoadError'},
    {id: 8, name: 'SyntaxError'},
    {id: 9, name: 'RoutingError'},
    {id: 10, name: 'PG::'},
    {id: 11, name: 'ActiveRecord::'},
    {id: 12, name: 'ActionView::'},
    {id: 13, name: 'ExecJs::'},
    {id: 13, name: 'Mysql2::'},
     ]
     
     include ActiveHash::Associations
     has_many :prototypes
end