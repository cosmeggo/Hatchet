--[[

balatro uses UIElement (aka node) - a specific format that uses the following fields

n = node (type)
config = properties of the node
nodes = the nodes within n (children)

think of the node as a special object. the config determines the properties of that object, and the children nodes
are smaller objects stored in that specific object. like a matryoshka doll!

UIElement is super finicky and takes time to render, so we package them into UIBox objects!
A UIBox is a "complete UI feature," such as a menu or button. Think of it like thoes default sprites from Scratch.

Much like a matryoshka doll, UIBox objects can contain smaller UIBox objects.

--]]


HATCH.config_tab = function() -- Credit to Metanite64 for the code <3
  return {
    n = G.UIT.ROOT, -- the big boss node
    config = {
      emboss = 0.05, -- how much it raises up 
      minh = 6, -- the minimum height
      r = 0.1, -- the (standard) roundness
      minw = 10, -- the minimum width
      align = "cm", -- centre middle align
      padding = 0.2, -- how much space inside
      colour = G.C.BLACK -- the text color
    }, nodes = {
      { n = G.UIT.R, config = { align = "cm", padding = 0.1 }, nodes = { -- row, centre middle, padding (0.1)
       { n = G.UIT.T, config = { text = "Settings", colour = G.C.WHITE, scale = 0.6 }} -- text node! contains color and scale
      }},
      create_toggle { -- the toggle itself
        label = "Enable Divine Shader",
        active_colour = HEX("484cdb"),
        ref_table = HATCH.config,
        ref_value = "divine_shader"
      },
    }}
end

--[[

Node Types

- G.UIT.ROOT - The toplevel "big boss" of every UIBox. There are at least one of these per UIBox.
- G.UIT.R - A row node. You can remember this with the "R"
- G.UIT.C - A column node. You can remember this with the "C"
- G.UIT.T - A text node. It must contain text, color, and scale within its specific config (its own properties)
- G.UIT.O - An object node. Displays a game object, such as a sprite or card or whatever
- G.UIT.B - A box node (not to be confused with UIBox) - it ignores all child nodes and acts as a spacer / divider

--]]

--[[

Node Config 

- align: used to define the placement of child nodes
    - first letter is for vertical alignment: t = top, c = centre, b = bottom
    - second letter is for horizontal alignment: l = left, m = middle, r = right
- for example, align = "bl"

- h: the basic height of the node. minh for minimum height, maxh for maximum height
- w: the basic width of the node. minw for minimum width, maxw for maximum width
- padding: extra space INSIDE the current node. standard values are 0.05 or 0.1
- r: roundness of corners. standard value is 0.1
- colour: fill color of the current node. standard values stored in G.C. (e.g. G.C.MULT), fully custom values are supported
- no_fill: a boolean (true/false) that defines whether the node is transparent (true) or not
- outline: extra space OUTSIDE the current node, much like a pixel sprite's outline.
- outline_colour: colour of the outline
- emboss: how much is it raised outside its parent node? funky "3d" effect, standard value is 0.05
- hover: a boolean that defines whether the child node is hovering *above* its parental node
    - shadow: a boolean that defines whether the child node is casting a shadow
- juice: a boolean that defines whether the juice_up animation is applied to the current node once loaded in

-]]