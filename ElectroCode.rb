#! /usr/bin/env ruby
$:.unshift File.dirname($0)

require "Qt4"

class MainWindow < Qt::Widget
  def initialize(parent = nil)
    super
    setFixedSize(640, 480)

    ok = Qt::PushButton.new(tr("&Ok"), self)
    ok.setFont(Qt::Font.new("Times", 12))
    ok.setGeometry(500,420,40,40)
    connect(ok, SIGNAL("clicked()"), $qApp, SLOT("quit()"))

    cancel = Qt::PushButton.new(tr("&Cancel"), self)
    cancel.setFont(Qt::Font.new("Times", 12))
    cancel.setGeometry(545,420,60,40)
    connect(cancel, SIGNAL("clicked()"), $qApp, SLOT("quit()"))
  end
end
## EXEC
app = Qt::Application.new(ARGV)
window = MainWindow.new()
window.show()
app.exec()
