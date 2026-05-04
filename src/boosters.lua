-- Mega Sephirot Pack
SMODS.Booster {
    key = "sephirot_mega_1",
    weight = 0.07,
    atlas = "HatchetBoosters",
    loc_txt = {
        group_name = "Sephirot Pack"
    },
    cost = 5,
    pos = { x = 0, y = 0 },
    config = { extra = 5, choose = 2 },
    draw_hand = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
        }
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX("298197"))
        ease_background_colour({ new_colour = HEX('298197'), special_colour = HEX("30c2b8"), contrast = 2 })
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.1,
            initialize = true,
            lifespan = 3,
            speed = 0.2,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
    create_card = function(self, card, i)
        return {
            set = "hatch_sephirot",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
        }
    end,
}

-- Jumbo Sephirot Pack
SMODS.Booster {
    key = "sephirot_jumbo_1",
    weight = 0.3,
    atlas = "HatchetBoosters",
    loc_txt = {
        group_name = "Sephirot Pack"
    },
    cost = 5,
    pos = { x = 1, y = 0 },
    config = { extra = 5, choose = 1 },
    draw_hand = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
        }
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX("298197"))
        ease_background_colour({ new_colour = HEX('298197'), special_colour = HEX("30c2b8"), contrast = 2 })
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.1,
            initialize = true,
            lifespan = 3,
            speed = 0.2,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
    create_card = function(self, card, i)
        return {
            set = "hatch_sephirot",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
        }
    end,
}

-- Sephirot Packs (Normal)
SMODS.Booster {
    key = "sephirot_normal_1",
    weight = 0.3,
    atlas = "HatchetBoosters",
    loc_txt = {
        group_name = "Sephirot Pack"
    },
    cost = 5,
    pos = { x = 2, y = 0 },
    config = { extra = 3, choose = 1 },
    draw_hand = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
        }
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX("298197"))
        ease_background_colour({ new_colour = HEX('298197'), special_colour = HEX("30c2b8"), contrast = 2 })
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.1,
            initialize = true,
            lifespan = 3,
            speed = 0.2,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
    create_card = function(self, card, i)
        return {
            set = "hatch_sephirot",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
        }
    end,
}

SMODS.Booster {
    key = "sephirot_normal_2",
    weight = 0.3,
    atlas = "HatchetBoosters",
    loc_txt = {
        group_name = "Sephirot Pack"
    },
    cost = 5,
    pos = { x = 3, y = 0 },
    config = { extra = 3, choose = 1 },
    draw_hand = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
        }
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX("298197"))
        ease_background_colour({ new_colour = HEX('298197'), special_colour = HEX("30c2b8"), contrast = 2 })
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.1,
            initialize = true,
            lifespan = 3,
            speed = 0.2,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
    create_card = function(self, card, i)
        return {
            set = "hatch_sephirot",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
        }
    end,
}
