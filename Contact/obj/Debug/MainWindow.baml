   M S B A M L   `   `   `  ����B  >Contact, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:ContactContact  5   	       Contact.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Contact     5   	     � Title$  Contact List��5   	   $	��450��6   $	��500��6+   .��5	      �� .+�5
   
   � .+�5      �� $��EMAIL��6   $��28��6%   $��87��61   �� 5      $
��NAME��6   $��28��6$   $��52,0,378.6,0q�60   �� 5      $��PHONE��6   $��28��6%   $��87��61   $��343,0,63.6,0q�6<   5      � 5   
    � ColumnDefinitions 5      �� 5      $	��61* �6#   �� 5      $
��433* �6#   .+�5      �� -   5        $��New Contact��5   -   $
��Left=�6C   $��243.2,342,0,0q�6^   $	��Top=�6u   $��91��6�   $��1��6�   �� 5      -   5         ��Name$ contactListview��5      $
��Left=�6_   $	��299��6z   $��	10,26,0,0q�6�   $	��Top=�6�   $	��474��6�   $��2��6�   ��5      �� 5      .R�5      � .+�5      �� 
���� K�$
��Left=�6Q   $��	49,12,0,0q�6l   $	��Top=�6   $��28��6�   $��87��6�   ��6$   �� *Name+6�   �� 5      $��Oblique$�6>   $
��Left=�6R   $��
190,12,0,0q�6m   $	��Top=�6�    J� RenderTransformOrigin$ 4.362,-0.108&�6�   $	��100��6�   $��28��6�   ��6$   �� *Email+6�   �� 5      $
��Left=�6>   $��
318,12,0,0q�6Y   $	��Top=�6m   $��34��6�   $��84��6�   ��6$   �� *phone+6�   5      5      5"      �� 5#      -   5        $��2��5#   7   $
��Left=�6K   $��23��6f    �� TextWrapping$
 Wrap=�6r   $	��Top=�6�   $	��120��6�   $��
22,338,0,0q�6�   5%      5&      5(      