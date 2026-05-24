-- Rarities

SMODS.Rarity {
    key = "hatch_evolved",
    default_weight = 0,
    badge_colour = HEX('484cdb'),
    get_weight = function(self, weight, object_type)
        return weight
    end,
}
