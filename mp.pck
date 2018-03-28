GDPC                                                                                 @   res://.import/fireball.png-5b97b465adba87b37a7ee71e6eb24e65.stex�g      �      ml��"4��doąL+<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�     �      �Q!����|M�@   res://.import/player.png-b12d81cacd41edd115dbd315254b5ad9.stex  �k      �      �-.v�qy���$���   res://Levels/Astilia.tscn   `            ?#��uR�l:� |=   res://Levels/Menu.tscn  p      �.      ��+5|�]��if6�   res://Scenes/Bullet.tscn <      T      X�c.�`���Z��    res://Scenes/GameManager.tscn   `?      �       �{���4)�y�\EG.   res://Scenes/Player.tscn@      u      o����I�ߠ�1�{,   res://Scripts/AstiliaLevelManager.gd.remap  p     6       Z�B<y�ӅesW>4��(   res://Scripts/AstiliaLevelManager.gdc   �C            �y�� ^����'�H���    res://Scripts/Bullet.gd.remap   �     )       0L��K���#�ѐ�3�   res://Scripts/Bullet.gdc�E      R      ]\��|�M5w������$   res://Scripts/GameManager.gd.remap  �     .       9ԉ�.�δF���fD�~    res://Scripts/GameManager.gdc    G      �      x%���8,�N�O+�#y   res://Scripts/Menu.gd.remap       '       l���A���gq��U4   res://Scripts/Menu.gdc  �I      �      2%�1 +N�ܑ}q���(   res://Scripts/NetworkManager.gd.remap   @      1       �8�dm��"饧5ڮ�    res://Scripts/NetworkManager.gdc�U      �      /�����	��;���b�i    res://Scripts/Player.gd.remap   �      )       <y;�9Y;�k��S�   res://Scripts/Player.gdcpa      F      ��C�:��.y�Iê�$   res://Sprites/fireball.png.import   Pi      �      ���,�,C�8;7���    res://Sprites/player.png.import      �      qB��G=�,`g�wv�   res://default_env.tres  �     
      �?�թ+Ev�/h�!b�   res://icon.png  �      �      �~dg`!����I�҃   res://icon.png.import   �     �      ��b��k��Y�B�   res://project.binary`.     \      ���hܝ��zyCWn��    [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/AstiliaLevelManager.gd" type="Script" id=1]
[ext_resource path="res://Scenes/GameManager.tscn" type="PackedScene" id=2]

[node name="Astilia" type="Node"]

script = ExtResource( 1 )

[node name="GameManager" parent="." index="0" instance=ExtResource( 2 )]

[node name="Positions" type="Node" parent="." index="1"]

[node name="Game" type="Node" parent="Positions" index="0"]

[node name="GamePos" type="Position2D" parent="Positions/Game" index="0"]

position = Vector2( 131.78, 115.876 )

[node name="Lobby" type="Node" parent="Positions" index="1"]

[node name="LobbyPos" type="Position2D" parent="Positions/Lobby" index="0"]

position = Vector2( 815.674, 524.849 )

