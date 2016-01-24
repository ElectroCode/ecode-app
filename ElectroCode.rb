#! /usr/bin/env ruby
$:.unshift File.dirname($0)

require "Qt4"

require "about"
require "menubar"



class MainWindow < Qt::MainWindow
  slots "about_message()"
  def initialize
    super
    setWindowTitle "ElectroCode App "
    init_ui

    resize 330, 170
    move 300, 300
    show
  end

  def init_ui
    vbox = Qt::VBoxLayout.new
    hbox = Qt::HBoxLayout.new

    menubar

  end

end


## EXEC
app = Qt::Application.new(ARGV)
MainWindow.new()
app.exec()
