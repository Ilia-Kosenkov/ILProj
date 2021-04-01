.assembly extern System.Runtime
{
  .ver 5:0:0:0
}
.assembly extern System.Console
{
  .ver 5:0:0:0
}

.assembly ILConsoleApp
{
  .ver 1:0:0:0
}
.module ILConsoleApp.dll
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       
.corflags 0x00000001  

.class public abstract auto ansi sealed beforefieldinit ILConsoleApp.Program
{
  .method public hidebysig static void Main() cil managed
  {
    .entrypoint
    .maxstack 1
    ldstr "Hello world!"
    call void [System.Console]System.Console::WriteLine(string)
    ret
  }

}