[node name="Control" type="Control" parent="." index="2"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 40.0
margin_bottom = 40.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1

[node name="StartingMatchLabel" type="Label" parent="Control" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 444.0
margin_top = 69.0
margin_right = 565.0
margin_bottom = 83.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
text = "STARTING MATCH: "
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1


 [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Menu.gd" type="Script" id=1]

[sub_resource type="Theme" id=1]

_sections_unfolded = [ "Resource" ]

[node name="Menu" type="Control" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 40.0
margin_bottom = 40.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
script = ExtResource( 1 )

[node name="Panel" type="Panel" parent="." index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 1028.0
margin_bottom = 602.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1

[node name="GameTitle" type="Label" parent="Panel" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 138.0
margin_top = 76.0
margin_right = 325.0
margin_bottom = 93.0
rect_scale = Vector2( 4, 4 )
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
text = "Godot Wizards Battlegrounds"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Rect" ]

[node name="Main" type="Control" parent="Panel" index="1"]

editor/display_folded = true
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 40.0
margin_bottom = 40.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1

[node name="NameLabel" type="Label" parent="Panel/Main" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 321.0
margin_top = 285.0
margin_right = 363.0
margin_bottom = 302.0
rect_scale = Vector2( 2, 2 )
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
text = "Name:"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Rect" ]

[node name="NameLineEdit" type="LineEdit" parent="Panel/Main" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 404.0
margin_top = 286.0
margin_right = 708.0
margin_bottom = 314.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 1
size_flags_horizontal = 1
size_flags_vertical = 1
align = 1
max_length = 16
focus_mode = 2
context_menu_enabled = true
placeholder_alpha = 0.6
caret_blink = false
caret_blink_speed = 0.65
caret_position = 0

[node name="ConnectButton" type="Button" parent="Panel/Main" index="2"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 283.0
margin_top = 389.0
margin_right = 347.0
margin_bottom = 409.0
rect_scale = Vector2( 3, 3 )
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "Connect"
flat = false
align = 1
_sections_unfolded = [ "Rect" ]

[node name="HostButton" type="Button" parent="Panel/Main" index="3"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 537.0
margin_top = 389.0
margin_right = 601.0
margin_bottom = 409.0
rect_scale = Vector2( 3, 3 )
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "Host"
flat = false
align = 1
_sections_unfolded = [ "Rect" ]

[node name="SettingsButton" type="Button" parent="Panel/Main" index="4"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 954.0
margin_top = 573.0
margin_right = 1017.0
margin_bottom = 593.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "Settings"
flat = false
align = 1

[node name="SettingsPanel" type="Panel" parent="Panel/Main" index="5"]

visible = false
modulate = Color( 1, 1, 1, 0.966863 )
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 259.0
margin_top = 199.0
margin_right = 736.0
margin_bottom = 497.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
theme = SubResource( 1 )
_sections_unfolded = [ "Theme" ]
__meta__ = {
"_edit_group_": true
}

[node name="SettingsLabel" type="Label" parent="Panel/Main/SettingsPanel" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 150.0
margin_top = 38.0
margin_right = 201.0
margin_bottom = 52.0
rect_scale = Vector2( 3, 3 )
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
text = "Settings"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Rect" ]

[node name="ServerIpLabel" type="Label" parent="Panel/Main/SettingsPanel" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 32.0
margin_top = 107.0
margin_right = 93.0
margin_bottom = 121.0
rect_scale = Vector2( 2, 2 )
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
text = "Server IP:"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Rect" ]

[node name="ServerIpLineEdit" type="LineEdit" parent="Panel/Main/SettingsPanel" index="2"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 162.0
margin_top = 108.0
margin_right = 379.0
margin_bottom = 132.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 1
size_flags_horizontal = 1
size_flags_vertical = 1
max_length = 15
focus_mode = 2
context_menu_enabled = true
placeholder_alpha = 0.6
caret_blink = false
caret_blink_speed = 0.65
caret_position = 0

[node name="SetServerIPButton" type="Button" parent="Panel/Main/SettingsPanel" index="3"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 163.0
margin_top = 147.0
margin_right = 256.0
margin_bottom = 167.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "Set Server IP"
flat = false
align = 1

[node name="Lobby" type="Control" parent="Panel" index="2"]

visible = false
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 40.0
margin_bottom = 40.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1

[node name="LobbyPlayersList" type="ItemList" parent="Panel/Lobby" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 395.0
margin_top = 214.0
margin_right = 627.0
margin_bottom = 475.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = true
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
items = [  ]
select_mode = 0
allow_reselect = false
icon_mode = 1
fixed_icon_size = Vector2( 0, 0 )

[node name="lobbyPlayersLabel" type="Label" parent="Panel/Lobby" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 405.0
margin_top = 170.0
margin_right = 510.0
margin_bottom = 184.0
rect_scale = Vector2( 2, 2 )
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
text = "Players in lobby:"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Rect" ]

[node name="StartGameButton" type="Button" parent="Panel/Lobby" index="2"]

visible = false
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 415.0
margin_top = 507.0
margin_right = 511.0
margin_bottom = 527.0
rect_scale = Vector2( 2, 2 )
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "START GAME!"
flat = false
align = 1
_sections_unfolded = [ "Rect" ]

[node name="WaitingPlayersLabel" type="Label" parent="Panel/Lobby" index="3"]

visible = false
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 359.0
margin_top = 506.0
margin_right = 516.0
margin_bottom = 520.0
rect_scale = Vector2( 2, 2 )
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
text = "Waiting for other players"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Rect" ]

[node name="ErrorPopup" type="PopupDialog" parent="." index="1"]

editor/display_folded = true
visible = false
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 374.0
margin_top = 252.0
margin_right = 635.0
margin_bottom = 354.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
popup_exclusive = false

[node name="ErrorLabel" type="Label" parent="ErrorPopup" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 53.0
margin_top = 24.0
margin_right = 205.0
margin_bottom = 38.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
text = "Please enter your name"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1

[node name="OkButton" type="Button" parent="ErrorPopup" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 110.0
margin_top = 61.0
margin_right = 140.0
margin_bottom = 81.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "Ok"
flat = false
align = 1

[connection signal="pressed" from="Panel/Main/ConnectButton" to="." method="_on_ConnectButton_pressed"]

[connection signal="pressed" from="Panel/Main/HostButton" to="." method="_on_HostButton_pressed"]

[connection signal="pressed" from="Panel/Main/SettingsButton" to="." method="_on_SettingsButton_pressed"]

[connection signal="pressed" from="Panel/Main/SettingsPanel/SetServerIPButton" to="." method="_on_SetServerIPButton_pressed"]

[connection signal="pressed" from="Panel/Lobby/StartGameButton" to="." method="_on_StartGameButton_pressed"]

[connection signal="pressed" from="ErrorPopup/OkButton" to="." method="_on_OkButton_pressed"]


             [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/Bullet.gd" type="Script" id=1]
[ext_resource path="res://Sprites/fireball.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 22.0282, 14.3886 )

[node name="Bullet" type="Node"]

script = ExtResource( 1 )

[node name="KinematicBody2D" type="KinematicBody2D" parent="." index="0"]

input_pickable = false
collision_layer = 1
collision_mask = 1
collision/safe_margin = 0.08

[node name="Sprite" type="Sprite" parent="KinematicBody2D" index="0"]

scale = Vector2( 4, 4 )
texture = ExtResource( 2 )
_sections_unfolded = [ "Transform" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="KinematicBody2D" index="1"]

position = Vector2( -5.83978, 5.71563 )
scale = Vector2( 1, 1.367 )
shape = SubResource( 1 )


            [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/GameManager.gd" type="Script" id=1]

[node name="GameManager" type="Node"]

script = ExtResource( 1 )


    [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/Player.gd" type="Script" id=1]
[ext_resource path="res://Sprites/player.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 22.56, 50.4986 )

[node name="Player" type="Node" index="0"]

script = ExtResource( 1 )

[node name="PlayerBody" type="KinematicBody2D" parent="." index="0"]

editor/display_folded = true
input_pickable = false
collision_layer = 1
collision_mask = 1
collision/safe_margin = 0.08

[node name="Sprite" type="Sprite" parent="PlayerBody" index="0"]

scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 2 )
_sections_unfolded = [ "Transform" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="PlayerBody" index="1"]

position = Vector2( 6.95113, 5.0995 )
shape = SubResource( 1 )
_sections_unfolded = [ "Transform" ]


           GDSC            B      ���Ӷ���   �����������Ķ���   �������Ӷ���   ������������϶��   �����������Ҷ���   �������������Ķ�   ������Ŷ   ���Ӷ���   ������������Ŷ��   �����϶�   ��ն      GameManager                                   level_loaded                                                    	   *   
   1      3      4      :      ?      5TT7=�  �  LMTT=�  �  TTE3�  LMR�  �  �  �  &�  �  P�  P�  LMR�  �  P�  L�  M�  0TT3�	  LMR�  �
  L�  M�  0[ GDSC         
   ,      ���Ӷ���   �����϶�   �������Ӷ���   �����϶�   �������Ŷ���   ����׶��   �������������Ӷ�      KinematicBody2D                                                                        	   )   
   5TT7=�  �  LMTT3�  LMR�  0�  T3�  L�  MR�  �  P�  L�  L�  N�  MM�  0[              GDSC            j      ���Ӷ���   �����������Ӷ���   ������������Ŷ��   ��������Ŷ��   ƶ��   �������������Ķ�   ������Ŷ   �Ҷ�   �������Ӷ���   �����������������Ķ�   ���Ӷ���   �������Ӷ���   ��������������ض   �������Ӷ���   �������¶���   ��������Ҷ��   �����϶�      res://Scenes/Player.tscn      idk   
   PlayerBody    d                                                         (   	   0   
   7      @      P      ]      _      `      f      g      5TT7=�  ?LMTTD3�  L�  MR�  =�  �  )�  �  P�  R�  =�  �  H�  I�  �  �  P�  LM�  �  P�	  L�  M�  �  P�
  �6  L�  M�  �  P�  L�  MP�  �  L�  N�  M�  �  LMP�  LMP�  L�  M�  0TT3�  LMR�  �  0[         GDSC   )      T   �     ������ڶ   �������������¶�   �������Ӷ���   �������������ڶ�   ���������ڶ�   ����������ڶ   ����������������¶��   ����������ƶ   �����϶�   �������������Ķ�   ������¶   �����������϶���   ����Ķ��   ƶ��   ������Ŷ   �������۶���   ���Ӷ���   ������������������Ҷ   ���¶���   �������������Ҷ�   ����������������Ҷ��   �������������������Ҷ���   ���Ӷ���   ��������   ������¶   ���������Ӷ�   �������Ӷ���   �����������Ӷ���   ���������������Ӷ���   �������������������������Ҷ�   �����������������Ӷ�   ��������涶�    ����������������������������Ҷ��   ������������������������Ҷ��   �������������Ķ�   ���������������������Ҷ�   ����������Ķ   �������������������Ҷ���   ��������������������������Ҷ   �����������������Ŷ�   ��ն      Panel/Main/NameLineEdit       Panel/Main/SettingsPanel   
   Panel/Main        Panel/Lobby       Panel/Lobby/LobbyPlayersList   
   ErrorPopup        connection_succeeded      player_list_changed       update_lobby      connection_fail       connection_failed         server_disconnected    
   ErrorLabel        Disconnected from server!         Connection Failed!        StartGameButton       WaitingPlayersLabel       res://Levels/Astilia.tscn                          )   Panel/Main/SettingsPanel/ServerIpLineEdit      
   start_game                                       '      0      9   	   :   
   @      K      V      a      l      n      o      u      {      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *      +   	  ,     -     .     /     0     1      2   &  3   )  4   +  5   ,  6   2  7   :  8   @  9   C  :   I  ;   T  <   V  =   W  >   ]  ?   h  @   j  A   k  B   q  C   w  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   5TT7=�  �  LMT7=�  �  L�  MT7=�  �  L�  MT7=�  �  L�  MT7=�  �  L�  MT7=�  �  L�  MTT3�  LMR�  �	  P�
  L�  NN�  M�  �	  P�
  L�  NN�  M�  �	  P�
  L�	  NN�
  M�  �	  P�
  L�  NN�  M�  0TT3�  LMR�  �  P�  LM�  )�  �	  P�  R�  �  P�  L�  P�  M�  0TT3�  LMR�  �  P�  L�  MP�  �  �  �  P�  LM�  0TT3�  LMR�  �  P�  L�  MP�  �  �  �  P�  LM�  0TT3�  LMR�  �  P�  LM�  �  P�  LM�  &�	  P�  LMR�  �  P�  L�  MP�  LM�  (R�  �  P�  L�  MP�  LM�  0TTE3�  LMR�  �  LMP�  L�  M�  0TT3�  LMR�  &�  P�  �  R�  1�  �  (R�  �  P�  LM�  1�  �  0TT3�  LMR�  &�  P�  LMR�  �  P�  LM�  (R�  �  P�  LM�  �  L�  MP�  �	  P�  �  0TT3�   LMR�  �	  P�  �  L�  MP�  �  0TT3�!  LMR�  &�  LMR�  �	  P�"  L�  P�  M�  0TT3�#  LMR�  &�  LMR�  �	  P�$  L�  P�  M�  0TT3�%  LMR�  �  P�  LM�  0TT3�&  LMR�  �	  P�'  LM�  �(  L�  M�  0T[           GDSC   +      V   �     ���Ӷ���   ���ⶶ��   �����������������嶶   ��������涶�   ����������Ӷ   ������Ŷ   ������������������Ҷ   �������������������Ҷ���   ��������������ڶ   ������������������Ҷ   �����϶�   �������Ӷ���   ������¶   ����������������������Ҷ   �Ҷ�   ƶ��   �����Ӷ�   ���Ҷ���   ��ն   �������������������Ҷ���   ����������ڶ   ��������������ڶ   ������������ݶ��   ��������������������Ҷ��   ��������������Ķ   ������¶   �����������������¶�   �����������¶���   ���Ӷ���   �����Ķ�   �����Ҷ�   �����Ҷ�   �����������������Ŷ�    �����������������������������Ŷ�   ����������Ķ   ����������ٶ   ���¶���   �����������������������¶���   ����   ������������Ķ��   ���������������Ķ���   �������������Ķ�   ������������¶��                    	   127.0.0.1         connected_to_server       _connected_ok         connection_failed         _connected_fail       server_disconnected       _server_disconnected      network_peer_disconnected        _on_player_disconnected       update_player_list        FAILED TO CONNECT         connection_fail       register_player       connection_succeeded                            player_list_changed                                                     	      
   "      '      ,      2      3      9      F      S      `      m      o      p      w      }      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1     2     3     4     5     6     7     8   "  9   (  :   .  ;   4  <   :  =   @  >   F  ?   U  @   \  A   a  B   h  C   j  D   k  E   q  F   y  G   {  H   |  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   5TT<�  T<�  �  T=�  �  TT=�  T=�  HITTB�  LMTB�  LMTB�  LMTB�	  LMOTT3�
  LMR�  �  LMP�  L�  NN�  M�  �  LMP�  L�  NN�  M�  �  LMP�  L�  NN�  M�  �  LMP�  L�	  NN�
  M�  0TT3�  L�  MR�  )�  �  R�  &�  P�  �  R�  �  P�  L�  P�  L�  MM�  �  L�  N�  M�  0TT3�  LMR�  �  L�  M�  0TT3�  LMR�  �7  L�  M�  �  L�  M�  0TT3�  LMR�  �  L�  N�  LMP�  LMN�  M�  �  L�  LMP�  LMN�  M�  �  L�  M�  0TT3�  LMR�  &�  LMP�  LM�  R�  1�  �  (R�  1�  �  0TTE3�  L�  MR�  �  �  �  �  L�  M�  0TTD3�  L�  N�  MR�  =�  JK�  �  P�  �  �  �  P�  �  �  &�  LMR�  &�  �  R�  )�  �  R�  �  L�  N�  N�  P�  N�  P�  M�  �  P�  L�  M�  �  L�  M�  �  L�  N�  M�  0TT3�   LMR�  �  LMP�!  �  �  0TT3�"  L�#  MR�  =�$  �%  P�&  LM�  �$  P�'  L�  N�  M�  �  LMP�(  L�$  M�  �  �#  �  �  LM�  0TT3�)  L�#  MR�  =�$  �%  P�&  LM�  �$  P�*  L�  N�  M�  �  LMP�(  L�$  M�  �  �#  �  0[   GDSC         '   �      ���Ӷ���   �����϶�   �������Ӷ���   �����¶�   ����Ҷ��   �������������ض�   ���Ӷ���   ��Ŷ   Զ��   �������Ӷ���   �����������������Ķ�   ���Ӷ���   ��������������ض   ζ��   ϶��   �������Ӷ���   �������¶���   ��������Ҷ��   �����϶�   �������Ŷ���   ����׶��   ����������������Ķ��   �������϶���   ����¶��   ����������������Ҷ��   ���������������������Ҷ�   ��ն   �������������Ӷ�   ��������������Ӷ   �������ض���   
   PlayerBody        res://Scenes/Bullet.tscn                        KinematicBody2D                          ui_up         ui_down       ui_right      ui_left    	   ui_accept        fire      slave_position                                                   #   	   $   
   ,      5      <      F      \      i      k      l      r      t      u      |      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   5TT7=�  �  LMT=�  ?L�  MTT=�  �  TTG=�  �  LMTTE3�  L�  MR�  =�  �  P�	  LM�  �  P�
  L�  M�  �  P�  L�6  L�  MM�  �  P�  L�  MP�  �  L�  P�  �  N�  P�  M�  �  LMP�  LMP�  L�  M�  0TT3�  LMR�  0TT3�  L�  MR�  &�  LMR�  =�  �  L�  N�  M�  &�  P�  L�  MR�  �  P�  �  �  &�  P�  L�  MR�  �  P�  �  �  &�  P�  L�	  MR�  �  P�  �  �  &�  P�  L�
  MR�  �  P�  �  �  &�  P�  L�  MR�  �  L�  N�  P�  M�  �  P�  L�  M�  �  L�  N�  P�  M�  (R�  �  P�  �  �  0T[          GDST0   0           h  PNG �PNG

   IHDR   0   0   W��  +IDATh��׽�0�gD�G�H�DOA� �2b F` ` 
O@I�qm������Ii,a��c """""�?�$'[ut�h�I9�_�����N0]j`` ��O�|�^Ż�:�_|�ՎI��A�xĉ �B8 ./2��S>0�V/�|���2)�h�h\<���n�U>���p6Ec�H��Q_��Å��"�G�_܁�e6�c�toi!�m��O�=��K�%�i.��J(T�hIP �]�ށ���!J�RϞX������ dC�
�=�_k��"��������OsZk�� d    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/fireball.png-5b97b465adba87b37a7ee71e6eb24e65.stex"

[deps]

source_file="res://Sprites/fireball.png"
source_md5="852ba1d346cdcb00988c003bfbb70375"

dest_files=[ "res://.import/fireball.png-5b97b465adba87b37a7ee71e6eb24e65.stex" ]
dest_md5="6d6c11f4a90f22348092646fc4854c2b"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   GDST�  �          �  PNG �PNG

   IHDR  �  �   2�_    IDATx��y�d�U���s��9V֤$Ui����5T��T��`�LFB����0,��x�����M�¦��m,��2m��{�@b�l�@HH�TEU��̬�|�o��޳��s�eD�x�o��ok�/��č{���}���0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�)��Q��Ǿ�*"� U���;_���9�F�cd9:����|K��{��1:�񏏱��1�� G�����=���w��������0�Wvc�o}�����}���a�, c�Y{����Ӵ�y�$��uշ�������|���||3ϷժW|�'�����AcI�n�a������l���"��O�Ӏwz��#���uD�$�nC�E��������<a��a����${�:����b�B��W;��W/�:U=&"�k���f�e����a��O���~mğ�0������U�W�"tT��j�"��E�_�H��&r���@�{�e�S�ע�1���Q���\����--��R�A����"�V��A�6�����4y=�߳��{��2co� sC�������joY����w�^Y=������Mx��� s�F��T\i��T��*"�s"/��<�$����۽~�po�0�12f����@�C�|�����E�ۨ��4��W�<�w3c� s�V�����1�q72¨O��Ηw��Ui�cA�a&@ƌ��I(: B^E�K��	�á%u�Թ&<�q0L���esH6�B�\�+՟�Ǹ�-�������1��: c�� +I��ײ@�����$�)/rǘ/^����as�	�1�tN�w %
��ց��"/g�>��0�,&@�̱QD��R�P�"ߛ�W1�k;sc�12f�v�S)�v��������Źk�t%^usR�2�y�Ș)Z��CV���4F�� �T�;9��:wq��3���Și
J��$"����UuM䙉�0��_3C�H���7rr�<�s�=����s�(���&@�q@�2f��IR����<�@ =9���c��d����(}��,{Љ���W�~
UP�X���w�2f�/� ��쳦ψ������`dL=[���t���IrկO�{YI�
��6���o�Fm1���Ș9HD��� L�	y�?�i	�6����ؕsżK/I�CdCjߜ���y6������s��פνh��A���
� �Yv���1�#��7�yǾ�8�'��ץ�L�����}��"�!˸<D�N��js�
�oJy�o�y���7B0�}at�Xbմ:�!�-�IB;�Y�[��/��o_���0$f�v-x]U�5ch��[���#���F���L�����O�c"\�et�^� ���(���iW�c�{��M����	�"R9�aGA�������o�����o����$�H�#"�\|A�D���=��*�i,�eC������;P�c\Lz�1a������I����*+c�{�ED�TE��/�6�z��)!H��-`�D��Ը(SUUUDUDC���<W��IB ���nGru�S����яr��o�����	pS5I>�DV|R�B��������m ��7P�ש�����k����ۈ�! "�<�'	O_����Q
��Z-Ρ��B@����r�����W%$	���y/�?�3�<��a�<Ӽ��]���"$���^����8uҹ
 ����OO _��1I@N!R��*�!��� ��� Z��*�}�W;�������z��J��S�Jj�d����B��'�)c� �)��e����H����$���k�W*_%"�hl�#C,�AD$���Wm�!I8�}<�!��_��|�=��(r�\��v��4��7DS�� ��`���<��F��7..����Hޫ��ڞ��aɈ�������c��z�0f�9�����5D�����;޹���q�Éx�yx�<ߔzO���Q�?�\&j���H�d; �+�΍˕����ֽ�����W��~;Xi4X�IY��hp�n	�B�bߟ��>o��-���C��D��A��h��C��ۂYKG�9e3�h$ɠ9�9"�O�����n�y�w�L����'�� l�+�"�[��Ft�y�^��AT�|���	����������|��������\�H�,.z���SU�s�D�OUE�C�8��ĝ��*"����ry���Vgw�$���ⱻ].ݦ�K���pg��ԜCUi~�w���{߻�w3fB�3��O�F1ٟe������w�.��D����,��mm�[�lZ��f!�?C����I�)@�����}����~q�)�JP]�� �NdىTQM�.�T��XH�[EB5A$�
�G���1���H5
�H&��h)u���U��HK
�
��U��:w^C8�D�e�g���R�CtM�lW��Q�@�#�]�z>n��lY7���?;�SbL	&@sƠ 4�D����O:�ۘ��]�������B� ����9����=$	�$q�Q���!΁�����,��HEU�"��jU -q^j�tT�-"[��,�ĹMT�r�+��� O(<���'�'�9(@U�p�]K����,"{Y�P�b^o�#�0�Z���;�3e��nd�P��kQ���9������h惢ޣ�
�)���$�������nسqM���������!��Sx8�#�����"k�����^S�Beg�����7�g����.8�x��fD&>�sX��s�TS�~�� i
�
T�H���#���kb��Q�Om r�,�k�Z_�Ϫ�g2����!�����v�!��s��$v��C,�����?���$����瞿���#��Z��C!<��Q�Ջ*r���>�T?������?>���y� -V�\��� �쌣����E�����[Tuq��I""^u_⣕
��P�E��>����HcO����E2y��^X��|�����}8W�S/����{�B����n �梛zL��!Bs"e��)*r]�P�j��h�UH������h~RDNw%"Dޘxn�^?�3����l\�4�9d�Rם�*�U�"�ZL�捝7dнd5�ZT	!஑m:�j�h �*�����g���3��b���U�e��C�<�;��_�G��!�*6_����޷�������>��s�h���oJ��$. �I��K4,P@��Z-�P���<���4�O�4���og}������ɬ���%s�M&@s�3;�n8��ǜ�K���[Uw��s��"�hD�Z<G
�a�O���o��1���H q�+=�j�4�]5!*��쐌�"@w��N��`y�EI��ߩ����j�H�qT�%@�!|6�� I��p%����KW�t��z��P��^L��^Z��xq���މ��~灸zVE`yH�9��qZ��!|Q���+Y���#^D����
Pg�e��L��3���{���m�4�!�A�5f�<Mѕ|�f�6����UQ��f��Y��>������57AL��a��RuU���J)/���F]^F*�z�=Sdc8<��!�<�gZ�憉O/&D����9����l���)�����[��՟OD^'3�6( ��H:��5��gU����N��A���c��⚺��+&@sHW�և��ZXXx���%�e�,B�9XYA��f��s��gU䗛Y�s����;��W�N�X0�S����| XX��O�պ-Mӟr�f��Ц
Mtei4l]�1zb\��ڪ�ꇀ_����,Gsɍ�9��7�q��� M�c�����."�Lɵ�IB8vW���c�(��p����/�OUe�^�̩6L�F���G�A�O�"�=���췲���$AWWcy�����^�_���1X�~HDigH)q�`LŨ����'-ovo���ܝ$��᝻�xN��P����q��N��a��b��N�E��g��f�K��� ���ӏ [����<M�^� I��|]OD^,q��D�u���q�F���(�����A�������^��<'�T>����#DV$*`;�9����E���s��H��YX0��1� �GsՏ�U�RZ�lwo��W����M��n�|`t�hwEh����,�y�M�|O"��2�9C��jL*j�cL
����ȏ �'��M�s��}���j��4>�����Y�
W��b�N��xy���K�m�ܪD!:�b(��R\�c�|��T?�"����y6L| Vk�Y��}at���}1�D�t-QE�xo�"MD��S]A�+F����^G��UKc�)���C�?=���]�W| �f�B{���v�mSP�[LT��U�"��j��or"oQ��$"w�5pA�=qW���#��Q�g��?������a���2V��Þ02�i���}�{(��<&��L�e5x�����X[���:>��T�p��ѰĢ�̡����+W����'�R���~9����̙�z c��"�DXX���J�ngj�7T�9�ʐbwJ(�F]^ƭ�XЁ1�(lՏfy���#"�+> �J�E˚pM�ols������$޳�ܠռ�Wx�����7��@F����VqKK`�c�0'�O�4���n%z�Ǹ>f do}+[��"�X����3�"���D�gϓ8*B~�4Im�r�ƁP�v������b(��^񩊐ZI�]12��o�U��U�ק���D^ܸ�'�� ���z3�
UmwT}������J���CUU�Lڻ`t�9w�}}Ϗ���1�޹w��Ed�&L�Vq'OZȵ1�(�r���R}p�j�z��HM�v`tDi�{/�����k	yஆs�/�6D�s��% z���8l�c���U�_���@�� �g�~�g�iݔb��#�� �<�v����z�V�����7����m�ǘ^��P&>�NL���{� /�a�"���w�s?RTL�^�W�{X^�ټ�q4X��~���O����h��b.�#D��{�G�B�|qs\vN�W��;	�u��JEXYAVVl��q����w_ϲ��B���ޖ30��0X�!-�����r/<&�	����&	,.��G�;U�_ϲ�P��d[|��X�ph�w��<��z,�xe��É�_e�$�	��1���8�(d!�+@L��+>IB�*��4�dEv����E��V��Y�5��"�0"��4��L|�#�@���=
~��s�]�|æ�9&+���B|D��Aq�GE���jp]�j�Ʋ�ABx%]oS�@���)y�1�S���2 B��W&��c�ܫaN����hl�0�2nW�V���B�^�i���e5m*0�C����@��B���W:��^¨����pj]D$�����7˧�9c�_�Pë~U"�^<�I��Y?�1�@���:��)\q�s�����w}W��+�9��=� �*��P��s�����!�h�,ߛa����Q���{���0{;s��7��N1�3 B�L�+��?�1�O ta�����8���T��wŹ����#j� ���������$"/[lt���"\��+"��8��$�5�,I����:�"�[�B��?��e������q]�>��!f��U���Ź ��[F��B���zK=I�>"od���5Ip�����0��9�K6\3�i�k}�"Խ����C8���{�.0VߘZ�a�/�2������� :G,[�	ЬS���� Խg�Z]^�V�9q��eD�uv# Z�� �H�� �z��9&@3�FϼπUC����N��!�
b���/x�V�S��C�w��̦M�d���#��k����!wN�1�ά��"�JSB�t��(b4�h��m�N�E���M"$- j��@$�������;�#���h�hu��E��9Xl��z�q�A�T�H����a ��y�������,�U��h�)D(i���>���^����0��Wv���ʩG��SX?i�B�3�y~����x��ڢ@����1�C p�W*_�+�+���E#�&@3���ؗV*T�d��$ow��RD�L�4ŧ��g� ��AJ�|.�y*�� �m}_�S����}���N�-Z�Y��"�����G��"�o|������w�S]u���D^<�FU��~3� P����{��tT�
�;&@3H!BD^�D�c��6�dƨ���ɲ������rZ3!L����"٨lm![[���"'D�{D�I�I++�m#ċ<��e/���G�����E5�z5���p)N�Z�hƌƘH�$y M�&	.MqG ��h��,Jl�@��v�u�����Rf�?�1r4��k>?B��	�!�
�Zm�j�M8�e�AE�j��1Ej�#�����[X�z��(�E�g�����Y��^PE�
���A�d*�n��2ڥij�c�]��xȯ���,�AC��ԝ��s�-�!�|�0Ɔ��-�{缧�e4����)&�z��<Ϗ{�6�QZ�*��1�����l��n�D0�B�E�u� �K��K�Wz��jI͊m��s�16ܶ�j��&@3B��	|#�\V�sG*Q�aLIi��F��F��ݮ���e7m,� MZd�NDHD��z�S�Mb	��V-��a�u��S��n�E�M9�9R疀��,�1G`a�a����(���"
v^�_i�a��Q��tB8��K7?��c��D�:��&@S����}ϫΑ8WO�{�ya9���V*���ke!��D0�r<,	�M����#�J7�c�������*�t�y�h�h���f=�Y�sY��
���,�~;�a��%ɋ\��K�ۥ�*�Y#ǂ��+>=��<M�k]	%v`�11D�n���`4��Ng)����/�I�R1�I!p�Е9u��	�T�^�P�s�ߪW}��gRh�Z�aL�;?��G�ěE��C����;�Δ��, Ø Nd����y$�	��o��}�Je�{���p�A�9���pG�J�-5vLذvJX�ٹ/(5�h� 8��gćp��n�81���,��$���Wf��q���Ƅ�o�\p�$I�G�y�j���o6�cGDn'"t��w���f����w&�N+��y]	����c�ފ����6g��vh��4yMM�x/~!ØA�V
\᚟;L���"�@��@�Nn���Rf�zQ���mS�9$�,+�)c�\pSD��8��y���Ծ6�aL�V�c�L���$u�W�ݎ>L|c�&�M�$�����if�����Z�;��0J�OK&�1aT"�����S��.�=��#�a5\g�c�	P�h�{+n��%5g8fF)��	L��qQ+��<��j��&�[ �(�� ��{OP� �/�-�aL�tyCF�m�'RU���v��`���$�+��ߙ�\f��������T	E*�0&����VkpW5���iZw�"���1�R8VvƉ	PI\��~B�.��R��~3���(@s;��ޥD*"�[R93upf�Fy�,"B���}[٭f��V�^����MS���a
xØ�̱d4l�� �a8�
�W���Fɭ=悛6!U����4m�a-P�G���J��tm%��*�-�aL/66�e�a\� ��.t���\e��І1�,��	�1Zj;Û}S)@&>�Q�e�a\� �Dk��L[l����0Ɔ���\�	PIIoさ�rm,�0�1aT䀆WMKj�a��1*	�/��e�������&@%��ϭx`)���עJP��z �0F�	PIs��Ԕk"��d�es{� ��@�7G��4��0�v�a I�u[������0�dF)ld�V�m&@%��Z�O�<K��a���&@ƈ�iUJj���9 �(����4�nǸ0*�����4!X>8�(��i���zH��vzsyReD    IDAT΀N�tZ]p�爪�f0�?ņ3{e�ⴝ.��y"��@���s�.�����v��U#��ȥ��0NL�Jb��3�}|���c���
��%���B��H�M�{_I�=&@%vN�˴��Ȳ�0��3f=�
k�,�= "��3eT3�_�°�P8�hK,�e�8w��&�����sj�~H�p��85E�.I4��v\?:T�Y��L� ��Nw�Ԧb Ι�88+�8Ѕ��OG��9L��Q3`�(0�~�,C+s�FWC�,(j��{BCx c�	Bȧ6�ӱ�@��8H
�
��w��!�K��,M��Qc&, �8(��,��ҕ��nu��>�����6G�T֎����7:�\2΢"Uپ��Q(�|��#EU7 �6FπN��4��3��hL9������͵P�RE�О3˧�	PI�*�){BB �2|:���)F�P�����}��(�c���9�M�J��WDU`�J�&@�AXUp=��byM�D>ǠDϙ%dThM{D��0%O����������3L^Y��8eAQ2����GT?�������LI�&@%1 6�(�!�@�m���;���)#R�(�U"s�J����6I@��-'�n�U?Ŝ�����M� l�)�K�S��j���(W��s���
�aE�(�Sʎ~T�n��v�����s@�ʴ{}��h�؂�n�ݦ�!!\͌���#"�²�URD@'�t��C��(�:������يs��f��JB�{b���FZ-�T����g�s�C@�fm(ny�"�(�"�"�������֜ �	Pi��a؛
*S�o�V��FT�����ScAOd�$���ڍ,��g��6�׿	�t�@��Vvc���b��^na�8���m8��M!��7WWBEqM1+��lv��UB�2��)F�|p
[e��zH������bӑ8va&>�Ch(��>q�<��Oï�����J��s%y�NLZ2��*�l^w���aTn�n��(\zƄ�9\��	'����X��Tk���F��cPI4�|p�\)�]{bs�cp�����(<'\�K�S����_�X���s	gPI�v�l�ܹ˳0�(��� i����z�Q��0��-�2�ew���G� ����؄&@eQ�k��n_.�)�ET	[[Q���q����F��ƨ5E��q{�����
� W�5D.C������_Z�Ɖ	PIl�,o�0 ��Ү��v �8,��:���>?Ga�����/N��մ���"�@7Udq�'s<t���i�n�̒ eYF؅���I$B�CΘ>���9�k| ��[��'�?戸��h�ș!B���!�3U�;7��$K�3��9<?G��KLā>7��G�>�CX��T:g�{1�2U2�TgG� i6������nR����#G_`�}�������T��,���,��,��"�gޱ9�Ȉ=[Ś��5�j���^(0�э��N����ޢp2 �C�������?r	*�^�)��'7*��	��TRS��Z����W�1�4<C1�(**� �+�a9��-j�f;$R��� O��8�ӮR�p=Ir����	Q��}oi�&@%!�(���M�|MS�~�!�~l�3rRP� %����%�
�t���pK�� ',x����-D����V�I�OZ/�^!�WL�Jd`?
��z�<'\��NR��P�Zj�u���^!IA=�Dw�)�3�%�;AOd������{!�| ��v��Wv��{L�Jd``�k�4dH��\��6�h��V��G��1�
�FQ�H->RS�
����3��h�>])�Δ�"������C.z^p��5!W��܏�4��n6���>PZ�&�	P��;�ro�-/R-�IF :�sdk�T��	s��	E		�hU��HB%>RU$�B`��C��S|-S��P%�u����m6.	��M�ً�T��
y���sS�E+i
y~�n&@%���9gi��;UBsF����
%'�G1;=��GٕH@Q�H5����i�*T@+�-(x�h"�¢����蘇v��R�.n����7�o,�b�����^u<��<h���w-6B�{(6�sS���Y7��V��A7�rE��-��tJRṔ�q1�퓝N'�)���&�9M�3�	P�Tw��Ƀ�3&@�
O�	z,A�\����2:uE6���fv�$
i�):���
�]V!n݉~�Bd\q�����8�#~�}��'$�<nW��
�l���a�H��k�W���:D��)L������f�{3#��� 
M������ LA�[N$�?�Ï�DM�D;YF�ӡW�����	P�Ɉ���F$���x��gR8�CI��j�!�K����8���� A��r�1&)Q݁���7�n��1�w�o�>��(ປ"^����zEA�ƨ�4�]������"+�W����!���Kz�����#*�V��7�d��D��xm��H���������Zm��A�Chu��![Z����d����	tf��业�&P��ږ�6�����x5Mi�@�9�$a�L�Jd��c�'����2ڲg�Xw��=���G�!~�ծ�lL�܉���bP,��D��B�5�#�]9"h躧z;�"��H엻����qۇB�q�m,��A��}EC�φ��G�W�8.�*0C]b��]-�9f[p|q���#��#!�,C:Y���io?4Xȕ
���o����AF��GEp��%	��:�i�0�!�L�JeH��K�:q������^�R���{+Eǜ��A��ѯ��0�<�+ �s#�� ;�C�9�4�>;ߋBX��M��q�ߌ��=.��G@��CȢ(�d-ȶ��y'�f�wz�CA4��;����.T�9�F��C�d����D9 D�����
w���
,z�׿%�y�a<�	e�pOM._l}L��	�2cL��� ����'kBg:�g���̓��v�ԋ��A�f��8��0�.2��lUϯ�wא*q>c���.j􉏃��G$5H���U�]h�"s�b3G� %u�,@�y+
Q{=ZF��c������铄�~�0�;Ә M	��v��t<��/j /�#�{�z�%�Bw~fĔ!@.�Te1
��\�r��8���cP]��EK�}�∻u	�.�y���A3F$]��q��Bڈߙ�x��&t֡yZ�|H�i��b�� �e�6�u�ET�>PU������Q0*����莋4s@��ї5���Ȣ?� ^z�z�m�Ή�q!�KQ<�F���ϒ�p#,��c�,�[LH1Q�Aގ]{�:WG� dc�x3�K���t�NBe)Z3��9dѲ�6���l<�sg}����$��M� ��-��ZD"!���J���mn����6&@%34\�+�uɣ/o wסqp��1>������kbFJZ��Q]_ݛ�Y�V���8�)���J�����-�˷#�O��ϣ�K�u�)�4N���`�ha��������y^�Y{�A�]�A\���[��y)/\��!|��d�H�s���
&@%��яҼ��]����З���4��/#i�P�B�$W9g�O�xt��=*]�r�nX�=���>�w���v���q����ڣхdD|Y}>�>n���}�b�Q�++P;��g��:���M|�^|%Z�����
A����dG����JMH��u���,�&:Kj���Mb�Q#.Z=��ѕ��h5Y�N��n��w��4`�6�,#�Ux�3h{����t9�X��+��~r�d"�|"W狪�ȹO�W��Qq���x\_����"�}nH۪1��ć?|�Ox$0*����Q�&�n�����}Z%��q��V\\:ҷ��Ɖk�s��	Y�N�<�v�a�\��-�b�g�Y$QX�pS
/�k|�8��Љ��9���D[�8�A
�e��+�����';�Ǜ��&<ֆ�r�����
�j��j����U`�V�U�%�忌�r�!.ZC�Ŋ�]ܤA5�g�3L�J�ҟ~C���n�l��z�u�x:�,��P�HO2���~�Q����1h����=*���	�^	�z֗\E�?o�o]�?܄�,�g=@�XL_u����T�MK��E8֝�K��� 9�	�9�I3�B�@N�<���߿�H~m��:�E�����!�/Q+N&q9�����x�,w�\��wx�5H��+�]?$�C�T�֕����<S�~`+ת����l�,FU�,� /��vc:�+"�B|�`m�pF�������|�,�-�]�����%��e��<ن�u��w<���+�M��Ŕ��<B9�'G��R��K��]}��R��5�ŋ��D;�� �Fkh-��[��M��x`��<��]i QPN�
�[��S� Ij�8E�3}�	��w@�(8��3ʑ��l���"7N�	gR��
��I
c���&i�y�6��${u�]c'_
g���ۀ�}~����0���F�|�t��8|�18��q��@��gc
�#��>/Z>�ձ��>�,����-��G�~%�����Ϸ�=���������K�lso�fZ�Qx<ݻW�嶍!� �L3�aއj�LlX�^ϯ!ǒ�-?�U�[�Lȇm�K�O����8���xq�7��Q����9���((a=���3��R���pk$m��#����h�];�8�_-��˾���:?{m�4"�\��\�������&��`�v�:�g� �;�"��\z����9��djC2b�y~yR+��t��I�2Ƙ)bs@ڔѼo}5.^�Ǣ"Y�V�(����e����������(�e����u����9b�މ#���`u^q	{4No?���,��<<ڊ�;���@�	���W7b��
�_�l�E׿t}W��P}%��l��b��&��-v�d����,'�5�n�j�3 ;d��z�B�=R]�QX�eͯ�߀yv4���S�г���"����s��М"�7�����ҥx.��}x����(B�ϹаM��������p���Q�]�	P�d�����{�!g�P�e��'n������"EN����d�}#�.�����wG,>]���Ϝ��Z��9|�ߍTWF�i�%1�A���O6���E+��f��t	~�R�R�+n�N�v|���UQX3�	P�T*�[�		�����#�vP2������(���-�X�mGpF�N>�����/���bXw ���)e�����q�o�kt�-���C�[c
$��G���VϼRe)��K��{3%.�6�`4}T'c�I��.�QS9�T���;�p���m�-30���8r~f�C�`#���v�V�Ꝑ�#%D�,�;��?X�߾��g��+�{�K���*��~/��Y@�1�"�<'��D�>bҺC�%q��	2$�|�4��Z�������k��b�UZ
��"|�9~���*�w�]7T�4R?�/Knڑt1������(��K1 cܫh2�����v,fھVn?j�_#����h
yN�s� �	���D2�d�{!ױF��`����v��c5���s?���~�p��p~�r#ƥ1t2�쯓�q
��mK�3M����7{y�J.v�'>
�5�p�.C���ۛ1���-���J�2��?�ʵ��.�s?�O�a��ĕ���'�^�~e��]�y��L_g��+�xgr�8���{��~i�p͹67�q��d��nF��d�#�5�(�c�'��x�\�qv�|���r��_��	����'��?6�R	kA��	�ڂ� TV���
$M q1�D1?�V��=�i���N�N�Ʈ׍��+�Q�w3"&@S���n��{�ru(Vb�@t�X���,F�,�N�T��������~=���A�!��9��z:�YF�F$���N\�3�ȷݸ��Ħ���4�nw�k�!�x_K��w3"&@S��8x� �����
�f�~i���]R�k��	�ڹ����G�}��j��=�5�T��ތ�5^��%}s{�����&�S�\���һ��	��a.H�c#%�	@��p��(�*��><OI|¾O@uuG���!Ԅ�B+"�UV�C���>+��VLZ��{, �v�6�L4Du�h��)�����F�ѠNp��yׂ�+��A�{LJ�6���\��L'���k��q����k��Z�J�z_�ȓ��e�%Ou�Z����+��F*���k�lc4d;-�܏Y��s�q�C{l�P�#1��^Hj��Ov
ח:��x�9,&5ĥ踲�N
W�k��ǵVep1�_�1�M���j��ck܌c4��5���B\q4n6F[/nW����$&�oN/qq�g����b @ٜ�b���v��hpI߹�/�pX6CL����]�ह㜋��S�fB���M�@ϱ&!sȆ��09�=J���� ���8���W7���7�O�/�SG�y���x�:P7��	��)@�pr0���w�cM�9���P�������>�9�P��&��G�Aq��4'��ץz��%����iD���Jy��TN�5j��95�v�&@�@��0����Se�A6GT0�:l�z_����j�Z����0ɥf}�ł�غ�,���PRUXo�_%�""7w��5��k�b4Y�6�[�l6vߑ��],4��q��x����O��!����J�PB��f��[}sX'�ysK07Oz��^^yk����T� �Z�eII��{�ȓ��ƾH.ep%G�8��[+�N�/ܫΧsO�2�]�E��Yt=��:�c���y�͕�;�n�Dl�l�8����tv^#N���j�8�&�,fM;]p�}��C8�An�@2&��"�	@ ���|�H�T:Q�z,�	Ԧ@�N$=�mC���3Ag�U���*,�$@wV`���l ��F�CM4�'�s����ę�,�)@Dz7��,e�/��S7�˕�������a������7%���ڑB��'�j���R��Z�Ik�^T��^j��m�K-h U�:wg���a4�y�����d�|6���䆓5&�	���g9ϡ��!#ߛ+p,!�s�D*p[5���l�a��4oA{}�|��pW-�<'�-���c]f��:����R�CD������C�m�`T2����s���s�,<0����-t\V�E7����M�߇��YdCF�.vP�%�I7�pCRDj�� �}B���	b��7,��	O|�"�T��(���l������a3��נ��G9�0���hp�w�8����Dk��v���6����[�C \�X��٦u)��z�xe���a�8��[� �?��D�|&N��q	n�L��H*p���+z��DW� �l![�S���S��k���D����h
����*^�y��	�z@�����
�K2rQ�.��z�C�\��E�����|N������T��l>ٜto[�}y{��޴�#�c�UxU=�����tt���ل�ix���ǉ��Dƞex�0�"��U&�=WA�؊)�G9tQ�Z�nz=��!ۣY�vXAϭ�Kꓟ��8G��:�x��D����YD��?�mqx��v�
�
|ñ��nw��g�yig���6r�}��ǉT��/[�g�)#I�;6�cʕ>��^�F6e#$��$c�w6��Ⴉ;�on,�
z�R�$6Ϣ�Mf~P/��VP���׮��\�q)��V��-��G�������fv��N���R�w����q�g���apK&�=Wo��Md��5W�(��'1���$t�0�ɿe	^Z� �x�JOg��D�ԛ#�u	ֿ���J�q޼8���[+�'b���!����S;��B;�'7ag�A���t`��Z?[� �Lù�ͣzr�i�3[�D=lu�5���������w�Y/���y��	|�j���o_��4�uH�K�E4l}�,�.~>ο��-��N���2�l�ûN�Ŷ�i�"���5$�l![;+���	����mdT:�k� �S�3���R�~r}�}(��^p�x�$��=�Fit�D+������%�<���;���'s�    IDAT�+x�A[k��n�|.=�U�����e�ѥBj8x�	�����_�+�A>|�+��d}O��x�@�e³�	P����t�
pS��T���l���jv{�sn��?���@��g��?��F�ˉ�}^^o~�nG�勅˯}.?��<Wh�K��BP,��H�w��3�
<�%���w�=�b�� ��:\�,ڼ�Sܟلg����.v'��y�����~��?�X.��q���;XX*�9�=�&�u�5�p*E�r:��z�F�%:dp�/`�4N����F���g���A/����z��t���߹ھ�<�)���s.�.�q�=��\��V�'ᛏ�E�ۃ���g���}y��|��eܕ}M<�T���'zwΙ�t_� �L7'T���[K��)�6A��U�p&�{��E���+l<������
A��"k�@�ic{E��̳9��3�hkt"䀯Z�����[�`��k���O#��nx-ԎB��h��)���t	>�[{��S)ܻ��޼�ꍧq�q���a��K��[�G� ���O\Χ��a�� M	�9�,��=P��Q�Q�/[�V�e�ڞ�rn2�r�� \7Tv�����~
�o��NV=|SH��g���2��T�W�=�����[�쟡������&���#����WAu���^��}#n�m�cm��㥑Ht��Y���_Y��ϭF/j�s:�������}�2r����)���`c���	��$I%���ݎ.�O�����ò��zγUE��vu�>XC�t��ik-���KQ�z��t�r,���W���6c��p"�o:�}^V�v����;�暼�^�|<ӧ^�c��O&��8��ex�sX/ʕW���<<����������9 ���7ER$EI��H$EG��(�f;�a;O�f�8��l������&�w�g�DkQ�����rbˢ�C�$R�4<��1g8���������Սi =���j �y��]oݿo��S�XπeҍxK�AH�:W_/�5�RT91�k���)"≌M���t�]s?��t|��{�-@"@1���T����pk��rՇ|���pKݕB��wiv���vo�u������e"��yd��R=��p#�ή|y�hΖ�Ű�%���(ֱ�:>1}
����fo�[���NC��چ��@{�Q]D�o%�"����a�r��D���9xwY��6��6��D��@��5�P�����\ko�Ö��9��,���M��30�B��rW��~����}M��r����	�I��=QL��v�=^g��,�Pv��XÄ���}٨�هڣ��өzms�+���N<�)a�9����s0:R�z��TO���Q�W���L	ޙ��u�TE����@a��ou��t�\�R�cLӻ �M��� �1�|�MG���C��j�Y�R�ʶ�o���N�-}���V~؛�*���?Q��~�����@���g̋v;ґ�,���3p�5t�����fl��;SH�"t�����GŻ��a�|�rk�i1�����s�j]o�1*�0@1�%�
��!P� �ĞWRR��#���n�M!�=+��FR� ��(ὑ��起���P�o�"�H4N`O*r�X��Q"��h�w��x�]�ke�����_Z���)͢�<�"�'!���(e�k'�(��2P�0��)L���r�����N!'��t�^�9��v�\}��_�+t|�K�}�ME"@1���e��"���C1��f��h��D�N���L=�j��A��b�<���c��n��:ѱ"���=4u�� 6��Qũr���0�h�H9	�,BA�܊�K,�Fޞ������\���?��};�g��b�����9Φ�
��mX`C�A���8P5a�9�Yd������ y��U�\nS'ѹ�Q+��m�2a�!��X���[S0�7���qD>BY����[��P���� �]��(��n7"��['��6e�xc�#@]U�Fj�KH�0��F�n�ͅZ�h�v�bt%���x���&c�;��d�lt��\�1b��
�/D�� Ō5:�Gج�Lfs����тn6�uuX�ܞ9�����T����b"�	��(���f��L���&�f�� �Na�N�T���`���9�.U�1�s?G�����,�s���d�_+)�t��X\���V�z�y�(FЌ�UX�vD���踙�q��W
dm1
�'1������$��2�P��"D$��0�շo�ԒD���̒�P���㈴L�ՠ����M�L��a�����Yև�v[fZ������pn�o�k�q��8e�ݦ��D�b&]!��Dq�M�f��	p�a5���d��/@	-�����zjs���;k9���"��۴��MPs�U(>�( ���W�W5��N��ո��m��U����������h)�����W�7&0�sM Gd���{��7���ZSlh�˿�(������1fSf�!�R�oz��:+��5��l�sR+<8a+����3��e�u03Aӄ�QM���,��o�%�P�{�J���.����1�Y�i6�NԶ���+E��"����v�7`n�[/�@�]�Fk�]\�F��E.��;W����a� x�y#D�Dn���mCW\"@L��'�u�N[��>��ǲ�R�7 �ȅbԙ�M;؆:�WC�B
�QVZ�ڲ�B�������$riɕ A:��HՑ� U��z{�o-j����E�F�.ƪ�1����lʿ��L�A�u�T� !r.D/��0��݆�NC��T}֋Ӑj�L���&4�p-���Ƽ7g�k�J�j�Diч�t�NV�u�/�%����ɰ�)��B��cy�2"��D�8�[�͂㴌�@yXX���+\,D�~�}8���n�!�hT����vA^�֑ӄUc����Y8;�\��L�ѩ܍;X�݉@5��Z$@�eLC"@D��u�eJ[����J�{27�f1��~���uD�I&}�3��RT��i��,�D;�ݔ�����p-�\�E/� ���T�* ������8w@ "��0�8�x~;� $�!>�I,PR�7��%p��ڿ#"�1��.�qZ*�m�z���E��J��\	�<4=���t��e1��HW���
	�s�h�3>���`2�L`���-B)�%;�?��/@�$�\�f�� 5��G�&�֘H� /Q���c��6󲦙f�4���c1��QtG;:9��ŉ��e۰�KǼ��c�r�in����t��;�t��sZ+�b��V��#9�)�Tf
0U@��|	�����`}�[@����� ��mL�Ih��q��P��F����q]�Z�`�En��
�ho���A�?�ˌ�$�:�|`����1)�n�[��|��
�Mqzt�3�vඹ�K�cis�vOh�$ҧ$�T-O-P(���!�sE�E�C)�& y-�HhڟM��h����{���6��$��<���7�[����x�<��vE�ɼ�������T�@�.,�V����z�yr�0G������b-?z���sۭLuw�����x6��"����u!�
iҕ�����3�9�+�%�(#8i����S�}�t�����U�,�`��Ut���F��p��W(�[,E.�P!�H� ���6�V
��J!Z
���F��~=Ʒ��� *�+`�t����х�jL����
���k�~��X�$�P�(��?���N�k�9��8"w�`ZC�t�%�oR#��':;��ݣ���M��]�����O�l;fC��HP�4a���6~�N���\��<}�[��	%*�N��V����t��|��m4& ^2"��8��D�Hd�Em��P�;2���<����hA��k�ʻf]�?�C�ƽ�'4$U̓ζ!�uC"��I��l�_"(�	��zΉ঳���K����3\s�h �*�����<f�sz�[gfI7~�NcQ߇t�ُ�F��ʷ��p�� 5�⣏��7M��K�����1��q}�������OAUy���/��Ŷ��`�����8���j�q$D�<��2�	��T �K�&2g�T�7��p���b���ϗ�U�)��)����c;�,�xp|�G.��;��iő"� �k�8��/��x�i.� ��§>�,��,B��Ř�	��c]c�-�~ ��<�s�/�%��]�R(���v�!r�M�H�c�7#��  ���A	�h+.�e����pS��.�tC�b�_
ˏ�J�yv�0���~��%�i��g�P,�mn!n��ۖf�PЪ� 坐	�`��y�l`o|�5�u��a�ڿ��)6��%�R	7��k7� F�qpR)PEU	� ����Ƌ�1�=��&�Jqej�3W.�+q�4n*��z�qjL���˶c5$,-_ĕH�BG�a_o�vs��?y�<{�r��#
���F��mU� ��z)=�8�k9u$��8N/���`k.�k�f2-۶��G�ynh���<K�n*U��
D�����8���R��DIà,F� ��6D�{���{�χ；�lAm���	�{�-�8{ku��u=4�F�ZlpcW������Vw'�]���@G���5�N\MI!$�7>�!�52�#?���V��Ï{��3�u�i-������	EU����T��y��N\1��.$ ��ziʪD$MD�&k�H�.�P�<���˦�cSơ���G﹗��u7�TjѕG����vR��O���v7�!�!~��l�@�uyr������Oq`n>�ݐ�J�u�.� "��4 ZE�!]�r]���㌺�K`G��5�8��V��璋!�V!(q�^��R�s]��ဣ�RS�x/ןE�p���|���h��7u�a���{�����8���V6�^*����z~��ڲ��;o�N���W���*��=����qЪ��F|���x�Q�Q�vT��y(.�6�L�e�?�R�]�����z�Ӿ��\?̒��>:�Yv���{���1����������ʴE��U���������(��jqZ A�-j�X�±�I��E�U�Ձ���\ol�N��&��k~l�^�T��Lf�N�m�4��+p���^����F��{F�ǔe)�k�� ��/���[�D�V�L��hG�Q��-:N���݊�D�88-�z��S)wC�}�B���x�!~3p�0��qn:��Z}�[(³;����w6%�q)��نݨ�&�u��d|������[�w�NǛ�zrg��v@ 6l���u1��suf��
ŗ���2=��'ר`�+���P�?ٵ������	�W~��b3 &��b�fK%fK���]czE�g�Ѭ��\�Ҋ���(�\��:��r��E޹pᆏ�/9z�g��W��"��J�x�5�2�"�罻9Ӗ�鑵B�0�	��>�۪$�*rU�	Q �"��ȏ����n�D�N��1�f��쯃�|�7x�ܹ�cv��<�y�m�{�(�5.���T
�-�v>��_��"�dW���)AAU�=����$i��$_,v��R����m�0ָ�4��3��_)/ay�MkZˉ˗�y�h���1>;��8;>�h���7��(�k�#}=����}S���}�B.K:��Z��H�O3����(n9ʹ��� #������63ڢ	F8c\��&@%\��e:��g� @������Ÿ"fM����� wL��6�-&���@ɦbLX��{��I\pu��������'�1�b2k�Q@Z��L
��_6� hYpr�"��"�R�!��C��YGw�#=]̹NS�����m��a�	����Mk�,��@�����c���Y��$��@	q0��WE�8��Ѿ�]�)�"ss�NF,���1A�E/�6���j�����y��<�=I�@.n3�1!�v�C��$��DYC:v5W���
��ͫ	����rC���m�W�N�\|Z���i>&��IM���̗Jd�iӤ�MP7"��.*���U133��(0V�-��L�MD������/�)�ɸ�hSmčPUF����=MO��M�hD�:�p�0l�h�eH 33}��������*��"D]_��F�?v��l�D�TB� �A0("��mWS�*�mtn<tm��{h������T�1�9��%0�k��3W�mT��͡�!T�ۼ1�sr��`��D�VI���'�v���HW��4�[�,E��� �}]����������#�J#M��L₻!��م�Y��7� kщ��'$����٢�� ,��(����?��s�*�'g8���?n�O�(Z����ߏF(��?���=������?}��3�cGSwC���.z�	U��S�k���ޣ���U ��Dc�A��[{*���1p��9�H
Q�a�����=q�F5�utw�ڒ���D�?�1�?�hP޽q���������g>�[�j�Ѹ�L"?7A���B���s'���k�xq'��"�:>���[k]���U�s6��q����B���[������i�ᛃD�꠸��'�s{��G�fg���Q�^��"��H�oq� :�&��n���'�J�|��y7_�η8|�-��S�	���l��zP���������y�6߼<+ �8���U���fW��`U�����/���"׀Y�j����k\*BۅD���Y�f�a��w\��XKx���`,��tvva^�M9p�N�}N���ǡm�]ý}���Y޽����oq体����B�d3I�MP�h��#"|��{���$]�9��_�B�SJ�b|�� �ö�#�R�'т��qU=l���Z�B��� �r��jeR�C̒�����m����.��NqI�S"�O��M�ֆ��-��l�9�y��8X� ��1x�V�-r��q`�}����\�Us��Y��{�s��IJAvD�d{�R����l�����!<p�]}}��]㥓'9q�Қ����"��,�s!����w�;@��U���;��o-'B"ب%�D�_�����.�\hL�S�0,�<�LW�P3Uq���(���5����[�ʁTO��b6+�����t�)W�6�C&&�V��:`�v�����<U���L�^;��@�����͇；�ނ�\��$-k*2�MgIgڷD��T���~;?���������vv��r���1\��\�~��X�a'����=�/|���;<���_L�=
_ɷN�"�#��Z$�l��Aw��i�5�yk���V�c(���ڵ������X^B+�P��r��"��͊�\���GE*�a�Ruv���T-|z� ��H��[7(��q$��ൕ��:=��Э|�}�������,�b1Jl��.1�lgsw���p߾}<q�tv�:"�3��t���N�E�^�^�C�R���ǈ������g���wЖ�,~Y��2z�rylkĂn���~%5=}�twQ_(��]]�@�@��/|����Wc1�UHb@���
�g[% �@� �� ��vvB&�iP5C����E}�N
�7
�ħ
�9�̞���0� dzŇ �O����?���g��;��ұ��63��Q�dy�9َw�@_G������Y�BBD��░�9��r�JX��E�����~�c�މ��ϙ��CsW��Bxi���6�i���Y �cc��]��g?�D�Z�D���d��8�h9�$�Tº.�ֆf��yue	-%C��<���`����vdo�+����c�[��`#�,s͉����-�v�ӏ>���Wy��?�׎p4��d�CC0�`Ri�m�8���|����@W�M�^F����;;� U�_Z(�Ϗ}�#�E���� .�㯣AP�@���W�5�5�І�T����#�w/�J�6h��VZ��M(��M�A��΢��M���)�C=���HU� �>��"��G>���=���g�9l�G��cеQ0.K�a�@?�CK    IDAT;������ŝ���;�d��mU��L8��U��S�oX�h���9��n�����=Cõ�`�$\z�OD��+���� �^�|k��8W��ؖϊ$Tf��lw\M��!a%+�,V�z�Ųh��*R	��$3M�ޱ�r֔s���B7}�@��sܶr]S���8��Bh���ّ�mi�/��c�@������{������8��'5�����FN��a�;0��Z6����c3�PԸ�
�F`��L�uG��tW�b}h~�}��t�E.��=�f�ok��]>�����}�V���4g�ǹkl��[{9(�>�]�Jݡ3���ﻟ���uj�)*N��ѩ�`��ϛ�{G��,[���Pu�Md �"ų��D���G�EsC�.z����7U-�[(e!c@�ԱOR��{0�"�@{p�|�Q�VO>O��<b-�E�ԋA������^8p`Y,�Z˛g��һ����p��nū%f�kp�U�>����ڻv�s'pJa+GP�B�:��W��gϦ"�:���P_*PBC�){�q�� 	��U���P�x)�(�ԵiR����Eε���y�s9�;����K����+�0>;�C���сss>q��;V��'���b����Y��:{z�OL[���@�rT8���D����UAD���ߏiK� �TR��ʲ 0��f�vJu�����k��yr9v��mi��rez��^��y��L�0f�P`�X���u5u���ϭ;wF�� S'���PN.X��E�7��rZ/%��"�-�����b0e�PԨ���52-�z��)W�Wj��	���r'�a&r����C��Z�7V�|�D�TZH�^M'q����?=��gа��Y��E�z����t�%#�D�T�FlV��}��%YpM�:څ�G�YS�5�z��U�q����b����"�ss������[�����­���*�1��;�˳H��y�B1�cq۱YI.�� �����1Jh*`�:�Go����~�R�ռ���<��F��\����u�:T5Ji/�Rk�I�r���mq�� `��8�E�����-۾p�-_�ᕟ���mG]E��B#���q۲Yi��fc\w�1�ꅸ�ڲ����Ⱦކ4��D��g�]G_���$ŷ�j�ģ,0�,$F�z���yY��~N`�g[��ʭ��
����F1:3�m�Α	�[IA˯�T�x��� ���L�>L�:��x�"V#"EU=���ْP� ՁuݥGx;n��*ړ���En �qWbc̢]�C��E(�X�zr9rkO��,��k�܊xD-�܃�;�ʲ����d�[�$]~���"���"�wOk~U������[�a|���E��T��>Y�I��(�#{��l�L���V� pEp!Z� ����n�6�Eg}p�{R��,ɒ��Ud�pӅ���靟']*��A5NUY�+hT�#D�|U���Qe�T����`M�����������f��Fڴ`�Z���>��m�_�Ts��a_��#�~Z%)�'��9U=�-[͸�;��wAf�~��X[	,�|)�<�'@O�@oa��c����=�*��B!k+,P��V�=�H�o�;"UvOMq�ڵ�M��Et�XS�T���I�"�CދveV���Cf����0��H?�L�vm*��l��JSƢc�Q���j�t��=б��^ˮT�3����PG���b���ͧsF%���TDg�N����'iծ�^�\g��������̗з��KvAV+���m<}p��ڞ�E�U��	,kB�P?� �IN��М�q۵P#�H<��߾�'��7ޅ|}n��R��T�L��k+�΍��5I�5�_׍�hh~�]33�^��r�
�6\#������B�1tf���V���m�]�&%�:h{��Z7�$�΍�7�Av6'�I�ͫpz
���Nm�OG�P�u� <[�!�	�����.�͜�F/�,�^����<��s�< PUg���(�RT���}��'�5���Bk_����gSәF��[w�Ӝ���J���o�z��t������&	[-'-,�뤂���9�j��^9~W�J���3ۇ��״�P8�۬nU��'gh��6k+d=�
I�q��t_<�I7���d.���Ǳ�R4Y�m��V�:k���NG�DO�X[Z�\�������Ȏxd?:�	�)����'�"�����г�6��[�D���th�U�%��4vG���Hg̆�- S���QUCC����n��[�	��Jt� &f�}�d�����b�z��ۋ~dڕ���)h�:>O��A@�a�e-l��V����O~r��btuWD�u���Ѹl۔tg��`gWsc'� �� ud�USL���^~�����-�-�/�+�/ȕJ�����p�!�Jў�БN3��A���p�b�Ǜ�.������m��W��c�?�q��T�E�[�ٍ9��"�UR\��(p9P�]>"��'� 4㡷�]�H����E���i��m;wr�-�`U��.�2�z��Y`-�'_,R����X*Q�}JA���� ���aHP����%,�s�U�Z؁Ue�-m��H������Q� �1����8��u����.i�#S>���T��t���ᔟ߈0u�*r���f�_�*<�6��=}M�*�k���W�7/ו^����5?7�8!@�j�ә��VM"@� �s�~KE^�٤�G�@?�ӶAŦ7@C�^�aί<\m)a:�I�o8�����j���{�7F]$,[��-z��6���Y�]}[u���}˾V��+��k�9�ŷ7_�%P��)���t�ё���C's���ƎnP�[��/Wn�8Q�]!q���D�V�<�,�O|�"<,p.P��+�~I�j7�;�E�Pﳔ���$�~��;:p���l���Z@=T���/!n�i3�ٍ~h|�(2_��0�{Ϙ�� '�L�X��ם����|��4i���k���7@�Jp||m?��K����m^�1g���. �f�z�&"w����NcTOU�
�ߩ���W��}�g���*�|��"��l���������&oe�?�m���^�zasums}������k�U��l[���T��+���r��]=�N�.g?^U��)�n���H��%om>4�;V��q�Ӓ������AD��kk
L�Wr9����}�c/riz��bqKf��C&�"��E���;~��s��M{4�a���$�� ߫�V]�M��LZ��3�O�_�VP����ꇍ����k=�`;�ޝH-��Syxw��o S�,/��|���e�\ǡ-��#��=���|dS�h���(���a��(��qH�.�뮻C�jQU�J&^�k1�J%
�yߧP*�+ɕJ�Q,2W(P,�8t�4����kz��'�̣g���4�m��:��=�>�Нa��V�����e��&�ٛA�l �����%��\D���բhg�A��p�l9N^��k�|g''����`��JO6�Yd�۹�]F��+Yf�N9=��2]�J�t���z�.ɜ�d���T�JJw��ת弄�je��%�[���p��oE@޸��:�8�]r�5�wGx~z-Yq���w*7� �12����Ӎ3v����}���/|�a�#��H�?�y��c�N�wǖ��y��+kJ�*9g�����y���r���$��L�^r_�,�`�թ���Za���}}�q��c�䵨�Pg��G�`����<�_ylx�O~�躿�� �:fB%�Oj �|UY�g���mU_�Ѭ�@�3����&��,P��rem�纻960���n���E�Υ�{Yձ��e��"��;V|^���ѫSZw��z���� T}'����j�O)�����y��g�$�ڞz�Z˪#������n�U�A�;��q����7��i�+9���yw``�Le��=4�������%4_jJo��Hڃ�A;���ժ^
��-���_��)au$�N���rD��>y������i��4�*]�{8�������Ԛ~�����TG��vŊplp�#CC�+���K3p~��5A��Co�Q�.h�Z�Y�+aTs�RJ�c�6#�R
��ߨ
LX��]�ϫn�|]5�h�C��~d�o_���SΥR�54�ɾ�-��`��R)��X�M'�"��G�MLm���ڝ��T笵_.9����X�Y��%;�ƓP�<�N�E��d,p�Q���?h�e1ҙ��v����b/�"�V�U���^ٹ� I�]�����;���dq8q�:��m�a�{��(P�|���o�om�����w�iߧ����5�P�X���Č�pԁ���Lk>B4f��1�~��[�W��T�|W����՛d�%,&p������7��H�G߸�����A؅�.�MW��5�׀�N�|��g����$��J|*7��������~;.���f=to/���As��B���ΕU�s�ǫ##�&��U1�����('VH�0G.�3�X� d��ZX����B���a\W��P6���P�z�Z�@�Z^U-T}!�Ggn�/�MfKȑ�Hnu�����v�TO���EX�����]L��7�߸y=� ���))��
���AU�vPk'��8j0ٯ}���T�[^Pku��A�ې�:�r7� D/� o�~��n?�ۻ�񎎸.�7=�����/�څ��8}�<:�o�e���N�`I=�l�����0&�kW�P�׷����$�HUjv�4�M� <��ꖌ	e=�TL���������*���΋�wslp0q����l��w��;n��2�\]k��#�}x�dqo�o���eՉ��j�$�F7�D�6y�Z�}u���P��B��������hs8=��_U����qx�.^ڵ�`�Z���Q�lo//��q����9t�H\o3����{S�_yԔ~�Q܊U"�Jv>JRa����ɓ���o��O�����G���O�@o>�6��*z5�<�\�$S �ˣ�<{�3麪����0��F*�35�[��T�KhO���:!�i���3��7�cJ�����'iKZ�l8����=�t-�)Q8������aU�6/����6$�u�|	޼�9��h�%����1�֖�O�ɹ./�����p혚�>�N��ˈy���˒������O$4�D�����3�� kL ��}�s%���VLf6�M_�5�����)����{�p��7��l"\���ݻy��d���v��bA{+�w���*GBsH�Ix_�z-� (-p�����U��ܴ��e�������"r�<fYUS�?�##+�0KX;V����|t4rq�@^� �gc� �8.�;.iǅ�����mJ�O^�z���T�V���"�Z��
���Vh��`4�o_A�����)�./��ŋ�wSJZ�l8%�㵝;ye�N�;M�ʣ�?�-�b��)�qE����3lgj2����%>�� F�������/�a��6qA=?��x)�W0�����ڷ�W�	�g����v����`��͑�pr	�/A���B5��	� �A��__$>L��0�
���/�����mUW]��fe������󧐉��ގ������X�vƊp���ã����-@�Ǽp��5=!A ��3%B����$�=G�s��R��T��T������������R�o�|�P��:S��g1�&�^��tw��޽��ח$�@�8�12��]��KW#�'����g��یc�>6��3����%>d˳G
� �����~C�=���Q�+l]�|�ȥ��A�YoײY��g?!H�'6�2^޵�7�jx�䥳pj��}�D�QK����$���������ru`x�X*���_��t�M��[ZУW��O�=j!�y�`l���ռ�Nh
\��⥱1��� 3E��Sͯӏ	N�[nڞ|��'�$��d}�Z|��ΗJ!p	x��o"��~��F~��ٍ{r?��=�.f�P׏"�:2��{�2_N�H����ܱ��cc�kt�����3h�t��{�� ¢#a�I�Őg�Y$>�K���;������a��|k�V��U��w�����6@�=>�<}�:W����A^ػ����dQi!����;w�����+�^��*n�Go��#a�I��~�kc2�.����J�7�ߵ�ˁ��U�i�?� W�����>i)��� _?=�k���.��{7������CE����k;w.rũ���a��_�7/��͗^@i��y����MR����SO1��#5�+]��Fdx8nE������|\�F���!�%�+`�v����t���C�&�OѝM�8�sg�t��Xcxg�F��8~|.��C��Ck_L��
��l����Gy�[��rt��;��$��M�~�S����Tգ�VPmWc��z��x�@�
���5�>������kr}�U�:�=��}�+�->���+��ε��U�;���ҝ�]��ҥ�߿���y�^,3�.����ُc����c~�6�Y�R)�ǀEC"��ۍ>U���&A�sI������ȫ3G�;�K���Z���ȧ�[6��X��2W��5��B��lѣ
�%x�"�v�G
�m������X��:��a����;���|sϞk_��/��]x?�0 ���6m���h��K�	6w�MJ�ڤ�_�.���ժ݆�k�\�(�#�T�}Ƙ�>jD�7�H#hփ��e�:j�

,zu�]�c���9dn�YPS�O:ķ��OR�7
��)�9¨Ͽ~ �tt���`���5��Ƥ4�N������{@�����^CN�pc�䔖��*T`��s
DU;Tu��'��~�74Vd�<�=�ve��6�̠��o��"\�G���|1*4]Cgd+cc����GYo	��PU�H��U���?�`9ݾ�~PW>*��.��Q�nֱ�Y�yU���U`����H"@O"@[��O,��"@գR�-�9"��:�}��A�#ro����n�z�m��s碝`�&A��U��oQ������1Z�
�~pH���z��dM��O������_�]���*Jh�Ib@[��׾@�F1"���y/��7�A�b�u��R�1"�;""r����Z�|���� G�٤�H��#j�s�� �; B? 8�3�q�GP�'u��WT�EA����'
��"&�j�'u�2��c�ns�T�<�]���[ʺ.%k=?�=�ّ�k�
�'pPD���� �������sdǎ��t3�:���o��'��Ŋ� ���]��nG�O���2fa�@��J��#})(��nZ��b��s�����ƾ� �m��̹j�W����P��9)�3��.�:��`Iu��C�n�;�g ��:V�o����q���ΦFA�X��W�׀�*���?, �(�dU��*��t��^����7R�{:(D�F�t��-��$��,�Fh�\� U����% D(�z%���T�-�0pH����A���:,��-��������X����#ʈ��U�@$B�I-��_�$dUT ��`E��!�����&��sӒP�$1�m�<����s����?.uP�+���O��=���j�Ura?�OD����lC^D.uvr��+��È������D�w��������.�PPT��(Qǹ����U��6���X�����T3W���U� 
�B����K����v��k;E��°c�N6���0"�ͺ���r9I��J8"r��z7K�{�����^/AQI����	��P�=��{���P���"Q-�~	/��Å��1Y���� �D��Z;(��E�WT{,tt�H�B���٥�3�~��	�ُ��< U��������ź��:��e���z����|j�!O?���٥nB�T��]Z�ѱ�tD��l2QRC�$��0L�8�X��8��n��Ƙ,֦�6ut`�gT�cu ���  �IDAT���!"���`j�I��� ������S�n�G]�'�،~1�q4�:�"N���g ���w��mL�ƐPª�g�Y���#�@��Yx�u��?�����63�ڍ1{Hh˒Pº�ZC�0���`6���?�ٟ��M5?[,�4e7a�#����q���q$��a�r�U3����v]�O~�����o��<{���&C-��jE���ń�O"@	���@݈˓����]
C�\����6as�:N����Z�v$l� %l:�;;���o�nΎ�����q���`D�==�g|p�$�߈à�!��MG�N?s�w��#���t.����8�Jh }ܽkW�##�qے�q$������۳G�0�믿Υ�e�#	�������c��'a�ظ���BU�ǁ�i���������g���c�P�݃�<p� #���4L��$����p��~ �yܳg�y�!���Khav���;��α1c�,n锰�H\p	[���UU}PDy�ˡ�a��Y�������ŸmL�	�1�ѻ��֝;�U���qۖ�q$���q' ��p��8�$"���0��ˏ�����G�$uB-JO{;��V>t�}������q����K�8J��8�C)j�:	�{km����iD��dx��}����������L�j�DMh6�T�;v�⣷����A2���2�׌1�f!r�&l=y¦�Xv��X�0�8���<�o�H_��J��93>���Ϝ�Y��$�y�#��ơ�a��i���M�z%�	�+�tPÐLfYiP�&%��MI���R��v0�N���8SD�T�ZK�T��ի|��q�<{�\j
m�����[naߎdS)<�Y�U�
���R鷀� �Tj��D��� %lZr5\i�V<�N�;E�q���1�%�p��J%�OL��S�q����1|!"vuqϞ=ܳg#��d<w�� ��0gjj��mmm�Y2V;�J�y޲�Kؼ$��iY*@�}��W�k�mƘ���h�Y�Y9����3��q��^>y�3W�RL:k���l�C##�{g�q�������R\��{��V����HI Ç�d��@�r
r�	`A	|`�XF$#�BlG�����H�miג�ݵDS�O�K��?��k���$g�� 9�4�����z�[�~�^��G.^�C�Navr� �j�H��o"��������@��:WjW:z� )�/B%���Q�T*�g���1淈h�뷈 vQ���:���xsqﯬ Q���٩)<|�4>x�.�:���iT��1��I�W��	�ܿA� ZͥRʋ�����D&*@ʡ�V�\�nbb�-HY�U*�	�k�Zk?ID�mW�cF��h�)Vj5�������wo�F���**A�3ssX8s��=����VQ	���8	XDn0�W�8��0ꜫ� h斉�
��CH92�ٰYA| ��k���,�c'��w�(YI�"NSԣ�kk�v�&~q��VWQ#A��TpfnO��œ'qa~LM!T������d�"��`槉�r�5 ���A�!@ p���=�2JT��#���+ @��Y"������ �?�A"�15����#�8�f�n��Żw�t�.���p{}��G���U���ř�9�;~����c�0U� ����.R1s�̗<-"߶�^g��4I��uE�*G �ȱQ�f�d�:���v*I�SƘ�&�Ǎ1�c�y��z-k+ui��)�ܺww��q�VÝ���j�mna"17=��������������Y��@h-���������z�Z�vYD�K��k��J+"� ���x*��h���GH9�4�c%��6�LDQt�Z�^�·��Z�k���np�퍙�2�)u�fk��77Q�"ԛ��Eh&	�I�(ےL��e1� 0���E%0���!�a��J3��V1]�bfrLNbvj
ac,�1��l�Ʋ)""p�!I���r�Z��j�z5M�:3G ��¯�O�������h���rd�o��LX�w�E�&�M +A,%Ir��?�K��ۿ���8q�.0�E��r�O� ��DۢhC �hc��~�d�d�bzx��`f$I�4ME�$3 󫫫g �r���5�s��9@�B���C- el(
���x�R1 ��?��3CD:�'f����~Tafo� �c�i
�8��rB�`� |���gϞ�-��t��j)c���Cs 033��
�DtID�[�؈l+[s�^o��b%D������i�$I:�����	c�G���i 7`yy�}!����#) e��Cs���A�Z�(������b�-"�� �9�r�0y�ƋM�����Ж��<%�5#"'��7 |'��
��QRƖcǎu Xk'��7�爨������ٕYEa��I�o�8��m�{��ϖoo�s��K��"A�:
�( e����ٙ�`�x����,�|P@����&��ˋ��EdYD��9GDTP��Z�e��s�$ b�4E��̵Z�����yQ����e7��v��
�Ѯ
W� e�)y�?e��)��[5y��^(�W�k���<;;;���:���'����'o����=[�޺R�����_�v�.]��i���
�2֔��~`�{|ލ5��W�)ZD� *�F��h+++0�l?~�r)�_mwm7���ݯT� e�)q�/�	��[	yk��"ۉ�6�K�M�>~����$J�s���y��~��ZE�Y �+�>Tƛ���)�!��4<�V���{?I~����;�,�|:�B��eܸq��Kr����9�HEDfT|�2�Rƚ����e��.-�6"�s����@kHhY7�O�.�gqq�h�,�����L�ٜpo�mQj)J'=	ЀH���'N�ĉ����e�)"b̍���D- e�)�{E;
D"r��J�V�ι� >ҷV�"2D������5%AB�������߀��B�j��&F,@ L��7U *@���AX`�V��d���ˣN$"��u-m� E�dԉʜ����^Ȇ�ι7Z��zJAԕ�
�2֔tУ^�3�7fffR �պ�#(��b �E��:�v�� )۠��5%Q'w��:hD��̯�c�:h�����B���l�c}nf/� )�h�2��s�e[u�M�L��5�,��vc��j� ^�w{�OFݲ������5%N���?��������z�d�:���v�t�i?����XS�6nG9FD�s�a��K�wK�Z� \���C)���nLS9Ш )cM� �����lx��LݽQA��� �0��nZ�3����(��HQ:���F�$/%I���-.\(;]�����=@-��<R�}3Q��������w>�W��*����˥����*
���9%o�nD�h2��J��� �+��" o3��Dtn�������G����Qu�u ���J��J�������M��+���Tð�2T���Q��Ƚ4M����"e��"��~�G��R�)e��2֔t�{��#"�8�~�z��<Q-?��0s�3��{G �r�J)*@�XS���9�T<DT�V ���a����C`�Z��`�iy��EEق�)J'�']�/""�q?�c�q�\_D��:=��B�@D��> � E�ds���H��WQ~�WN�:�q�!�0�;�~�![#"�ι����rH�!8E�d�4�D�*�J
t�_OL�oe��Ɏ��R �2�Ƙ����`mX�)�����av�`-�����sOD�=�J
8��CpJj)cMIg84����B��<XZZjg�V�1�.��w�e�k4w�Q�r�PHk�1�meXu�3=C��z
����'�ͿqD�3��/�w3� ���*� e�):ǝs��,�-��w|�^�="�Z��Ɖ����t�_��-T������ۍa�+"M��K �T�ϟ�8ά��s�U o�^O���f������=�V9Z�HkJB�o�e,_L�wZM��i��!�귵P��� �E��D��}�hk�	-��p��2�w"K�9�ɨ�s�m䒏+GZ�`�7�y�Í	3�_�2{�W�T������e[��νCD��1O�a�,��|����,�;���*���r ����7E��_�2֔L��E�*�GT�c�����7�_Xk��G�*=)"@D��4N�dK�UE��(���|m��o �*���F.^��q\�VQ�Vc"���<7�zE$��:	U� E�Ȇ�b"zg�X��������g��wv#�vs �f��lמI�p{ e+G e쉢Q�I�Q�$W2��75f�&���D����d�W���T1�[��t��[(� E�$p��W�\�#���z��C�p��C=�-<���5��D�m"�b�G*JBP�"*�K4�s?��~�#"�ι� ����1s���tC�x������U��lf^e[�R��l�ȋ�*,[��8��e����s� ��j7�M��D�_���7�_��pET�����pν$"i� ���� ��'�B477ׇj�F66�־��O�?9�6���Ơ�9)� E�l6�l6}�p,"W�yq��H3M� <y:co��d^XM����������6�4}&MS�i:�,��CHQʹ��E���B��@ �"4;;��*�CE�;"�Yf�ϚH����8~�<i�=����=ŷ��GR�o�kt����$I� ��?jK��%;�"��fE���-YZ����� �S�B�?J E����2?PEя�s/�(��4M���e�a8�ȷ"�F#�\ �M��"�^�a�"�j�*�I��R�
��l�*�'z�##"���l���I�t3M��2T*�~�qO�;wQm9o�u ���?���z)���M�m�5TȾ�(� )
�]��(���Y�"�Y��`��s��Ϊ��	?9��� H ��1�3"�m��$I�7�$�\Ң��U�$*@��3w�s� "�`�e��$�3ι�pe��>��~�ȉ�����oE�K�9_��w����ܟ̧z�G�p�P��(;P�T ��i�7����ttę���Ϙ�If� o��"t��gaa�L|  �x��w"�i�q�%9�^t��5�g���ȡ�Q48_Qr�����f�	k��|�s��& ��l8�1�S�گ&Iؒ��;������=��ؚ� ��0�<������"�!"��c̕4M_B+�A�ߗ_����(�	 E��� >�J  �ι�7�\B������2�f�z`�tg��rk���� @{(�Zi��3�l�mEHH� E)�;ۂ� �ߩ��������A��R+n�L|������e'��(�0�Q|��.H���� �I��X*��������
�<9WB    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player.png-b12d81cacd41edd115dbd315254b5ad9.stex"

[deps]

source_file="res://Sprites/player.png"
source_md5="c8c6e0f28b5b2758bfbb6db53f21768c"

dest_files=[ "res://.import/player.png-b12d81cacd41edd115dbd315254b5ad9.stex" ]
dest_md5="882d0f2e137690717980a4e6248bf0d7"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

radiance_size = 4
sky_top_color = Color( 0.0470588, 0.454902, 0.976471, 1 )
sky_horizon_color = Color( 0.556863, 0.823529, 0.909804, 1 )
sky_curve = 0.25
sky_energy = 1.0
ground_bottom_color = Color( 0.101961, 0.145098, 0.188235, 1 )
ground_horizon_color = Color( 0.482353, 0.788235, 0.952941, 1 )
ground_curve = 0.01
ground_energy = 1.0
sun_color = Color( 1, 1, 1, 1 )
sun_latitude = 35.0
sun_longitude = 0.0
sun_angle_min = 1.0
sun_angle_max = 100.0
sun_curve = 0.05
sun_energy = 16.0
texture_size = 2

[resource]

background_mode = 2
background_sky = SubResource( 1 )
background_sky_custom_fov = 0.0
background_color = Color( 0, 0, 0, 1 )
background_energy = 1.0
background_canvas_max_layer = 0
ambient_light_color = Color( 0, 0, 0, 1 )
ambient_light_energy = 1.0
ambient_light_sky_contribution = 1.0
fog_enabled = false
fog_color = Color( 0.5, 0.6, 0.7, 1 )
fog_sun_color = Color( 1, 0.9, 0.7, 1 )
fog_sun_amount = 0.0
fog_depth_enabled = true
fog_depth_begin = 10.0
fog_depth_curve = 1.0
fog_transmit_enabled = false
fog_transmit_curve = 1.0
fog_height_enabled = false
fog_height_min = 0.0
fog_height_max = 100.0
fog_height_curve = 1.0
tonemap_mode = 0
tonemap_exposure = 1.0
tonemap_white = 1.0
auto_exposure_enabled = false
auto_exposure_scale = 0.4
auto_exposure_min_luma = 0.05
auto_exposure_max_luma = 8.0
auto_exposure_speed = 0.5
ss_reflections_enabled = false
ss_reflections_max_steps = 64
ss_reflections_fade_in = 0.15
ss_reflections_fade_out = 2.0
ss_reflections_depth_tolerance = 0.2
ss_reflections_roughness = true
ssao_enabled = false
ssao_radius = 1.0
ssao_intensity = 1.0
ssao_radius2 = 0.0
ssao_intensity2 = 1.0
ssao_bias = 0.01
ssao_light_affect = 0.0
ssao_color = Color( 0, 0, 0, 1 )
ssao_quality = 0
ssao_blur = 3
ssao_edge_sharpness = 4.0
dof_blur_far_enabled = false
dof_blur_far_distance = 10.0
dof_blur_far_transition = 5.0
dof_blur_far_amount = 0.1
dof_blur_far_quality = 1
dof_blur_near_enabled = false
dof_blur_near_distance = 2.0
dof_blur_near_transition = 1.0
dof_blur_near_amount = 0.1
dof_blur_near_quality = 1
glow_enabled = false
glow_levels/1 = false
glow_levels/2 = false
glow_levels/3 = true
glow_levels/4 = false
glow_levels/5 = true
glow_levels/6 = false
glow_levels/7 = false
glow_intensity = 0.8
glow_strength = 1.0
glow_bloom = 0.0
glow_blend_mode = 2
glow_hdr_threshold = 1.0
glow_hdr_scale = 2.0
glow_bicubic_upscale = false
adjustment_enabled = false
adjustment_brightness = 1.0
adjustment_contrast = 1.0
adjustment_saturation = 1.0

            GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�  tIDATx��{p�U�����#�t��y�@y@�	��D�8;#ಳ���S3���FJ�*�-�]fQ�qx�K��B��$�y����o�AB:�n���U����{�=�|����ۢ`�<<^? �V����.%!L��(�K���m�e5p,� ZD��y x�~��h�=#@u�48��n����@��1��Z�^��$�} j��V��R!�tK��/�"$��^�>��d�=R�����% �7�J�>!Im�	�Ԛ��x !$Tj:c�DB��������4BSd4h ��IH*���x �Tj��$ ����I:��@�J�3�U߅�R���N%-�B�A �V�u�it���J@�7������I � B��В`b��b�3�}��bg��b,	���U ����,̞2�IwR�3!����}���ưm~��1-�����P~�������49�Dϸ;�pD��L徱�!QV�ƻ{�8\�¸O�N�w��[���-�Ⱥ��<�`�0+w����,���u�$�n��ɳ�q�7�������E�ֲ�������w����͜1Cx����Kouk�O̠�dӑx�2��?P��3�ә~GcF����+hs��s\w:�&�&)���w����n���2�r()�'{���!vJ����Ql8T��/wk�����=U,~�I�f�MO��;\�N��Z��@�:[����]��Z������-G�¶�ym�"�h�24����7����[��{:��h������*�S�7}ċ�:���t��Վ�ew���#^�<�u2S�-�LM�y[�KfW=��^{�1���=�8ߝ6�݇������p����,|��&�MU���Ǝ�鋊������sOSR��ʷ6����L����0i�w ��}�xsC�rŨiO) &������i�p�C����/�S����>�MIQ9Y��e5�%Rn���%�ܒ��?�s����OL��?���ƤS�	�������?�(����)3�����x�Lv��"k�U��T#?�7��fݏ�d��i闁})��_���6���Q���geY����U'բg�ܙ��7���}��s�%���P��������n�݌�'S���y���d��SQ����\������j���4^j۾k�9	.[<I�a�S=��ht�t��[==��
+��BRiX�xn�r":`������+il��il���+W���)%�Ft���t�;�l��!�
����y��Y��Et@C��L��Iy���o3��Rȴih����?�MYEK��a3i��@b3iY2-���>�xwĺ
���o֡�^x0?�J$/<��FR��o�
�_@����K��vwg'SZ�wJ�VSZh���d^[�������F���e�3HO2�ZG��xr\�YV�&-�Ml=Vω����h)�Lb��t�N����xm��5rb5��ç{��u,`�k{M�Z�Z^�;�������M����[�n,�5�$���d# ��Iz������������2��xL�`oy�%�ydX��={�E1g�#�zx67ld��lF�%�m���'51�y�ȴD�O�fㆍ�zx6sf?¢��8{�,V#KJ�bQ�W��3��L����e�ϗQYy �������}{�:���Q����%�^PBqfR����۷�7^��3	RYy��?_���e��d����3��a�&�������ԣ|׮�d��<מ�$	$I�kO�)w��]�z.aMMM���#�`Xr�����+�O�N�\�����6��ËV~���WsG���v@c���]��撗��{)I3g��pU�)��UfΜ�$uW1/?���\�_v�%>�KZ��O�Q���rJKKIM�SXX����m���Tc�2w�j�m��|�/),,$5�N���X��+���C��$EO7�����iy����"�����h�6��m���~����\����ҫ�bԪQ�3;X��WT6��o��e�+������0hT��Z�Z"�v��"�+�Ŏ���	�
k�T�fOV�O@[�F��٠' �i<@PVX�eM�r��y#�����I�#@��%C�Q�N�ˏ�����]��OyC;m�9J���OK�f�b3i����L���'4������kvr�Çդ%+�Ș��nuZ=���z�Q�aaL���r���-����.��ǊI�.(����p�9��ΠY�ރ��i8Py�w�Vu{f���g�ΨtK���?�G�-��mrA
���|P����[x�J.?-����ߓM��!}X�Q;  ˨U=á�+J�9<gZѫ%�aBU�$H��[��owV��㟦�R���J�aW�j	�J����uԨ�`�e5QO�m�.����b���]^j���zW���U5�\W���j.�P�$��E���4W^jb���a5ii�� 5�P^]��9��;��Cq��\`p����AZ��+/�.�BWً�BH2j0i�u����+#�9s��O{���{��d��ߡ0�������'eq�e��ZL:5&��I����D���Nez���.��p�H6ki�hl���q���|A\� ��~v�i۾0�B��Ț#'�5+��Q�V���.����G���o��W��I�A��?�>�0꣱.|� /��DA���g �ƌ�����D^Y��O�%�epǾcd���x�L�*�W�����hQK��^���v^�`;���}�����`�%O�&�n�w;+8Zۿ��2&+�N�%�f⵵[X��O1�P����� ZC���ՔU�0�<Z2���8}.�6:���a6M��'����ʲ�ֲm�����Keԓ`84j5ߛu?���5�Ls���O5r�����mx�Oe�E��(L�P��Ĕ�vR���;Y���������]�`�ЅZ�b�]�̚2����U*�BeSU�\Էxhl������㗑C
mW��YT���Ua1h��Ǟ�'�j`� �'��AY��c����9RFP�q��ע�i(�Ϧ8?���3��"����h������q�������0�G"�;B���8x�O���L�Q��b#-�J�لѠC-IX-��rG�9�����t���BC� �=���VP�aVe�~3���o������@���SP�
� !y��m᪭
���� �o�;@���V�߹]�ZQ9���M���$��(�,	i�w{����ֿj'�� ^g�����U�̑ �j��ɠ�<(J!$��c��A�Og��n��PB�;��)!IV:P���V�g�>�*���d�Ƿ�`�-1u>�ۇ*=o n�O��Rp�9�j�P=B�>�������w���
��"��eY�Q�Ѩ��1>��g�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"

[deps]

source_file="res://icon.png"
source_md5="ae7e641067601e2184afcade49abd283"

dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]
dest_md5="84511021bbc8c9d37c7f0f4d181de883"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       [remap]

path="res://Scripts/AstiliaLevelManager.gdc"
          [remap]

path="res://Scripts/Bullet.gdc"
       [remap]

path="res://Scripts/GameManager.gdc"
  [remap]

path="res://Scripts/Menu.gdc"
         [remap]

path="res://Scripts/NetworkManager.gdc"
               [remap]

path="res://Scripts/Player.gdc"
       �PNG

   IHDR   @   @   �iq�  qIDATx��{pTU����~���I�A	$2$�H E, 
(�>��ؙ\vvqtwj�ف�}��H�S�̨�*����0��
��S^�
B!$��t������!��N��t�_U�n�9�;������sסO�'}��QA!~'i�E�Dw2��P��w=�%EY}���c�˕�ɢ�!u�$m�)��qz�ȷD�~F����y��ly���n\s�i�}�����$!�Pi��4:$YF�V��g%H0��u��� *�.����zr�W֥Ô���V-���>��Z�G�d�����B I2*��FK��A� !��_�#1��'��:� �MH��V�ܯ~\mV���-�HZYZ(@Vk���H�
�V�@�ZYZ(Ձd��V����akPxP�������:[�$�����KJ00u|	�Y�^��43u|	I	�7��U ��������=e<��*bX�@�(�¦���C��ŢG�[6!AE���%v)g���X[�EϘ;�hh�L徱E!Q^�ʻ{�9|��qy&�*�����OEu]�r��Y�-�Ⱥ�8x����F�2����,���u��n�ɩs�1�7�H���w�/���/��x=��3���ɜ�y����ov)���������%\� ��6��%-A�̒L�����y<��JZ�Θ��i޴��HN�g�;�x{Ou��� �r���;�L�@3�Ņ�3f�������<����%�"91�iG�R�ض ����8�L��2��cu̽+��/[��}��˖�u!�tȼ��XS�]k�	:5�������3��t��ڝ��W������(�]�7uĊ�:��� �
��֨ew��#VD��j���L�NO��Z��CfG���N}�Q��_>�ߟ6�݇��ݻ��t�
z���/z��&�Mu���F[Ԋ�Fe���&;���S����͍�<^����9L�= ��c+���\1bړ
���6��?������_�������%���wSZ\@^N&�y���*7oiT�`^� ����z�<���'��{�/`Ъ��������x��;��r4[�eFR��b�̛�ί/�v� v�n�G�����qx�,�t��5�}2�7�A�u�/p���{x�e�Y�e��9�9�'�X2o&��>?p�W��� �dֿ�sj��<���@ׯ�o���	P���yё��Ǡ��l�wy���}l����l�WZB��h�v�˗�C�լ�v��� ���o�x��W7�|�U�N#�j�/�׫���=��qŅ���*�B��#�mn��k��=�4lް���E���'b�����\�:��6_X44Y�6�1� ��{;3� �lSM�']a��ǻ)��a�LML�OLK�P^YÇ��7��� ���:Ԓ�s�T���QK
���:�����(p��
����ݹ)��ҺՔ��;7�W�n�bÕ^�G4�ӧ{Y��2��=�Ѫ$��CI��AC����c���z����df��dHZ�/�k���`m�+ǁ�8�>?�toD�#^�u���8/�E�1 ��ƽ��ܓ�ʻ{����ͅ�����\`����J�(+�������hvz{(�T<��`Oq�ed�8w��-f��G���l6n�Ȃ���HY.=QGzb�����,�������l��~�ŋs��9��q,-+�F��sH,^�b�n7�~����� 8�N^�u����������dV/,e��RJ����Oaf߾�����8��A����,��r�n7����{8���b@AEE��[��]�< ���|s�$�$A�9�������}�X,TTT �`pJ���쀦k�O�V2]���d�~�ds�ф�{t��d�{|��hlss���|

��.%Ib����>v���̙3���*����ū���Ob�
+����2����b�op���<��̝�q�ͬX����HO7S�@+W�@A��'�P=6A�3m����xfZ���!pz�l=ZǺ��!��=�������yj�`^x�e�4*E��e�>��*K������p���O��
�Z����9|�`�ח1^[_�8u9d_@a͞j��&˨�j���B�Yb�7��z5�PX�eM�r#�y3��'�b@�-@����Q�I�Ë�����\�쥢������e$�(�H�d�`2h04�����j����r����7ٹb�`4h�I�c� c�<-.~�ցee%1:��c:���fN��|`ţ%dܰ(�j�`ux9��ƀ-9ƞm7Up��*�����x��O�?��Ia�?�@٦���RY��P������_Tauxivt]��=��؋%��|� *��r���uV%�Ft*	w���,	2���l�;+�����|J�R�%A ��N%��%ꬮ�A�,��C����lms`��9,f���
���7�ʜ�C%K�\qt�7��\q��%�7��a����.u��h���j�-��BÇ���n��7�UO|s�������iq�P�}к0{i�?4! 9N�A�"N�U͎�B1<#���z�������)&��=�2�8U߽����2No��x�
�V�ɠ!��s�^�U���K=wp�Z�:<��khs�hluc���:�8<~?W�^v�m
Y�(+�Lck���Ԭ�7G�5����3�s�v~��I���ǐ�<�����~(�xk���ǋk61,#��(�v:G-D{$xXF"/��ԫ���0�c�1r�SY2o&*Y���g�m+<RT��_�c�p3�}����EW>�
Wo����ҧf�o��՝���[��f���O��m2���-�����eȩy#�@��<�t���5L9���C�����r?O�����lb��!�pR�--,e-�v�J���>TF�	�B�R�Y�3����i����t#'j[8Uߊ�~W&Rtj���$�s��2�Lj���6;�?���>��?�%rG'�'t��e&�UĬ)�_2�,*TYlT_qP�좱͍��M�ˇ� Th�vL.I�F�z�L�^MZ�s��,���IK@��@�/��a�_��H9���;8���VMqa.%����#7�L�)��'���T�5r��y�WTs�L5�(z�pDuF(�O�������4j�&2R�$���kQIƤ�p���N ����fw���LC��/�9�͢RP��(J�������[���op+P�����B=�_&���i�B��t���w����a��k�.	X�(J��q}'ZA0���q�(J@�j���5jԨUw|d�!�m�J�?n{(
N����s�o�~�]��S}|�dP�=.%�B�;��h��Y?>����Bvۮ��o=,�i]��IZ�w��˳��lY��u���NCWj^��.%e���O-T&�(:��s������|�3�y?��c�ٓ��Z}�s�����J~u�qK    IEND�B`�      ECFG      application/config/name$         GodotWizardsBattlegrounds y    application/run/main_scene          res://Levels/Menu.tscn     application/config/icon         res://icon.pngn    autoload/NetworkManager(          *res://Scripts/NetworkManager.gd)   rendering/environment/default_environment          res://default_env.tres      GDPC