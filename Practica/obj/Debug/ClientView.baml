   M S B A M L   `   `   `  ????C  ?Practica, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:PracticaPractica  5          Practica.ClientView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:Practica     5      -   5          N? Title$  
ClientView??5	      .??5      ?  ? RowDefinitions 5   
   ?? 5      $??7* ?6   ?? 5      $??1* ?6   .+?5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DGridSaloon??5         AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Title??6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6R   1  +System.Windows.Controls.DataGridBoundColumn   Binding 64   ?? *	FirstName+6^     5      $ 	Last Name??6%   $ * 6U    68   ?? *
LastName+6a     5      $ 
Patronymic??6%   $ * 6X    69   ?? *
Patronymic+6d     5      $ Gender??6%   $ * 6U    65   ?? *Gender.Name+6a   4  .System.Windows.Controls.DataGridTemplateColumn  5      $
 auto 6)   	   CellTemplate	 5      ?? 5      .R?5      ?? $??BtnEdit??6=   -   5        $ ??Редактировать??5   %   6d   5      5      5      ?? 5   
   -   5        $??BtnAdd??5   K   $	??5pxq?6   $??Добавить??6   $??2??61   $
??75px??6>   6p   ?? 5    
   -   5        $??BtnDel??5    e   $	??5pxq?6   $??Удалить??6   $??2??60   $
??75px??6=   $
??Left=?6J   6?   ?? 5!   
   -   5        $??BtnBackToMain??5!   d   $	??5pxq?6   $??
Назад??6   $??1??6.   $
??75px??6;   $??right=?6H   6?   5#      5$      