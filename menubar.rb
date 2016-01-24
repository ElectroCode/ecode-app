def menubar
  file = menuBar().addMenu "&File"

  quit = Qt::Action.new "&Quit", self
  file.addAction quit



  rss = menuBar().addMenu "&RSS"

  feeds = rss.addMenu "&Feeds"

  tools = menuBar().addMenu "&Tools"


  help = menuBar().addMenu "&Help"

  about = Qt::Action.new "&About", self
  help.addAction about





  connect quit, SIGNAL("triggered()"), Qt::Application.instance, SLOT("quit()")

  connect about, SIGNAL("triggered()"), SLOT("about_message()")
end
