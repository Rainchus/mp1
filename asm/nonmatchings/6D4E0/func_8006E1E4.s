	.set noat
	.set noreorder

glabel func_8006E1E4
/* 6EDE4 8006E1E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6EDE8 8006E1E8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6EDEC 8006E1EC AFB20018 */  sw         $s2, 0x18($sp)
/* 6EDF0 8006E1F0 AFB10014 */  sw         $s1, 0x14($sp)
/* 6EDF4 8006E1F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 6EDF8 8006E1F8 00A09021 */  addu       $s2, $a1, $zero
/* 6EDFC 8006E1FC 00042400 */  sll        $a0, $a0, 0x10
/* 6EE00 8006E200 00042403 */  sra        $a0, $a0, 0x10
/* 6EE04 8006E204 00041080 */  sll        $v0, $a0, 2
/* 6EE08 8006E208 00441021 */  addu       $v0, $v0, $a0
/* 6EE0C 8006E20C 00021140 */  sll        $v0, $v0, 5
/* 6EE10 8006E210 00441023 */  subu       $v0, $v0, $a0
/* 6EE14 8006E214 00021080 */  sll        $v0, $v0, 2
/* 6EE18 8006E218 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6EE1C 8006E21C 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6EE20 8006E220 00438821 */  addu       $s1, $v0, $v1
/* 6EE24 8006E224 24100001 */  addiu      $s0, $zero, 1
/* 6EE28 8006E228 00102C00 */  sll        $a1, $s0, 0x10
.L8006E22C:
/* 6EE2C 8006E22C 86240044 */  lh         $a0, 0x44($s1)
/* 6EE30 8006E230 00052C03 */  sra        $a1, $a1, 0x10
/* 6EE34 8006E234 0C019D4B */  jal        func_8006752C
/* 6EE38 8006E238 3246FFFF */   andi      $a2, $s2, 0xffff
/* 6EE3C 8006E23C 26020001 */  addiu      $v0, $s0, 1
/* 6EE40 8006E240 00408021 */  addu       $s0, $v0, $zero
/* 6EE44 8006E244 00021400 */  sll        $v0, $v0, 0x10
/* 6EE48 8006E248 00021403 */  sra        $v0, $v0, 0x10
/* 6EE4C 8006E24C 2842000A */  slti       $v0, $v0, 0xa
/* 6EE50 8006E250 1440FFF6 */  bnez       $v0, .L8006E22C
/* 6EE54 8006E254 00102C00 */   sll       $a1, $s0, 0x10
/* 6EE58 8006E258 240600FF */  addiu      $a2, $zero, 0xff
/* 6EE5C 8006E25C 00D23023 */  subu       $a2, $a2, $s2
/* 6EE60 8006E260 86240044 */  lh         $a0, 0x44($s1)
/* 6EE64 8006E264 2405000A */  addiu      $a1, $zero, 0xa
/* 6EE68 8006E268 0C019D4B */  jal        func_8006752C
/* 6EE6C 8006E26C 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 6EE70 8006E270 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6EE74 8006E274 8FB20018 */  lw         $s2, 0x18($sp)
/* 6EE78 8006E278 8FB10014 */  lw         $s1, 0x14($sp)
/* 6EE7C 8006E27C 8FB00010 */  lw         $s0, 0x10($sp)
/* 6EE80 8006E280 03E00008 */  jr         $ra
/* 6EE84 8006E284 27BD0020 */   addiu     $sp, $sp, 0x20
