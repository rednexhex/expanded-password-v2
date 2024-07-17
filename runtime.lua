function string.append(source, str)
  local msg
  if string.IsNullOrEmpty(source) == false then
    msg = source..str
  else
    msg = str
  end
  
  return msg
end

function string.starts(s, prefix)
  return string.sub(s, 1, string.len(prefix)) == prefix
end

function string.IsNullOrEmpty(s)
  if s == nil or s == "" then
    return true
  else
    return false
  end
end


KeyboardLetterMap = {
  { Control = Controls["KB-Q"], Value = "q", ShiftValue = "Q" },
  { Control = Controls["KB-W"], Value = "w", ShiftValue = "W" },
  { Control = Controls["KB-E"], Value = "e", ShiftValue = "E" },
  { Control = Controls["KB-R"], Value = "r", ShiftValue = "R" },
  { Control = Controls["KB-T"], Value = "t", ShiftValue = "T" },
  { Control = Controls["KB-Y"], Value = "y", ShiftValue = "Y" },
  { Control = Controls["KB-U"], Value = "u", ShiftValue = "U" },
  { Control = Controls["KB-I"], Value = "i", ShiftValue = "I" },
  { Control = Controls["KB-O"], Value = "o", ShiftValue = "O" },
  { Control = Controls["KB-P"], Value = "p", ShiftValue = "P" },
  { Control = Controls["KB-A"], Value = "a", ShiftValue = "A" },
  { Control = Controls["KB-S"], Value = "s", ShiftValue = "S" },
  { Control = Controls["KB-D"], Value = "d", ShiftValue = "D" },
  { Control = Controls["KB-F"], Value = "f", ShiftValue = "F" },
  { Control = Controls["KB-G"], Value = "g", ShiftValue = "G" },
  { Control = Controls["KB-H"], Value = "h", ShiftValue = "H" },
  { Control = Controls["KB-J"], Value = "j", ShiftValue = "J" },
  { Control = Controls["KB-K"], Value = "k", ShiftValue = "K" },
  { Control = Controls["KB-L"], Value = "l", ShiftValue = "L" },
  { Control = Controls["KB-Z"], Value = "z", ShiftValue = "Z" },
  { Control = Controls["KB-X"], Value = "x", ShiftValue = "X" },
  { Control = Controls["KB-C"], Value = "c", ShiftValue = "C" },
  { Control = Controls["KB-V"], Value = "v", ShiftValue = "V" },
  { Control = Controls["KB-B"], Value = "b", ShiftValue = "B" },
  { Control = Controls["KB-N"], Value = "n", ShiftValue = "N" },
  { Control = Controls["KB-M"], Value = "m", ShiftValue = "M" }
}

KeyboardNumberMap = {
  { Control = Controls["KB-Num-1"], Value = "1", ShiftValue = "!" },
  { Control = Controls["KB-Num-2"], Value = "2", ShiftValue = "@" },
  { Control = Controls["KB-Num-3"], Value = "3", ShiftValue = "#" },
  { Control = Controls["KB-Num-4"], Value = "4", ShiftValue = "$" },
  { Control = Controls["KB-Num-5"], Value = "5", ShiftValue = "%" },
  { Control = Controls["KB-Num-6"], Value = "6", ShiftValue = "^" },
  { Control = Controls["KB-Num-7"], Value = "7", ShiftValue = "&" },
  { Control = Controls["KB-Num-8"], Value = "8", ShiftValue = "*" },
  { Control = Controls["KB-Num-9"], Value = "9", ShiftValue = "(" },
  { Control = Controls["KB-Num-0"], Value = "0", ShiftValue = ")" },
}

KeyboardSymbolMap = {
  { Control = Controls["KB-Accent"], Value = "`", ShiftValue = "~" },
  { Control = Controls["KB-Minus"], Value = "-", ShiftValue = "_" },
  { Control = Controls["KB-Equals"], Value = "=", ShiftValue = "+" },
  { Control = Controls["KB-LeftBracket"], Value = "[", ShiftValue = "{" },
  { Control = Controls["KB-RightBracket"], Value = "]", ShiftValue = "}" },
  { Control = Controls["KB-Semicolon"], Value = ";", ShiftValue = ":" },
  { Control = Controls["KB-Apostrophe"], Value = "\'", ShiftValue = "\"" },
  { Control = Controls["KB-Comma"], Value = ",", ShiftValue = "<" },
  { Control = Controls["KB-Period"], Value = ".", ShiftValue = ">" },
  { Control = Controls["KB-ForwardSlash"], Value = "/", ShiftValue = "?" },
  { Control = Controls["KB-Backslash"], Value = "\\", ShiftValue = "|" }
}

