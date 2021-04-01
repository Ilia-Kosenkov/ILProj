# ILProj
IL Project Templates

This repository contains two dotnet project templates supporting `IL`.
Projects are arranged into a NuGet packaged that can be easily consumed.

## Usage
Once `*.nupkg` is available, `dotnet new -i <path_to_nupkg>` adds templates to the current dotnet installation 
(see [MSDN docs](https://docs.microsoft.com/en-us/dotnet/core/install/templates) for details).

```
dotnet new ilclasslib
```
creates a default library project targeting `netstandard2.0` with a sample code.
It can be immediately built using `dotnet build`.
Note: currently `*.ilproj` cannot be added to an existing solution file using `dotnet sln add <proj_ref>`, see 
[dotnet/sdk#16690](https://github.com/dotnet/sdk/issues/16690).


```
dotnet new ilconsole
```
creates a default console porject targeting `net5.0` with a sample code printing "Hello world!".


