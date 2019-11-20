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
    ## @Param $userName[string] : The username of the user who needs to change some attribute
    ## @Param $attributeName[string] : the attribute name to set
    ## @Param $attributeValue[string] : the attribute value wanted
    ## 
    ## @Return {nil}
    [void] addAttributeToUser([string] userName, [string] attributeName, [string] attributeValue) {
        Set-ADUser -Identity $userName -Replace @($attributeName=$attributeValue)
    }
    ## @Name addCustomAttribute()
    ## @Desc Add a custom attribute to the AD db
    ## @Param $attributeName[string] : the name of the wanted attribute to add
    ## 
    ## @Return {nil}
    [void] addCustomAttribute([string] attributeName) {

    }
    ## @Name importFromCSV()
    ## @Desc import a csv file content to an AD db
    ## @Param $csvFileName[string] : the location of the wanted *.csv file
    ## 
    ## @Return {nil}
    [void] importFromCSV([string] csvFileName) {
        csvde -i -f $csvFileName
    }
    ## @Name exportToCSV()
    ## @Desc export the full AD directory into a *.csv file
    ## @Param $outputDirectory[string] : the wanted location where your *.csv file will be located
    ## @Param $outputFileName[string] : the wanted name of the file
    ## 
    ## @Return {nil}
    [void] exportToCSV([string] outputDirectory, [string] outputFileName) {
        csvde -f ($outputDirectory + $outputFileName)
    }
    ## @Name importFromLDF()
    ## @Desc import a ldf file content to an AD db
    ## @Param $ldfFileName[string] : the location of the wanted *.ldf file
    ## 
    ## @Return {nil}
    [void] importFromLDF([string] ldfFileName) {
        ldifde -i -f $ldfFileName
    }
    ## @Name exportToLDF()
    ## @Desc export the full AD directory into a *.ldf file
    ## @Param $outputDirectory[string] : the wanted location where your *.ldf file will be located
    ## @Param $outputFileName[string] : the wanted name of the file
    ## 
    ## @Return {nil}
    [void] exportToLDF([string] outputDirectory, [string] outputFileName) {
        ldifde -f ($outputDirectory + $outputFileName)
    }
    ## @Name invokeCommand()
    ## @Desc execute the script into a remoted pc
    ## @Param $computerName[string] : the name of the remoted computer
    ## @Param $script[string] : the script witch will be executed remotly
    ## 
    ## @Return {nil}
    [void] invokeCommand([string] computerName, [string] script) {
        Invoke-Command -ComputerName $computerName -ScriptBlock { $script }
    }
    ## @Name tryPath()
    ## @Desc Test a path, return true or false from the result
    ## @Param [string]$path : the path to test
    ## 
    ## @Return {bool} : result
    [bool] tryPath([string] path) {
        if (Test-Path $path) {
            return true
        } else {
            return false
        }
    }
}



<# Template

    function header
    ## @Name 
    ## @Desc 
    ## @Param 
    ## 
    ## @Return {nil}
#>