SymbolMap = {
  { Control = Controls["SYM-Minus"], Value = "-"},
  { Control = Controls["SYM-ForwardSlash"], Value = "/"},
  { Control = Controls["SYM-Colon"], Value = ":"},
  { Control = Controls["SYM-Semicolon"], Value = ";"},
  { Control = Controls["SYM-LeftParenthesis"], Value = "("},
  { Control = Controls["SYM-RightParenthesis"], Value = ")"},
  { Control = Controls["SYM-Dollar"], Value = "$"},
  { Control = Controls["SYM-Ampersand"], Value = "&"},
  { Control = Controls["SYM-At"], Value = "@"},
  { Control = Controls["SYM-Quotation"], Value = "\""},
  { Control = Controls["SYM-Tilde"], Value = "~"},
  { Control = Controls["SYM-Percent"], Value = "%"},
  { Control = Controls["SYM-Comma"], Value = ","},
  { Control = Controls["SYM-Question"], Value = "?"},
  { Control = Controls["SYM-Exclamation"], Value = "!"},
  { Control = Controls["SYM-Apostrophe"], Value = "\'"},
  { Control = Controls["SYM-LeftBracket"], Value = "["},
  { Control = Controls["SYM-RightBracket"], Value = "]"},
  { Control = Controls["SYM-LeftCurlyBrace"], Value = "{"},
  { Control = Controls["SYM-RightCurlyBrace"], Value = "}"},
  { Control = Controls["SYM-Pound"], Value = "#"},
  { Control = Controls["SYM-Period"], Value = "."},
  { Control = Controls["SYM-Star"], Value = "*"},
  { Control = Controls["SYM-Plus"], Value = "+"},
  { Control = Controls["SYM-Equals"], Value = "="},
  { Control = Controls["SYM-Underscore"], Value = "_"},
  { Control = Controls["SYM-Backslash"], Value = "\\"},
  { Control = Controls["SYM-Line"], Value = "|"},
  { Control = Controls["SYM-LessThan"], Value = "<"},
  { Control = Controls["SYM-GreaterThan"], Value = ">"},
  { Control = Controls["SYM-Carrot"], Value = "^"},
}

KeypadMap = {
  { Control = Controls["KP-1"], Value = "1"},
  { Control = Controls["KP-2"], Value = "2"},
  { Control = Controls["KP-3"], Value = "3"},
  { Control = Controls["KP-4"], Value = "4"},
  { Control = Controls["KP-5"], Value = "5"},
  { Control = Controls["KP-6"], Value = "6"},
  { Control = Controls["KP-7"], Value = "7"},
  { Control = Controls["KP-8"], Value = "8"},
  { Control = Controls["KP-9"], Value = "9"},
  { Control = Controls["KP-0"], Value = "0"},
}


KeyboardTextOut = Controls.KeyboardTextOut
KeyboardTextIn = Controls.KeyboardTextIn
Clear = Controls.Clear
Backspace = Controls.Backspace
Enter = Controls.Enter
EnterLock = Controls.EnterLock
Shift = Controls.Shift
CapsLock = Controls.CapsLock

HOLD_TIME = 1
REPEAT_TIME = 0.5
LastKey = ""
LastControl = nil

HoldTimer = Timer.New()

CustomButton = {
  { Control = Controls.CustomButton[1], Value = "" },
  { Control = Controls.CustomButton[2], Value = "" },
  { Control = Controls.CustomButton[3], Value = "" },
  { Control = Controls.CustomButton[4], Value = "" }
}

CustomButtonString = {
  Controls.CustomButtonString[1],
  Controls.CustomButtonString[2],
  Controls.CustomButtonString[3],
  Controls.CustomButtonString[4],
}


HoldTimer.EventHandler = function ()
  if LastControl ~= nil then
    if LastControl.Boolean then
      if (LastKey == "Backspace") then
        DoBackspace()
      else
        AppendText(LastKey)
      end
      HoldTimer:Start(REPEAT_TIME)
    else
      HoldTimer:Stop()
    end
  end
end

function passaction(str)
    if str == passstore[1] then
       print("pass1")
       Controls.passaction1.Boolean = true
       KeyboardTextIn.String = ""
       Timer.CallAfter(function()
       Controls.passaction1.Boolean = false
       end,1)
  elseif str == passstore[2] then
       print("pass2")
       Controls.passaction2.Boolean = true
       KeyboardTextIn.String = ""
       Timer.CallAfter(function()
       Controls.passaction2.Boolean = false
       end,1)
    end
  end              
     

function AppendText(s)
  KeyboardTextIn.String = string.append(KeyboardTextIn.String, s)
  
  if (EnterLock.Boolean) then
    KeyboardTextOut.String = KeyboardTextIn.String
  end
end

function DoBackspace()
  KeyboardTextIn.String = string.sub(KeyboardTextIn.String, 1, (string.len(KeyboardTextIn.String) - 1))

  if (EnterLock.Boolean) then
    KeyboardTextOut.String = KeyboardTextIn.String
  end
