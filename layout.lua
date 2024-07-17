
-- <- ->, ^ v  ---

    ------------------------------------------------
    -- LAYOUT VARIABLES
    ------------------------------------------------
    table.insert(graphics, {
      Type = "GroupBox",
      Fill = { 215, 215, 215 },
      StrokeWidth = 1,
      CornerRadius = 3,
      Position = {0,0},
      Size = Constants.CONTAINER_SIZE
    })

    table.insert(graphics, {
      Type = "GroupBox",
      Fill = { 215, 215, 215 },
      StrokeWidth = 1,
      CornerRadius = 3,
      Position = {0,510},
      Size = {768,200}
    })
  
    function GetStandardButtonPosition(index, offset)
      local x = Constants.KEYBOARD_ANCHOR_POINT.x + ((index-1)* Constants.STANDARD_BTN_SIZE[1]) + offset.x
      local y = Constants.KEYBOARD_ANCHOR_POINT.y + offset.y
  
      local pos = {x,y}
  
      return pos
    end
  
    function GetSymbolButtonPosition(index, offset)
      local x = Constants.SYMBOL_ANCHOR_POINT.x + ((index-1)* Constants.STANDARD_BTN_SIZE[1]) + offset.x
      local y = Constants.SYMBOL_ANCHOR_POINT.y + offset.y
  
      local pos = {x,y}
  
      return pos
    end
  
    function GetKeypadButtonPosition(index, offset)
      local x = Constants.KEYPAD_ANCHOR_POINT.x + ((index-1)* Constants.STANDARD_KEYPAD_BTN_SIZE[1]) + offset.x
      local y = Constants.KEYPAD_ANCHOR_POINT.y + offset.y
  
      local pos = {x,y}
  
      return pos
    end
  
    table.insert(graphics, {
      Type = "Image",
      Image = sig,
      Position = { 5, 5 },
      Size = { 20, 23 },
    })

    table.insert(graphics, {
      Type = "Image",
      Image = rdxlogo,
      Position = { 575, 5 },
      Size = { 175, 35 },
    })
  
    layout["KeyboardTextIn"] = {
      PrettyName = "Keyboard Text In",
      Style = "Text",
      Color = { 245, 245, 245 },
      Position = { 15, 76 },
      Size = { 737, 54 },
      CornerRadius = 2,
      TextFontSize = Constants.TEXT_OUTPUT_SIZE,
      StrokeColor = { 105, 105, 105 },
      StrokeWidth = 1,
      Margin = 2
    }
  
    layout["KeyboardTextOut"] = {
      PrettyName = "Keyboard Text Out",
      Style = "None",
      Color = { 194, 194, 194 },
      Position = { 15, 76 },
      Size = { 737, 54 },
      TextFontSize = Constants.TEXT_OUTPUT_SIZE,
      StrokeColor = { 105, 105, 105 },
      StrokeWidth = 1,
      Margin = 2
    }
  
    table.insert(graphics, {
      Type = "Text",
      Text = "Password v"..PluginInfo.Version,
      TextSize = Constants.HEADER_TEXT_SIZE,
      IsBold = false,
      TextFontStyle = "Roboto",
      Color = { 51, 51, 51 },
      Position = { 165, 10 },
      Size = { 437, 55 },
      HTextAlign = "Center"
    })
  
    -- Build Standard Keyboard Buttons
    for k,v in pairs(StandardButtonBuildOrder) do
      layout[k] = {
        PrettyName = v.PrettyName,
        Style = "Button",
        Size = Constants.STANDARD_BTN_SIZE,
        Position = GetStandardButtonPosition(v.Index, Constants.STANDARD_BTN_OFFSET[v.Row]),
        CornerRadius = 2,
        StrokeWidth = 1,
        Margin = 2,
        Legend = v.Legend,
        TextFontSize = Constants.TEXT_SIZE
      }
    end
  
    layout["KB-Backslash"] = {
      PrettyName = "Keyboard~Backslash",
      Style = "Button",
      Size = {70, 40},
      Position = {545, 193},
      CornerRadius = 2,
      StrokeWidth = 1,
      Margin = 2,
      Legend = "|\x0A\\",
      TextFontSize = Constants.TEXT_SIZE
    }
  
    layout["Clear"] = {
      PrettyName = "Clear",
      Style = "Button",
      Size = {50, 40},
      Position = {15, 193},
      CornerRadius = 2,
      StrokeWidth = 1,
      Margin = 2,
      Legend = "Clear",
      TextFontSize = Constants.TEXT_SIZE
    }
  
    layout["CapsLock"] = {
      PrettyName = "Caps Lock",
      Style = "Button",
      Size = {60, 40},
      Position = {15, 233},
      CornerRadius = 2,
      StrokeWidth = 1,
      Margin = 2,
      Legend = "Caps\x0ALock",
      TextFontSize = Constants.TEXT_SIZE
    }
  
    layout["Shift"] = {
      PrettyName = "Shift",
      Style = "Button",
      Size = {75, 40},
      Position = {15, 273},
      CornerRadius = 2,
      StrokeWidth = 1,
      Margin = 2,
      Legend = "Shift",
      TextFontSize = Constants.TEXT_SIZE
    }
  
    layout["Backspace"] = {
      PrettyName = "Backspace",
      Style = "Button",
      Size = {80, 40},
      Position = {535, 153},
      CornerRadius = 2,
      StrokeWidth = 1,
      Margin = 2,
      Legend = "Backspace",
      TextFontSize = Constants.TEXT_SIZE
    }
  
    layout["Enter"] = {
      PrettyName = "Enter",
      Style = "Button",
      Size = {100, 40},
      Position = {515, 233},
      CornerRadius = 2,
      StrokeWidth = 1,
      Margin = 2,
      Legend = "Enter",
      TextFontSize = Constants.TEXT_SIZE
    }
  
    layout["EnterLock"] = {
      PrettyName = "Enter Lock",
      Style = "Button",
      Size = {125, 40},
      Position = {490, 273},
      CornerRadius = 2,
      StrokeWidth = 1,
      Margin = 2,
      Legend = "Enter Lock",
      TextFontSize = Constants.TEXT_SIZE
    }
  
    layout["Space"] = {
      PrettyName = "Space",
      Style = "Button",
      Size = {290, 40},
      Position = {170, 313},
      CornerRadius = 2,
      StrokeWidth = 1,
      Margin = 2,
      Legend = "Space",
      TextFontSize = Constants.TEXT_SIZE
    }
  
    -- Build custom button stuff
  
    for k,v in ipairs(Constants.CUSTOM_BTN_POSITION) do
      layout["CustomButton "..(k)] = {
        PrettyName = "Custom Button "..k,
        Style = "Button",
        Size = (k == 1 or k == 3) and {75,40} or {80,40},
        Position = {v[1], v[2]},
        CornerRadius = 2,
        StrokeWidth = 1,
        Margin = 2,
        Legend = "Custom Button\x0A"..k,
        TextFontSize = Constants.SMALL_TEXT_SIZE
      }
    end
  
    for k,v in ipairs(Constants.CUSTOM_BTN_LABEL_Y_POS) do
      table.insert(graphics, {
        Type = "Text",
        Text = "Custom\x0AButton "..k,
        TextSize = Constants.SMALL_TEXT_SIZE,
        IsBold = false,
        TextFontStyle = "Roboto",
        Color = {51,51,51},
        Position = { 460, v },
        Size = { 71, 30 },
        HTextAlign = "Right"
      })
    end
  
    for k,v in ipairs(Constants.CUSTOM_BTN_LABEL_Y_POS) do
      layout["CustomButtonString "..k] = {
        PrettyName = "Custom Button String "..k,
        Style = "Text",
        Color = { 255, 255, 255 },
        Position = { 531, v },
        Size = { 221, 30 },
        TextFontSize = Constants.SMALL_TEXT_SIZE,
        StrokeColor = { 105, 105, 105 },
        StrokeWidth = 1,
        Margin = 2
      }
    end
  
  
    -- Build Symbol Buttons
  
    for k,v in pairs(SymbolButtonBuildOrder) do
      layout[k] = {
        PrettyName = v.PrettyName,
        Style = "Button",
        Size = Constants.STANDARD_BTN_SIZE,
        Position = GetSymbolButtonPosition(v.Index, Constants.SYMBOL_BTN_OFFSET[v.Row]),
        CornerRadius = 2,
        StrokeWidth = 1,
        Margin = 2,
        Legend = v.Legend,
        TextFontSize = Constants.TEXT_SIZE
      }
    end
  
    layout["SYM-Carrot"] = {
      PrettyName = "Symbols~Carrot",
      Style = "Button",
      Size = {80, 40},
      Position = {15, 448},
      CornerRadius = 2,
      StrokeWidth = 1,
      Margin = 2,
      Legend = "^",
      TextFontSize = Constants.TEXT_SIZE
    }
  
    layout["SYM-GreaterThan"] = {
      PrettyName = "Symbols~Greater Than",
      Style = "Button",
      Size = {80, 40},
      Position = {375, 448},
      CornerRadius = 2,
      StrokeWidth = 1,
      Margin = 2,
      Legend = ">",
      TextFontSize = Constants.TEXT_SIZE
    }
  
    -- Build Keypad Buttons
  
    for k,v in pairs(KeypadButtonBuildOrder) do
      layout[k] = {
        PrettyName = v.PrettyName,
        Style = "Button",
        Size = Constants.STANDARD_KEYPAD_BTN_SIZE,
        Position = GetKeypadButtonPosition(v.Index, Constants.KEYPAD_BTN_OFFSET[v.Row]),
        CornerRadius = 2,
        StrokeWidth = 1,
        Margin = 2,
        Legend = v.Legend,
        TextFontSize = Constants.TEXT_SIZE
      }
    end
  
    layout["KP-0"] = {
      PrettyName = "Keypad~0",
      Style = "Button",
      Size = {120, 50},
      Position = {632, 303},
      CornerRadius = 2,
      StrokeWidth = 1,
      Margin = 2,
      Legend = "0",
      TextFontSize = Constants.TEXT_SIZE
    }



    layout["password1"] = {
      PrettyName = "pass1",
      Style = "Text",
      Color = { 245, 245, 245 },
      Position = { 80, 530 },
      Size = { 100, 20 },
      TextFontSize = 18,
      --StrokeColor = { 105, 105, 105 },
      --StrokeWidth = 1,
      --Margin = 2
    }
    table.insert(graphics, {
      Type = "Text",
      Text = "Password 1",
      Position = {0, 530},
      HTextAlign = "Right",
      Size = {70, 16},
      FontSize = 12
    })
    layout["passaction1"] = {
      PrettyName = "p1",
      Style = "Button",
      Position = {0,510},
      Size = {1,1}
    }

    layout["password2"] = {
      PrettyName = "pass2",
      Style = "Text",
      Color = { 245, 245, 245 },
      Position = { 80, 550 },
      Size = { 100, 20 },
      TextFontSize = 18,
      --StrokeColor = { 105, 105, 105 },
      --StrokeWidth = 1,
      --Margin = 2
    }
    table.insert(graphics, {
      Type = "Text",
      Text = "Password 2",
      Position = {0, 550},
      HTextAlign = "Right",
      Size = {70, 16},
      FontSize = 12
    })
    layout["passaction2"] = {
      PrettyName = "p2",
      Style = "Button",
      Position = {0,510},
      Size = {1,1}
    }

    layout["testbtn1"] = {
      PrettyName = " ",
      Style = "Button",
      Size = {30, 20},
      Position = {15, 575},
      Legend = "btn1",
      TextFontSize = 12
    }
    layout["testbtn2"] = {
      PrettyName = " ",
      Style = "Button",
      Size = {30, 20},
      Position = {40, 575},
      Legend = "btn2",
      TextFontSize = 12
    }


    