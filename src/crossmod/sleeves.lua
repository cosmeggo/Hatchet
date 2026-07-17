CardSleeves.Sleeve {
    key = "Chevron",
    atlas = "HatchetCrossSleeves",
    pos = { x = 0, y = 0 },
    config = { discards = 2, hand_size = -2 },
    unlocked = true,
    loc_vars = function(self)
        return { vars = { self.config.discards, self.config.hand_size } }
    end,
}
