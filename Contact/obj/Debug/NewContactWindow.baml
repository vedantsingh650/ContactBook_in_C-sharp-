   M S B A M L   `   `   `  ����B  >Contact, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:ContactContact  5   	       Contact.NewContactWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Contact     5   	     � Title$  NewContactWindow��5   	   $	��450��6"   $	��450��6/   .��5	      � $��
0,0,-6.8,0q�6    � ColumnDefinitions 5
   
   �� 5      $��0* �6   �� 5      $��0* �6   �� 5      $��0* �6   �� 5      $��0* �6   �� 5      $	��97* �6   �� 5      $
��397* �6   .+�5   
   �� $��SAVE NEW CONTACT��6   $
��Left=�6+   $��71.2,34,0,0q�6F   $	��Top=�6[    J� RenderTransformOrigin$ -0.176,-0.474&�6s   $	��157��6�   $��5��6�   �� 5   
   -   5         ��Name$ nameBox��5      $
��Left=�6#   $��23��6>   $��193.2,98,0,0q�6J    �� TextWrapping$
 Wrap=�6`   $	��Top=�6t   $	��120��6�   $��5��6�   �� 5   
   -   5        $ emailBox��5      $
��Left=�6$   $��23��6?   $��193.2,152,0,0q�6K   $
 Wrap=�6b   $	��Top=�6v   $	��120��6�   $��5��6�   �� 5   
   -   5        $ phoneBox��5       �� 	MaxLength$ 10��6%   $
��Left=�64   $��23��6O   $��193.2,207,0,0q�6[   $
 Wrap=�6r   $	��Top=�6�   $	��120��6�   $��5��6�   �� 5   
   $
��Name��6   $
��Left=�6   $��	39,98,0,0q�6:   $	��Top=�6M   $��99��6e   $��31��6p   $��6��6|   �� 5   
   $��Email��6   $
��Left=�6    $��
39,152,0,0q�6;   $	��Top=�6O   $ 
0.26,2.585&�6g   $��99��6�   $��6��6�   �� 5   
   $��Phone��6   $
��Left=�6!   $��
39,212,0,0q�6<   $	��Top=�6P   $��99��6h   $��6��6s   �� 5   
   -   5         ��Name$ Save_Button��5       $
��SAVE��6   $
��Left=�5      $��89.2,313,0,0q�5      $	��Top=�5      $��75��5      $��5��6   5       5!      