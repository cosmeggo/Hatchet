-- Rarities

SMODS.Rarity {
    key = "evolved",
    default_weight = 0,
    badge_colour = HEX('4a90e2'),
    get_weight = function(self, weight, object_type)
        return weight
    end,
}
