   M S B A M L   `   `   `  ����J  FGilfoyleBitcoin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:GilfoyleBitcoinGilfoyleBitcoin  5   	        GilfoyleBitcoin.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:GilfoyleBitcoin     5   	     � Title$  
MainWindow��5   	   $	��450��5	   	   $	��800��5
   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   .��5      �  J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         Color$ #d7d4d4��6      
BlurRadius$ 5Q�6/      	Direction$	 -90Q�6>      RenderingBias$ Quality=�6N   	   ShadowDepth$	 2Q�6f   .+�5   
   � -   5        
�������$��30��5   "   $	��top=�6.   .+�5      �� 
 �� Orientation$
 
Horizontal=�6   .+�5      �� $��Assets/gilfoyle.png��6   $��20��65   $��20��6@   $��5q�6L   5      �� 5      $
 
Horizontal=�6   $��Center=�62   $��Center=�6M   .+�5      �� $��SILICON VALLEY��6   ���#fd1000$��
Raiderfont)�6F   5      �� 5      $
 
Horizontal=�6   $��Right=�62   $��5q�6N   .+�5      �� -   5         ��Name$ 	btn_close��5      $��20��6,   $��20��67   $��0q�6C   ��6O   Z� ��6e   Z� .��5       �� $��Assets/error.png��6   5!      5"      5#      � 5%   
   $��0,30,0,0q�6   ���#f5f5f5.+�5&      �� $
 
Horizontal=�6   $��Center=�63   $��210,142,210,252q�6P   .+�5'      �� $&�� WHEN BITCOIN GOES BELOW OR ABOVE��6   $��
RaiderFont)�6C   ���#e95039$��18(�6p   $	��380��6~   5(      �� 5)      $
 
Horizontal=�6   $��Center=�62   $��Center=�6M   $��217,184,283,184q�6j   .+�5*      �� -   5         ��Name$ 	ValueUser��5*      $��10q�6-   $��25(�6:   $	��300��6H   $��
RaiderFont)�6T   .��6�    � 	Resources 5+       �� 
TargetType �� Property �� Value��%_   '��       �� 5,      " ��6    .�5-      ��  �@��CornerRadius$ 10��6=   5.      5/      .��6)   50      51      �� 52      -   5         ��Name$ bitcoins��52      $
��9625��6&   $
��Left=�65   $��494,335,0,0q�6P   $	��Top=�6e   $��
RaiderFont)�6}   $��20(�6�   �� 53      -   5        $
 text��53      $��CURRENT BITCOIN PRICE: $��6"   $
��Left=�6E   $��222,335,0,0q�6`   $	��Top=�6u   $��
RaiderFont)�6�   $��20(�6�   54      � 56   
   .+�58      d� -   5         d�Name$ toggle��58      $��527,215,222,184q�6+   ��59      �� 5:      " d�6   .�5;      ��  � ��$ ON��64   �� 5<       � �� �#43c67167   �� 5=       � �� 68   Z� �� 5>       � ��$ 
RaiderFont)�67   �� 5?       � ��
 �����67   �� 5@       � �� 5A      �� 5B   "    �� 
TargetType" d�62   .R�5C   &   �� #��z��6-   #��z��5D   !   ._�5E   *   �� $��Center=�6;   $��Center=�5F   /   5G   '   5H   #   5J       �� Triggers 5K      P� 5L       P� Property �@d�	IsChecked P� Value$
 trueY�6;   . �5M   "   ��  � ��$	 OFF��6<   �� 5N   "    � �� �#e950396?   �� 5O   "    � �� 6@   Z� �� 5P   "    � ��$ 
RaiderFont)�6?   �� 5Q   "    � ��
 �����6?   5R      5T       5V      ��%_   '��       �� 5W      " ��6   .�5X      ��  �@��CornerRadius$ 10��69   5Y      5Z      5[      5]      5a      5b      