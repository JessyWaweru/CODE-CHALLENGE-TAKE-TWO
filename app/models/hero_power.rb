class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power
    STRENGTH_VALUES=['Strong','Weak','Average'].freeze
    validates:strength,inclusion:{in:STRENGTH_VALUES}
end
