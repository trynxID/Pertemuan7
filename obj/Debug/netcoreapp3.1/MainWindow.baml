   M S B A M L   `   `   `  ����F  BStudentForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:StudentFormStudentForm  5   	       StudentForm.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:StudentForm     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � SizeToContent$ Width=�5	   	    � Title$ 
21.11.4484��5
   	   $	��500��6   $	��600��6)   .��5      � .+�5   
   �� $
��Left=�6   $��	10,16,0,0q�6+   $��Student Form��6>   $	��Top=�6V   $��14(�6n   �� 5   
   $
��Left=�6   $��	10,50,0,0q�6+   $
��Name��6>   $	��Top=�6M   $��14(�6e   �� 5   
   $
��Left=�6   $��	10,84,0,0q�6+   $	��Age��6>   $	��Top=�6L   $��14(�6d   �� 5   
   $
��Left=�6   $��
10,120,0,0q�6+   $��Address��6?   $	��Top=�6Q   $��14(�6i   �� 5   
   $
��Left=�6   $��
10,156,0,0q�6+   $��Contact��6?   $	��Top=�6Q   $��14(�6i   �� 5   
   -   5         ��Name$ txtNama��5      $
��Left=�6#   $��
120,55,0,0q�6>    �� TextWrapping$
 Wrap=�6R   $	��Top=�6f   $	��300��6~   $��14(�6�   �� 5   
   -   5        $ txtAge��5      $
��Left=�6"   $��
120,89,0,0q�6=   $
 Wrap=�6Q   $	��Top=�6e   $��60��6}   $��0��6�   $��14(�6�   �� 5   
   -   5        $ 
txtAddress��5      $
��Left=�6&   $��120,125,0,0q�6A   $
 Wrap=�6V   $	��Top=�6j   $	��300��6�   $��14(�6�   �� 5   
   -   5        $ 
txtContact��5      $
��Left=�6&   $��120,161,0,0q�6A   $
 Wrap=�6V   $	��Top=�6j   $	��300��6�   $��14(�6�   &   System.Windows.Controls.DataGrid  5   
   -   5        $��
dgStudents��5         AutoGenerateColumns$ False��6%   $��10,242,10,10q�6A   
�������   CanUserAddRows$ False��6j      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Name��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$		 180 6L   
   
IsReadOnly$

 True��6X   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *Name+6X     5      $	 Age��6%   $	 50 6J   $

 True��6U    62   �� *Age+6U     5      $ Address��6%   $		 155 6R   $

 True��6^    66   �� *	Address+6^     5      $ Contact��6%   $		 100 6R   $

 True��6^    66   �� *	Contact+6^   4  .System.Windows.Controls.DataGridTemplateColumn  5      $	 50 6)   $
 False��64      CellTemplate 5      �� 5      .R�5      ��  ��Name$ buttonSelect��66   -   5        $��Select��5   %   6L   5      5!        5"      $	 50 6)   $
 False��64    5#      �� 5$      .R�5%      �� $ buttonDelete��66   -   5        $��Delete��5%   %   6L   5&      5(      5+      �� 5,   
   -   5        $ 
ButtonSave��5,       $
��Save��6   $
��Left=�64   $��412,198,0,0q�6O   $	��Top=�6d   $��30��6|   $��80��6�   6�   �� 5-   
   -	   5        $ ButtonCancel��5-   "   $��Cancel��6   $
��Left=�68   $��497,198,0,0q�6S   $	��Top=�6h   $��80��6�   $��30��6�   $��Center=�6�   6�   51      52      