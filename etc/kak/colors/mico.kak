# Minimal Colorscheme

# Builtin
set-face global Default            default,default
set-face global PrimarySelection   default,blue+fg
set-face global SecondarySelection default,blue+fg
set-face global PrimaryCursor      default,default+rfg
set-face global SecondaryCursor    blue,default+rfg
set-face global PrimaryCursorEol   @PrimaryCursor
set-face global SecondaryCursorEol @SecondaryCursor
set-face global MenuForeground     blue,default+b
set-face global MenuBackground     blue,default
set-face global MenuInfo           blue,default
set-face global Information        default,blue
set-face global Error              red,default+b
set-face global StatusLine         @Default
set-face global StatusLineMode     red
set-face global StatusLineInfo     blue
set-face global StatusLineValue    red
set-face global StatusCursor       @PrimaryCursor
set-face global Prompt             yellow+b
set-face global BufferPadding      blue,default+fg

# Builtin Highlighters
#set-face global LineNumbers
#set-face global LineNumberCursor
#set-face global LineNumbersWrapped
#set-face global MatchingChar
set-face global Whitespace         @BufferPadding
set-face global WrapMarker         @BufferPadding

# code
set-face global value              red
set-face global string             @value

set-face global comment            green
set-face global documentation      @comment

set-face global attribute          @Default
set-face global type               @Default
set-face global variable           @Default
set-face global module             @Default
set-face global function           @Default
set-face global keyword            @Default
set-face global operator           @Default
set-face global meta               @Default
set-face global builtin            @Default

# markup
#set-face global title
#set-face global header
#set-face global mono
#set-face global block
#set-face global link
#set-face global bullet
#set-face global list
