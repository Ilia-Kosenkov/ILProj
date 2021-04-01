.assembly extern netstandard
{
  .publickeytoken = (CC 7B 13 FF CD 2D DD 51 ) 
  .ver 2:0:0:0
}

.assembly ILClassLib
{
  .ver 1:0:0:0
}
.module ILClassLib.dll
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       
.corflags 0x00000001  

.class public abstract auto ansi sealed beforefieldinit ILClassLib.Library
  extends [netstandard]System.Object
{
  .method public hidebysig static int32 GetAnswer() cil managed
  {
    .maxstack 8
    ldc.i4.s 42
    ret
  }
}