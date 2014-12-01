# Class: sysbuild
#
# This module manages sysbuild
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class sysbuild {


    case $::operatingsystem{
      'windows':{
        include sysbuild::windows
        
      }
      'CentOS':{
        include sysbuild::centos
        
      }
      default:{
        
      }
    }  
  


}