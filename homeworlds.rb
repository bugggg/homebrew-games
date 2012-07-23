require 'formula'

class Homeworlds < Formula
  homepage 'https://github.com/Quuxplusone/Homeworlds/'
  url 'https://github.com/Quuxplusone/Homeworlds.git',
    :revision => 'd0543623d21663d075c64ba050f2eef54f679f5e'
  version '20120723'

  depends_on 'wxmac'
  depends_on :x11

  def install
    system 'make'
    bin.install "wxgui" => "homeworlds-wx"
    bin.install "annotate" => "homeworlds-cli"
  end
end
