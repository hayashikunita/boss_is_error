class Folder < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'},
    {id: 1, name: 'all'},
    {id: 2, name: 'app/controllers'},
    {id: 3, name: 'app/models'},
    {id: 4, name: 'app/javascripts'},
    {id: 5, name: 'app/views'},
    {id: 6, name: 'config/routes'}, {id: 7, name: 'db/migrate'}, {id: 8, name: 'Gemfile'}, 
    {id: 9, name: 'README.md'}, {id: 10, name: 'app/assetes'}, {id: 11, name: 'app/channels'}, 
    {id: 12, name: 'app/helpers'}, {id: 13, name: 'app/jobs'}, {id: 14, name: 'app/mailers'}, 
    {id: 15, name: 'bin'}, {id: 16, name: 'config/environments'}, {id: 17, name: 'config/initializers'}, 
    {id: 18, name: 'config/locals'}, {id: 19, name: 'config/webpack'}, {id: 20, name: 'config/others'}, 
    {id: 21, name: 'db/others'}, {id: 22, name: 'lib/assets'}, {id: 23, name: 'lib/tasks'}, 
    {id: 24, name: 'log'}, {id: 25, name: 'node_modules'}, {id: 26, name: 'public'}, 
    {id: 27, name: 'spec/factories'}, {id: 28, name: 'spec/helper'}, {id: 29, name: 'spec/models'}, 
    {id: 30, name: 'spec/requests'}, {id: 31, name: 'storage'}, {id: 32, name: 'tests'}, 
    {id: 33, name: 'tmp'}, {id: 34, name: 'vender'}, {id: 35, name: 'browserslistrc'}, 
    {id: 36, name: 'gitignore'}, {id: 37, name: 'respec'}, {id: 38, name: 'rubocop.yml'}, 
    {id: 39, name: 'ruby-version'}, {id: 40, name: 'others'}
     ]

     include ActiveHash::Associations
     has_many :prototypes
end