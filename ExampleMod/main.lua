AltTexture {
    key = "ExampleTexture",          -- You make this up. Make sure each one is unique. I recommend just using the filename without the extension.
    set = "Joker",                   -- Joker, Tarot, Voucher, Tag, etc
    path = "ExampleTexture.png",
    keys = { "j_chaos" },            -- List all the items you're changing here. You can search the translation files in the game's code to find the IDs easily.
    loc_txt = { name = "My Title" }, -- Name of the replacement; I'll talk about this in a bit.
    localization = {                 -- Use this section to change text with your texture pack.
        j_chaos = {
            name = "Clown Moment",
            text = { "Super cool", "{C:green}Jonkler" }
        }
    },
    original_sheet = false, -- Set this to true if your sprite sheet matches the original (i.e. if you could drop it in the game to replace the original without issue)
    px = nil,               -- Set these if you have a higher resolution texture pack.
    py = nil
}

AltTexture {
    key = "YorickTexture",
    set = "Joker",
    path = "YorickTexture.png",
    keys = { "j_yorick" },
    loc_txt = { name = "My Other Title" },
    localization = {
        j_yorick = {
            name = "Sad Yorick",
        }
    },
    soul_keys = { "j_yorick" }
}

TexturePack {
    key = "myEpicTexturePack",
    textures = { -- This is a list of all of your `AltTexture`s. Include the prefix from `manifest.json`.
        "myEpicTexturePack_ExampleTexture",
        "myEpicTexturePack_YorickTexture",
    },
    loc_txt = { -- This information shows up in the Malverk UI.
        name = "Epic Replacement For Chaos The Clown",
        text = { "This replaces", "Chaos the Clown", "with a much better image." }
    }
}
