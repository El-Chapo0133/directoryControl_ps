<#
    * ******************************************************************************************************
    * Author : Loris Levêque
    * Date : 20.11.2019
    * Description : Simple class that manage an AD directory
    * ******************************************************************************************************
    * Usage :
    * + instantiation
    *   $ $directoryControl = [DirectoryControl]::New()
    *   
    * + set Attribute
    *   $ $directoryControl.Attribute = value
    *   
    * + call functions
    *   $ $directoryControl.function(parameters)
    *
    * ******************************************************************************************************
#>

class DirectoryControl {
    ## @Name addAttributeToUser()
    ## @Desc Add an attribute to an ADUser
    ## @Param 
    ## 
    ## @Return {nil}
    [void] addAttributeToUser([string] userName, [string] attributeName, [string] attributeValue) {

    }
    ## @Name 
    ## @Desc 
    ## @Param 
    ## 
    ## @Return {nil}
    [void] addCustomAttribute([string] attributeName) {

    }
    ## @Name 
    ## @Desc 
    ## @Param 
    ## 
    ## @Return {nil}
    [void] importFromCSV([string] csvFileName) {

    }
    ## @Name 
    ## @Desc 
    ## @Param 
    ## 
    ## @Return {nil}
    [void] exportToCSV([string] outputDirectory) {

    }
    ## @Name 
    ## @Desc 
    ## @Param 
    ## 
    ## @Return {nil}
    [void] importFromLDF([string] ldfFileName) {

    }
    ## @Name 
    ## @Desc 
    ## @Param 
    ## 
    ## @Return {nil}
    [void] exportToLDF([string] outputDirectory) {

    }
    ## @Name tryPath()
    ## @Desc Test a path, return true or false from the result
    ## @Param [string]$path : the path to test
    ## 
    ## @Return {bool}
    [bool] tryPath([string] path) {
        if (Test-Path $path) {
            return true
        } else {
            return false
        }
    }
}



<#
    Template

    function header
    ## @Name 
    ## @Desc 
    ## @Param 
    ## 
    ## @Return {nil}
#>