#! /usr/bin/env ruby
$:.unshift File.dirname($0)

require "Qt4"

require "buttons"

class MainWindow < Qt::Widget
  slots 'on_changed(QString)'

  def initialize(parent = nil)
    super
    setFixedSize(640, 480)

    set_window_title "ElectroCode "
    init_ui

    show
  end
  def init_ui
    @label = Qt::Label.new self
    ok()
    cancel()

    layout = Qt::VBoxLayout.new()
    layout.addWidget(ok)
    layout.addWidget(cancel)
    #layout.addWidget()
    setLayout(layout)
  end

  def on_changed text
    @label.setText text
    @label.adjustSize
  end

end


## EXEC
app = Qt::Application.new(ARGV)
MainWindow.new()
app.exec()
