class Level < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'},
    {id: 1, name: 'others'},
    {id: 2, name: 'ケアレスミス'},
    {id: 3, name: '理解力不足'},
    {id: 4, name: '知識量不足'},
     ]

     include ActiveHash::Associations
     has_many :prototypes
end