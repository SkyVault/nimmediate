import windy

when isMainModule:
  let window = newWindow("Nimmediate - DEMO", ivec2(1280, 720), true)
  window.makeContextCurrent()

  while not window.closeRequested:

    window.swapBuffers()
    pollEvents()