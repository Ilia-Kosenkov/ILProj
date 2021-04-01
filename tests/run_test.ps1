mkdir Tests
dotnet new ilconsole -o Tests/ILConsole
dotnet new ilclasslib -o Tests/ILClassLib
dotnet add Tests/ILConsole/ILConsole.ilproj reference Tests/ILClassLib/ILClassLib.ilproj

$content = Get-Content Tests/ILConsole/main.il

[System.String[]]$result = @()

foreach($item in $content) 
{
    if ($item.Contains(".assembly ILConsole")) 
    {
        $result += ".assembly extern ILClassLib"
        $result += "{"
        $result += "`t.ver 1:0:0:0"
        $result += "}"
        $result += ""
    }
    if ($item.Contains("ldstr")) 
    {
        $result += "`tcall int32 [ILClassLib]ILClassLib.Library::GetAnswer()"
        $result += "`tcall void [System.Console]System.Console::WriteLine(int32)"
    }

    $result += $item
}

$result > Tests/ILConsole/main.il

$output = dotnet run --project Tests/ILConsole/ILConsole.ilproj -c Release -v quiet

if ($($output -join ";") -ne "42;Hello world!") 
{
    throw "Incorrect output. Got: '$output'"
}