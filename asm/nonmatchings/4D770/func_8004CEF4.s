	.set noat
	.set noreorder

glabel func_8004CEF4
/* 4DAF4 8004CEF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4DAF8 8004CEF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4DAFC 8004CEFC AFB00010 */  sw         $s0, 0x10($sp)
/* 4DB00 8004CF00 00A08021 */  addu       $s0, $a1, $zero
/* 4DB04 8004CF04 00042400 */  sll        $a0, $a0, 0x10
/* 4DB08 8004CF08 0C014AA3 */  jal        func_80052A8C
/* 4DB0C 8004CF0C 00042403 */   sra       $a0, $a0, 0x10
/* 4DB10 8004CF10 00401821 */  addu       $v1, $v0, $zero
/* 4DB14 8004CF14 2610FFFF */  addiu      $s0, $s0, -1
/* 4DB18 8004CF18 00108400 */  sll        $s0, $s0, 0x10
/* 4DB1C 8004CF1C 00108403 */  sra        $s0, $s0, 0x10
/* 4DB20 8004CF20 2E020009 */  sltiu      $v0, $s0, 9
/* 4DB24 8004CF24 1040000C */  beqz       $v0, .L8004CF58
/* 4DB28 8004CF28 00101080 */   sll       $v0, $s0, 2
/* 4DB2C 8004CF2C 3C01800D */  lui        $at, %hi(D_800CB060)
/* 4DB30 8004CF30 00220821 */  addu       $at, $at, $v0
/* 4DB34 8004CF34 8C22B060 */  lw         $v0, %lo(D_800CB060)($at)
/* 4DB38 8004CF38 00400008 */  jr         $v0
/* 4DB3C 8004CF3C 00000000 */   nop
/* 4DB40 8004CF40 080133D7 */  j          .L8004CF5C
/* 4DB44 8004CF44 24020001 */   addiu     $v0, $zero, 1
/* 4DB48 8004CF48 080133D7 */  j          .L8004CF5C
/* 4DB4C 8004CF4C 24020002 */   addiu     $v0, $zero, 2
/* 4DB50 8004CF50 080133D7 */  j          .L8004CF5C
/* 4DB54 8004CF54 24020004 */   addiu     $v0, $zero, 4
.L8004CF58:
/* 4DB58 8004CF58 00001021 */  addu       $v0, $zero, $zero
.L8004CF5C:
/* 4DB5C 8004CF5C A0620017 */  sb         $v0, 0x17($v1)
/* 4DB60 8004CF60 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4DB64 8004CF64 8FB00010 */  lw         $s0, 0x10($sp)
/* 4DB68 8004CF68 03E00008 */  jr         $ra
/* 4DB6C 8004CF6C 27BD0018 */   addiu     $sp, $sp, 0x18
