require 'puppet/type'
require 'tiny_tds'

Puppet::Type.type(:tds).provide :windows do
  #confine :feature => :microsoft_windows
  confine :operatingsystem => :windows
  defaultfor :operatingsystem => :windows


end
