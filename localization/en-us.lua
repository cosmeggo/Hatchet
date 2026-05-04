return {
    descriptions = { -- Backs start below
        Back = {
            b_hatch_holy = {
                name = "Holy Deck",
                text = {
                    "{C:green}Sephirot{} cards may",
                    "appear in the shop,",
                    "start with a {C:green}Kether{} card"
                },
            },
        }, -- Blinds start below
        Blind = {
            bl_hatch_axe = {
                name = "The Axe",
                text = {
                    "Destroy first played card",
                    "after every played hand"
                },
            },
            bl_hatch_sack = {
                name = "The Sack",
                text = {
                    "Downgrade scored",
                    "cards by rank"
                },
            },
        }, -- Enhancements start below
        Enhanced = {
            m_hatch_sulfur = {
                name = "Sulfur",
                text = {
                    "Permanently gain {C:mult}+1{}",
                    "Mult when scored"
                },
            },
            m_hatch_mercury = {
                name = "Mercury",
                text = {
                    "Enhanced card gives",
                    "between {C:blue}+0{} to {C:blue}+75{}",
                    "Chips when scored"
                },
            },
            m_hatch_salt = {
                name = "Salt",
                text = {
                    "Enhanced card has a",
                    "{C:green}#1# in #2#{} chance",
                    "to {C:attention}retrigger{} twice",
                    "when scored"
                },
            },
        }, -- Jokers start below
        Joker = {
            j_hatch_hatchet = {
                name = "Hatchet",
                text = {
                    {
                        "{X:red,C:white}X#1#{} Mult on",
                        "{C:attention}first hand of round{}",
                    },
                    {
                        "{C:red}Destroy{} played cards"
                    }
                },
            },
            j_hatch_handout = {
                name = "Handout",
                text = {
                    {
                        "Earn {C:money}$1{} for each",
                        "remaining {C:attention}discard{}",
                    },
                },
            },
            j_hatch_blueshoes = {
                name = "Blue Shoes",
                text = {
                    "{C:blue}+#1#{} Chips",
                    "{C:blue}-#2#{} Chips per",
                    "{C:planet}poker hand{} upgrade"
                },
            },
            j_hatch_earthquake = {
                name = "Earthquake",
                text = {
                    {
                        "Gains {C:blue}+#2#{} Chips",
                        "per card {C:attention}destroyed{}",
                        "{C:inactive}(Currently {C:blue}+#1#{C:inactive} Chips)",
                    },
                },
            },
            j_hatch_proudjoker = {
                name = "Proud Joker",
                text = {
                    {
                        "Played {C:attention}Stone Cards{}",
                        "give {C:red}+#1#{} Mult",
                    },
                },
            },
            j_hatch_savinggrace = {
                name = "Saving Grace",
                text = {
                    "Upgrade the last",
                    "played {C:attention}poker hand{}",
                    "by {C:attention}#1#{} levels in",
                    "{C:attention}final hand{} of round",
                    "{C:red}Self destructs{}"
                },
            },
            j_hatch_supersevens = {
                name = "Super Sevens",
                text = {
                    "All played {C:attention}7s{}",
                    "become {C:attention}Mercury{}",
                    "cards when scored",
                },
            },
            j_hatch_sevensisters = {
                name = "Seven Sisters",
                text = {
                    "{X:red,C:white}X#1#{} Mult if",
                    "played hand contains",
                    "only {C:attention}7s{}",
                },
            },
            j_hatch_diaryentry = {
                name = "Diary Entry",
                text = {
                    "{C:blue}Common Jokers{} each give {C:blue}50{} Chips"
                },
            },
            j_hatch_blackjoker = {
                name = "Black Joker",
                text = {
                    "{C:dark_edition}Negative{} Jokers",
                    "are {C:attention}#1#X{} more",
                    "likely to appear"
                },
            },
            j_hatch_musketeer = {
                name = "Musketeer",
                text = {
                    "Earn {C:money}$#1#{} if played",
                    "hand contains",
                    "a {C:attention}#2#{}"
                },
            },
            j_hatch_interstice = {
                name = "Interstice",
                text = {
                    "Sell this card to",
                    "halve {C:attention}Blind{} size"
                },
            },
            j_hatch_lossleader = {
                name = "Loss Leader",
                text = {
                    "All cards and packs in",
                    "shop are {C:attention}25%{} off"
                },
            },
            j_hatch_dakimakura = {
                name = "Dakimakura",
                text = {
                    "If played hand contains a {C:attention}Flush{}",
                    "give each card a {C:attention}random{} suit"
                },
            },
            j_hatch_riskyrevolver = {
                name = "Risky Revolver",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "{C:red}destroy{} a random {C:attention}Joker{}",
                    "Else, give {C:white,X:mult}X#3#{} Mult"
                },
            },
            j_hatch_ninelives = {
                name = "Nine Lives",
                text = {
                    "Every {C:attention}9{} held in hand",
                    "gives {C:red}+#1#{} Mult"
                },
            },
            j_hatch_swindler = {
                name = "Swindler",
                text = {
                    "{C:red}+#1#{} Mult",
                    "{C:money}-$#2#{} {C:attention}sell value{}"
                },
            },
            j_hatch_snakeeyes = {
                name = "Snake Eyes",
                text = {
                    "All {C:attention}listed {C:green,E:1}denominators",
                    "are set to {C:attention}2"
                },
            },
            j_hatch_staircase = {
                name = "Staircase",
                text = {
                    "Every played {C:attention}face card{}",
                    "has a {C:green}#1# in #2#{} chance",
                    "to create a {C:green}Sephirot{} card",
                    "{C:inactive}(Must have room){}"
                },
            },
            j_hatch_wildside = {
                name = "Wildside",
                text = {
                    "Retrigger each",
                    "played {C:attention}Wild Card{}"
                },
            },
            j_hatch_fourleaf = {
                name = "Four-Leaf Clover",
                text = {
                    "{C:attention}Four of a Kinds",
                    "can be made with",
                    "{C:attention}Three of a Kinds"
                },
            },
            j_hatch_foolsgold = {
                name = "Fool's Gold",
                text = {
                    "Played {C:attention}Gold{} cards",
                    "have a {C:green}#1# in #2#{} chance to",
                    "create a {C:tarot}Fool{} card",
                    "{C:inactive}(Must have room)"
                },
            },
            j_hatch_topsyturvy = {
                name = "Topsy Turvy",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "{C:tarot}swap{} {C:blue}Chips{} and {C:mult}Mult{}"
                },
            },
            j_hatch_limepie = {
                name = "Lime Pie",
                text = {
                    "Earn {C:money}$#1#{} at end of round",
                    "Payout {C:attention}reduced{} by {C:money}$#2#{}",
                    "per discarded hand"
                },
            },
            j_hatch_emptycrown = {
                name = "Empty Crown",
                text = {
                    "At the end of every round,",
                    "create a {C:green}Kether{} card",
                    "{C:inactive}(Must have room){}"
                },
            },
            j_hatch_royalguard = {
                name = "Royal Guard",
                text = {
                    "{C:red}+1{} Mult for every",
                    "{C:attention}face card{} in your deck",
                    "{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)"
                },
            },
            j_hatch_meteorite = {
                name = "Meteorite",
                text = {
                    "Sell this card to create",
                    "a free {C:attention}Meteor Tag{}"
                },
            },
            j_hatch_bonusround = {
                name = "Bonus Round",
                text = {
                    "Played {C:attention}Bonus Cards{}",
                    "give {C:money}$#1#{} when scored"
                },
            },
            j_hatch_textile = {
                name = "Textile Joker",
                text = {
                    "Gain {C:mult}+#2#{} Mult if {C:attention}Blind{}",
                    "is cleared in {C:attention}one{} hand",
                    "{C:inactive}(Currently {C:mult}+#1#{}{C:inactive} Mult){}"
                },
            },
            j_hatch_medicine = {
                name = "Medicine Cabinet",
                text = {
                    "{C:white,X:mult}X#3#{} Mult in a {C:attention}Boss Blind{}",
                    "{C:green}#1# in #2#{} chance to expire",
                    "after a {C:attention}Boss Blind{}"
                },
            },
            j_hatch_room202 = {
                name = "Room No. 202",
                text = {
                    "If played hand contains a {C:attention}#2#{}",
                    "add {C:attention}+1{} hand size, resets when",
                    "{C:attention}Boss Blind{} is defeated"
                },
            },
            j_hatch_sourmilk = {
                name = "Soured Milk",
                text = {
                    "Lose {C:money}$#1#{} per round",
                    "If balance is below {C:money}-$#2#{}",
                    "this {C:attention}Joker{} spoils"
                },
            },
            j_hatch_milkman = {
                name = "Milkman",
                text = {
                    "Gain {C:white,X:mult}X#1#{} Mult",
                    "per {C:attention}dollar{} below zero",
                    "{C:inactive}(Currently {X:red,C:white}X#2#{C:inactive} Mult)"
                },
            },
            j_hatch_finalace = {
                name = "Final Ace",
                text = {
                    "If {C:attention}scored hand{} contains",
                    "only one {C:attention}Ace{}, destroy it",
                    "and gain {C:mult}+#2#{} Mult",
                    "{C:inactive}(Currently{} {C:mult}+#1#{} {C:inactive}Mult){}"
                },
            },
            j_hatch_pleadeal = {
                name = "Plea Deal",
                text = {
                    "At the start of round",
                    "{C:red}discards{} are added",
                    "to {C:attention}hand size{}"
                },
            },
            j_hatch_capbells = {
                name = "Cap and Bells",
                text = {
                    "{C:red}+1{} {C:attention}Booster Pack{} each round",
                },
            },
            j_hatch_prion = {
                name = "Prion",
                text = {
                    "Discards have a {C:green}#1# in #2#{} chance",
                    "to {C:red}destroy{} the card"
                },
            },
            j_hatch_etzchaim = {
                name = "Etz Chaim",
                text = {
                    "This Joker gains {X:mult,C:white} X#1# {} Mult",
                    "per {C:attention}consumable{} used this run",
                    "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)",
                },
                unlock = {
                    "Find this Joker from the {C:dark_edition}Da'at{} card.",
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_hatch_massacre = "Massacre",
            c_hatch_upsidedown = "Upside Down",
            c_hatch_pillowfight = "Pillow Fight",
            c_hatch_stockmarket = "Stock Market",
            c_hatch_skyhigh = "Sky High",
            c_hatch_test = "Test",
        },
        dictionary = {
            b_hatch_sephirot_cards = "Sephirot Cards",
            b_hatch_divine_cards = "Divine Cards",
            k_hatch_evolved = "Evolved",
        },
        labels = {
            hatch_evolved = "Common",
            hatch_burdened = "Burdened",
            hatch_divine = "Divine",
            hatch_sephirot = "Sephirot",
        },
        Other = {
            p_hatch_sephirot_normal_1 = {
                name = "Sephirot Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:green} Sephirot{} cards to",
                    "be used immediately",
                },
            },
            p_hatch_sephirot_normal_2 = {
                name = "Sephirot Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:green} Sephirot{} cards to",
                    "be used immediately",
                },
            },
            p_hatch_sephirot_jumbo_1 = {
                name = "Sephirot Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:green} Sephirot{} cards to",
                    "be used immediately",
                },
            },
            p_hatch_sephirot_mega_1 = {
                name = "Sephirot Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:green} Sephirot{} cards to",
                    "be used immediately",
                },
            },
        },
        hatch_sephirot = {
            c_hatch_kether = {
                name = "Kether",
                text = {
                    "Create a random",
                    "{C:green}Sephirot{} card",
                    "{C:inactive}(Must have room){}",
                },
            },
            c_hatch_chokmah = {
                name = "Chokmah",
                text = {
                    "Enhances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}#2# Cards{}",
                },
            },
            c_hatch_binah = {
                name = "Binah",
                text = {
                    "Enhances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}#2# Cards{}",
                },
            },
            c_hatch_chesed = {
                name = "Chesed",
                text = {
                    "Enhances {C:attention}3{}",
                    "selected cards to a",
                    "{C:green}random{} enhancement",
                },
            },
            c_hatch_gevurah = {
                name = "Gevurah",
                text = {
                    "Creates a random",
                    "{C:dark_edition}Negative{} {C:attention}Joker{}",
                },
            },
            c_hatch_tiferet = {
                name = "Tiferet",
                text = {
                    "Add a {C:green}random{} seal",
                    "to {C:attention}1{} selected",
                    "card in your hand",
                },
            },
            c_hatch_netzach = {
                name = "Netzach",
                text = {
                    "Create a random",
                    "{C:spectral}Spectral{} card",
                    "{C:inactive}(Must have room){}",
                },
            },
            c_hatch_hod = {
                name = "Hod",
                text = {
                    "Decreases rank of",
                    "up to {C:attention}#1#{} selected",
                    "cards by {C:attention}1",
                },
            },
            c_hatch_yesod = {
                name = "Yesod",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2# Card{}",
                },
            },
        }
    }
}
