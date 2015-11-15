class Visto < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :titulado
end
