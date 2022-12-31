import "chroma"

type
  Variant = enum
    primary
    secondary
    disabled
    error
    warning
    info

  Style = object of RootObj
    foreground, background: Color
    margin, padding: float
    variant: Variant

type
  Rect = object of RootObj
    x, y, width, height: float

  Base = object of Rect
    style: Style

  Gui = object
    nextId: int = 0

var gui = Gui()

proc nextId*(): int =
  inc gui.nextId
  result = gui.nextId


proc button*(label, uid: string): bool =
  discard
