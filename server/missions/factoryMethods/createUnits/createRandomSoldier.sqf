private ["_soldierTypes","_uniformTypes","_vestTypes","_weaponTypes","_group","_position","_soldier"];

_soldierTypes = ["C_man_1","C_man_1_2_F","C_man_1_3_F","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F"];
_uniformTypes = ["U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam"];
_vestTypes = ["V_PlateCarrier1_cbr","V_PlateCarrier1_rgr"];
_weaponTypes = ["arifle_TRG20_F","LMG_Mk200_F","arifle_MXM_F","arifle_MX_GL_F"];

_group = _this select 0;
_position = _this select 1;

_soldier = _group createUnit [_soldierTypes call BIS_fnc_selectRandom, _position, [], 0, "NONE"];
_soldier addUniform (_uniformTypes call BIS_fnc_selectRandom);
_soldier addVest (_vestTypes call BIS_fnc_selectRandom);
[_soldier, _weaponTypes call BIS_fnc_selectRandom, 3] call BIS_fnc_addWeapon;

_soldier
