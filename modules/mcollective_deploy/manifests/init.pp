# Class: mcollective_deploy
#
# This module manages mcollective_deploy
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class mcollective_deploy {

    case $::operatingsystem{
      'windows':{
        
      }
      'CentOS':{
        include mcollective_deploy::rhel
        
      }
      default:{
        
      }
    }  
  


}
