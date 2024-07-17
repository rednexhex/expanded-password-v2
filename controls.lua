
table.insert(ctrls, {
  Name = "KeyboardTextIn",
  ControlType = "Indicator",
  IndicatorType = "Text",
  UserPin = true,
  PinStyle = "Input",
  Count = 1
})

table.insert(ctrls, {
  Name = "KeyboardTextOut",
  ControlType = "Indicator",
  IndicatorType = "Text",
  UserPin = true,
  PinStyle = "Output",
  Count = 1
})

-- Build standard sized keyboard buttons

for k,_ in pairs(StandardButtonBuildOrder) do
  table.insert(ctrls, {
    Name = k,
    ControlType = "Button",
    ButtonType = "Momentary",
    UserPin = true,
    PinStyle = "Both",
    Count = 1
  })
end

-- Build other keyboard buttons

table.insert(ctrls, {
  Name = "KB-Backslash",
  ControlType = "Button",
  ButtonType = "Momentary",
  UserPin = true,
  PinStyle = "Both",
  Count = 1
})

table.insert(ctrls, {
  Name = "Clear",
  ControlType = "Button",
  ButtonType = "Momentary",
  UserPin = true,
  PinStyle = "Both",
  Count = 1
})

table.insert(ctrls, {
  Name = "CapsLock",
  ControlType = "Button",
  ButtonType = "Toggle",
  UserPin = true,
  PinStyle = "Both",
  Count = 1
})

table.insert(ctrls, {
  Name = "Shift",
  ControlType = "Button",
  ButtonType = "Toggle",
  UserPin = true,
  PinStyle = "Both",
  Count = 1
})

table.insert(ctrls, {
  Name = "Enter",
  ControlType = "Button",
  ButtonType = "Momentary",
  UserPin = true,
  PinStyle = "Both",
  Count = 1
})

table.insert(ctrls, {
  Name = "EnterLock",
  ControlType = "Button",
  ButtonType = "Toggle",
  UserPin = true,
  PinStyle = "Both",
  Count = 1
})

table.insert(ctrls, {
  Name = "Backspace",
  ControlType = "Button",
  ButtonType = "Momentary",
  UserPin = true,
  PinStyle = "Both",
  Count = 1
})

table.insert(ctrls, {
  Name = "Space",
  ControlType = "Button",
  ButtonType = "Momentary",
  UserPin = true,
  PinStyle = "Both",
  Count = 1
})

-- Build Custom Buttons

table.insert(ctrls, {
  Name = "CustomButton",
  ControlType = "Button",
  ButtonType = "Momentary",
  UserPin = true,
  PinStyle = "Both",
  Count = 4
})

table.insert(ctrls, {
  Name = "CustomButtonString",
  ControlType = "Text",
  UserPin = true,
  PinStyle = "Both",
  Count = 4
})


-- Build symbol buttons

for k,_ in pairs(SymbolButtonBuildOrder) do
  table.insert(ctrls, {
    Name = k,
    ControlType = "Button",
    ButtonType = "Momentary",
    UserPin = true,
    PinStyle = "Both",
    Count = 1
  })
end

table.insert(ctrls, {
  Name = "SYM-Carrot",
  ControlType = "Button",
  ButtonType = "Momentary",
  UserPin = true,
  PinStyle = "Both",
  Count = 1
})

table.insert(ctrls, {
  Name = "SYM-GreaterThan",
  ControlType = "Button",
  ButtonType = "Momentary",
  UserPin = true,
  PinStyle = "Both",
  Count = 1
})


-- Build keypad buttons

for k,_ in pairs(KeypadButtonBuildOrder) do
  table.insert(ctrls, {
    Name = k,
    ControlType = "Button",
    ButtonType = "Momentary",
    UserPin = true,
    PinStyle = "Both",
    Count = 1
  })
end

table.insert(ctrls, {
  Name = "KP-0",
  ControlType = "Button",
  ButtonType = "Momentary",
  UserPin = true,
  PinStyle = "Both",
  Count = 1
})

table.insert(ctrls, {
  Name = "password1",
  ControlType = "Text",
  sCount = 1
})
table.insert(ctrls, {
  Name = "passaction1",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 1
})

table.insert(ctrls, {
  Name = "password2",
  ControlType = "Text",
  sCount = 1
})
table.insert(ctrls, {
  Name = "passaction2",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 1
})


table.insert(ctrls, {
  Name = "testbtn1",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 1
})
table.insert(ctrls, {
  Name = "testbtn2",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 1
})