end


for k,v in ipairs(CustomButtonString) do
  v.EventHandler = function (ctl)
    if (string.IsNullOrEmpty(ctl.String) == false) then
      CustomButton[k].Control.Legend = ctl.String
      CustomButton[k].Value = ctl.String
    else
      CustomButton[k].Control.Legend = "Custom Button\x0A"..k
      CustomButton[k].Value = ""
    end
  end
end

for k,v in ipairs(CustomButton) do
  v.Control.EventHandler = function (ctl)
    if (ctl.Boolean) then
      if (string.IsNullOrEmpty(v.Value) == false) then
        AppendText(v.Value)
        LastKey = v.Value
        LastControl = ctl
        HoldTimer:Start(HOLD_TIME)
      end
    end
  end
end

for k,v in pairs(KeyboardLetterMap) do
  v.Control.EventHandler = function (ctl)
    if ctl.Boolean then
      if ((CapsLock.Boolean and Shift.Boolean) or (CapsLock.Boolean == false and Shift.Boolean == false)) then
        AppendText(v.Value)
      elseif ((CapsLock.Boolean and Shift.Boolean == false) or (CapsLock.Boolean == false and Shift.Boolean)) then
        AppendText(v.ShiftValue)
      end
      
      if (CapsLock.Boolean) then
        LastKey = v.ShiftValue
      else
        LastKey = v.Value
      end

      if (Shift.Boolean) then
        Shift.Boolean = false
      end

      LastControl = ctl
      HoldTimer:Start(HOLD_TIME)
    end
  end
end

for k,v in pairs(KeyboardNumberMap) do
  v.Control.EventHandler = function (ctl)
    if ctl.Boolean then
      if Shift.Boolean then
        AppendText(v.ShiftValue)
        Shift.Boolean = false
      else
        AppendText(v.Value)
      end

      LastKey = v.Value
      LastControl = ctl
      HoldTimer:Start(HOLD_TIME)

    end
  end
end

for k,v in pairs(KeyboardSymbolMap) do
  v.Control.EventHandler = function (ctl)
    if ctl.Boolean then
      if Shift.Boolean then
        AppendText(v.ShiftValue)
        Shift.Boolean = false
      else
        AppendText(v.Value)
      end

      LastKey = v.Value
      LastControl = ctl
      HoldTimer:Start(HOLD_TIME)

    end
  end
end

for k,v in pairs(SymbolMap) do
  v.Control.EventHandler = function (ctl)
    if ctl.Boolean then
      AppendText(v.Value)

      LastKey = v.Value
      LastControl = ctl
      HoldTimer:Start(HOLD_TIME)
    end
  end
end

for k,v in pairs(KeypadMap) do
  v.Control.EventHandler = function (ctl)
    if ctl.Boolean then
      AppendText(v.Value)

      LastKey = v.Value
      LastControl = ctl
      HoldTimer:Start(HOLD_TIME)
    end
  end
end

Controls.Clear.EventHandler = function (ctl)
  if ctl.Boolean then
    KeyboardTextIn.String = ""

    if EnterLock.Boolean then
      KeyboardTextOut.String = ""
    end
  end
end

Controls.Backspace.EventHandler = function (ctl)
  if ctl.Boolean then
    DoBackspace()

    LastKey = "Backspace"
    LastControl = ctl
    HoldTimer:Start(HOLD_TIME)
  end
end

Controls.Space.EventHandler = function (ctl)
  if ctl.Boolean then
    AppendText(" ")

    LastKey = " "
    LastControl = ctl
    HoldTimer:Start(HOLD_TIME)
  end
end

Controls.Enter.EventHandler = function (ctl)
  KeyboardTextOut.String = KeyboardTextIn.String
  currentpass = KeyboardTextOut.String
  passaction(currentpass)
end

-- Startup

for k,v in pairs(CustomButtonString) do
  if (string.IsNullOrEmpty(v.String) == false) then
    CustomButton[k].Control.Legend = v.String
    CustomButton[k].Value = v.String
  else
    CustomButton[k].Control.Legend = "Custom Button\x0A"..k
    CustomButton[k].Value = ""
  end
end

if (EnterLock.Boolean) then
  KeyboardTextOut.String = KeyboardTextIn.String
end


passstore = {}

Controls.password1.EventHandler = function()
         passstore[1] = Controls.password1.String
         print(passstore[1])
end 

Controls.password2.EventHandler = function()
         passstore[2] = Controls.password2.String
         print(passstore[2])
end 

Controls.testbtn1.EventHandler = function()
         print(passstore[1])
end 

Controls.testbtn2.EventHandler = function()
        print(passstore[2])
end

passstore[1] = Controls.password1.String
passstore[2] = Controls.password2.String