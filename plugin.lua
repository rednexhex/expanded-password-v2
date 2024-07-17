-- HighLevel Password
-- by Matty
-- July 2024

-- Information block for the plugin
--[[ #include "info.lua" ]]

-- Define the color of the plugin object in the design
function GetColor(props)
  return { 155, 66, 245 }
end

-- The name that will initially display when dragged into a design
function GetPrettyName(props)
  return "Expanded-Password, version " .. PluginInfo.Version
end

-- Define User configurable Properties of the plugin
function GetProperties()
  local props = {}
  --[[ #include "properties.lua" ]]
  return props
end


Constants = {
  CONTAINER_SIZE = { 768, 505 },

  STANDARD_BTN_SIZE = { 40, 40 },
  STANDARD_KEYPAD_BTN_SIZE = { 40, 50 },
  CUSTOM_BTN_TEXTFIELD_SIZE = { 221, 30 },

  TEXT_SIZE = 13,
  SMALL_TEXT_SIZE = 11,
  TEXT_OUTPUT_SIZE = 21,
  HEADER_TEXT_SIZE = 26,

  KEYBOARD_ANCHOR_POINT = { x = 15, y = 153 },
  SYMBOL_ANCHOR_POINT = { x = 15, y = 368 },
  KEYPAD_ANCHOR_POINT = { x = 632, y = 153 },
  CUSTOM_BUTTON_ANCHOR_POINT = { x = 460, y = 368 },
  CUSTOM_BUTTON_LABEL_SIZE = { 71, 30 },
  CUSTOM_BUTTON_TEXTFIELD_SIZE = { 221, 30 },

  STANDARD_BTN_OFFSET = {
    { x = 0, y = 0 },   -- Row 1
    { x = 50, y = 40 }, -- Row 2
    { x = 60, y = 80 }, -- Row 3
    { x = 75, y = 120}  -- Row 4
  },

  SYMBOL_BTN_OFFSET = {
    { x = 0, y = 0 },   -- Row 1
    { x = 0, y = 40 },  -- Row 2
    { x = 80, y = 80 }  -- Row 3
  },

  KEYPAD_BTN_OFFSET = {
    { x = 0, y = 0 },   -- Row 1
    { x = 0, y = 50 },  -- Row 2
    { x = 0, y = 100 }  -- Row 3
  },

  CUSTOM_BTN_POSITION = {
    { 15, 313 },
    { 90, 313 },
    { 460, 313 },
    { 535, 313 }
  },

  CUSTOM_BTN_LABEL_Y_POS = {
    368,
    398,
    428,
    458
  },

  KEYBOARD_ROW_HEIGHT = 40,
  KEYPAD_ROW_HEIGHT = 50,

}



StandardButtonBuildOrder = {
  ["KB-Accent"] = {Legend = "~\x0A`", PrettyName = "Keyboard~Accent", Row = 1, Index = 1},
  ["KB-Num-1"] = {Legend = "!\x0A1", PrettyName = "Keyboard~1", Row = 1, Index = 2},
  ["KB-Num-2"] = {Legend = "@\x0A2", PrettyName = "Keyboard~2", Row = 1, Index = 3},
  ["KB-Num-3"] = {Legend = "#\x0A3", PrettyName = "Keyboard~3", Row = 1, Index = 4},
  ["KB-Num-4"] = {Legend = "$\x0A4", PrettyName = "Keyboard~4", Row = 1, Index = 5},
  ["KB-Num-5"] = {Legend = "%\x0A5", PrettyName = "Keyboard~5", Row = 1, Index = 6},
  ["KB-Num-6"] = {Legend = "^\x0A6", PrettyName = "Keyboard~6", Row = 1, Index = 7},
  ["KB-Num-7"] = {Legend = "&\x0A7", PrettyName = "Keyboard~7", Row = 1, Index = 8},
  ["KB-Num-8"] = {Legend = "*\x0A8", PrettyName = "Keyboard~8", Row = 1, Index = 9},
  ["KB-Num-9"] = {Legend = "(\x0A9", PrettyName = "Keyboard~9", Row = 1, Index = 10},
  ["KB-Num-0"] = {Legend = ")\x0A0", PrettyName = "Keyboard~0", Row = 1, Index = 11},
  ["KB-Minus"] = {Legend = "_\x0A-", PrettyName = "Keyboard~Minus", Row = 1, Index = 12},
  ["KB-Equals"] = {Legend = "+\x0A=", PrettyName = "Keyboard~Equals", Row = 1, Index = 13},
  ["KB-Q"] = {Legend = "Q", PrettyName = "Keyboard~Q", Row = 2, Index = 1},
  ["KB-W"] = {Legend = "W", PrettyName = "Keyboard~W", Row = 2, Index = 2},
  ["KB-E"] = {Legend = "E", PrettyName = "Keyboard~E", Row = 2, Index = 3},
  ["KB-R"] = {Legend = "R", PrettyName = "Keyboard~R", Row = 2, Index = 4},
  ["KB-T"] = {Legend = "T", PrettyName = "Keyboard~T", Row = 2, Index = 5},
  ["KB-Y"] = {Legend = "Y", PrettyName = "Keyboard~Y", Row = 2, Index = 6},
  ["KB-U"] = {Legend = "U", PrettyName = "Keyboard~U", Row = 2, Index = 7},
  ["KB-I"] = {Legend = "I", PrettyName = "Keyboard~I", Row = 2, Index = 8},
  ["KB-O"] = {Legend = "O", PrettyName = "Keyboard~O", Row = 2, Index = 9},
  ["KB-P"] = {Legend = "P", PrettyName = "Keyboard~P", Row = 2, Index = 10},
  ["KB-LeftBracket"] = {Legend = "{\x0A[", PrettyName = "Keyboard~Left Bracket", Row = 2, Index = 11},
  ["KB-RightBracket"] = {Legend = "}\x0A]", PrettyName = "Keyboard~Right Bracket", Row = 2, Index = 12},
  ["KB-A"] = {Legend = "A", PrettyName = "Keyboard~A", Row = 3, Index = 1},
  ["KB-S"] = {Legend = "S", PrettyName = "Keyboard~S", Row = 3, Index = 2},
  ["KB-D"] = {Legend = "D", PrettyName = "Keyboard~D", Row = 3, Index = 3},
  ["KB-F"] = {Legend = "F", PrettyName = "Keyboard~F", Row = 3, Index = 4},
  ["KB-G"] = {Legend = "G", PrettyName = "Keyboard~G", Row = 3, Index = 5},
  ["KB-H"] = {Legend = "H", PrettyName = "Keyboard~H", Row = 3, Index = 6},
  ["KB-J"] = {Legend = "J", PrettyName = "Keyboard~J", Row = 3, Index = 7},
  ["KB-K"] = {Legend = "K", PrettyName = "Keyboard~K", Row = 3, Index = 8},
  ["KB-L"] = {Legend = "L", PrettyName = "Keyboard~L", Row = 3, Index = 9},
  ["KB-Semicolon"] = {Legend = ":\x0A;", PrettyName = "Keyboard~Semicolon", Row = 3, Index = 10},
  ["KB-Apostrophe"] = {Legend = "\"\x0A\'", PrettyName = "Keyboard~Apostrophe", Row = 3, Index = 11},
  ["KB-Z"] = {Legend = "Z", PrettyName = "Keyboard~Z", Row = 4, Index = 1},
  ["KB-X"] = {Legend = "X", PrettyName = "Keyboard~X", Row = 4, Index = 2},
  ["KB-C"] = {Legend = "C", PrettyName = "Keyboard~C", Row = 4, Index = 3},
  ["KB-V"] = {Legend = "V", PrettyName = "Keyboard~V", Row = 4, Index = 4},
  ["KB-B"] = {Legend = "B", PrettyName = "Keyboard~B", Row = 4, Index = 5},
  ["KB-N"] = {Legend = "N", PrettyName = "Keyboard~N", Row = 4, Index = 6},
  ["KB-M"] = {Legend = "M", PrettyName = "Keyboard~M", Row = 4, Index = 7},
  ["KB-Comma"] = {Legend = "<\x0A,", PrettyName = "Keyboard~Comma", Row = 4, Index = 8},
  ["KB-Period"] = {Legend = ">\x0A.", PrettyName = "Keyboard~Period", Row = 4, Index = 9},
  ["KB-ForwardSlash"] = {Legend = "?\x0A/", PrettyName = "Keyboard~Forward Slash", Row = 4, Index = 10},
}

SymbolButtonBuildOrder = {
  ["SYM-Minus"] = {Legend = "-", PrettyName = "Symbols~Minus", Row = 1, Index = 1},
  ["SYM-ForwardSlash"] = {Legend = "/", PrettyName = "Symbols~Forward Slash", Row = 1, Index = 2},
  ["SYM-Colon"] = {Legend = ":", PrettyName = "Symbols~Colon", Row = 1, Index = 3},
  ["SYM-Semicolon"] = {Legend = ";", PrettyName = "Symbols~Semicolon", Row = 1, Index = 4},
  ["SYM-LeftParenthesis"] = {Legend = "(", PrettyName = "Symbols~Left Parenthesis", Row = 1, Index = 5},
  ["SYM-RightParenthesis"] = {Legend = ")", PrettyName = "Symbols~Right Parenthesis", Row = 1, Index = 6},
  ["SYM-Dollar"] = {Legend = "$", PrettyName = "Symbols~Dollar", Row = 1, Index = 7},
  ["SYM-Ampersand"] = {Legend = "&", PrettyName = "Symbols~Ampersand", Row = 1, Index = 8},
  ["SYM-At"] = {Legend = "@", PrettyName = "Symbols~At", Row = 1, Index = 9},
  ["SYM-Quotation"] = {Legend = "\"", PrettyName = "Symbols~Quotation", Row = 1, Index = 10},
  ["SYM-Tilde"] = {Legend = "~", PrettyName = "Symbols~Tilde", Row = 1, Index = 11},
  ["SYM-Percent"] = {Legend = "%", PrettyName = "Symbols~Percent", Row = 2, Index = 1},
  ["SYM-Comma"] = {Legend = ",", PrettyName = "Symbols~Comma", Row = 2, Index = 2},
  ["SYM-Question"] = {Legend = "?", PrettyName = "Symbols~Question", Row = 2, Index = 3},
  ["SYM-Exclamation"] = {Legend = "!", PrettyName = "Symbols~Exclamation", Row = 2, Index = 4},
  ["SYM-Apostrophe"] = {Legend = "\'", PrettyName = "Symbols~Apostrophe", Row = 2, Index = 5},
  ["SYM-LeftBracket"] = {Legend = "[", PrettyName = "Symbols~Left Bracket", Row = 2, Index = 6},
  ["SYM-RightBracket"] = {Legend = "]", PrettyName = "Symbols~Right Bracket", Row = 2, Index = 7},
  ["SYM-LeftCurlyBrace"] = {Legend = "{", PrettyName = "Symbols~Left Curly Brace", Row = 2, Index = 8},
  ["SYM-RightCurlyBrace"] = {Legend = "}", PrettyName = "Symbols~Right Curly Brace", Row = 2, Index = 9},
  ["SYM-Pound"] = {Legend = "#", PrettyName = "Symbols~Pound", Row = 2, Index = 10},
  ["SYM-Period"] = {Legend = ".", PrettyName = "Symbols~Period", Row = 2, Index = 11},
  ["SYM-Star"] = {Legend = "*", PrettyName = "Symbols~Star", Row = 3, Index = 1},
  ["SYM-Plus"] = {Legend = "+", PrettyName = "Symbols~Plus", Row = 3, Index = 2},
  ["SYM-Equals"] = {Legend = "=", PrettyName = "Symbols~Equals", Row = 3, Index = 3},
  ["SYM-Underscore"] = {Legend = "_", PrettyName = "Symbols~Underscore", Row = 3, Index = 4},
  ["SYM-Backslash"] = {Legend = "\\", PrettyName = "Symbols~Backslash", Row = 3, Index = 5},
  ["SYM-Line"] = {Legend = "|", PrettyName = "Symbols~Line", Row = 3, Index = 6},
  ["SYM-LessThan"] = {Legend = "<", PrettyName = "Symbols~Less Than", Row = 3, Index = 7},
}

KeypadButtonBuildOrder = {
  ["KP-1"] = {Legend = "1", PrettyName = "Keypad~1", Row = 1, Index = 1},
  ["KP-2"] = {Legend = "2", PrettyName = "Keypad~2", Row = 1, Index = 2},
  ["KP-3"] = {Legend = "3", PrettyName = "Keypad~3", Row = 1, Index = 3},
  ["KP-4"] = {Legend = "4", PrettyName = "Keypad~4", Row = 2, Index = 1},
  ["KP-5"] = {Legend = "5", PrettyName = "Keypad~5", Row = 2, Index = 2},
  ["KP-6"] = {Legend = "6", PrettyName = "Keypad~6", Row = 2, Index = 3},
  ["KP-7"] = {Legend = "7", PrettyName = "Keypad~7", Row = 3, Index = 1},
  ["KP-8"] = {Legend = "8", PrettyName = "Keypad~8", Row = 3, Index = 2},
  ["KP-9"] = {Legend = "9", PrettyName = "Keypad~9", Row = 3, Index = 3},
}



-- Defines the Controls used within the plugin
function GetControls(props)
  local ctrls = {}
  --[[ #include "controls.lua" ]]
  return ctrls
end

--Layout of controls and graphics for the plugin UI to display
function GetControlLayout(props)
  local layout = {}
  local graphics = {}
  --[[ #include "layout.lua" ]]
  return layout, graphics
end

--Start event based logic
if Controls then
  --[[ #include "runtime.lua" ]]
end
