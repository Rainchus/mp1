	.set noat
	.set noreorder

glabel func_8004A5BC
/* 4B1BC 8004A5BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4B1C0 8004A5C0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4B1C4 8004A5C4 AFB20018 */  sw         $s2, 0x18($sp)
/* 4B1C8 8004A5C8 AFB10014 */  sw         $s1, 0x14($sp)
/* 4B1CC 8004A5CC AFB00010 */  sw         $s0, 0x10($sp)
/* 4B1D0 8004A5D0 3C04800D */  lui        $a0, %hi(D_800D6AF0)
/* 4B1D4 8004A5D4 24846AF0 */  addiu      $a0, $a0, %lo(D_800D6AF0)
/* 4B1D8 8004A5D8 00002821 */  addu       $a1, $zero, $zero
/* 4B1DC 8004A5DC 0C022228 */  jal        func_800888A0
/* 4B1E0 8004A5E0 00003021 */   addu      $a2, $zero, $zero
/* 4B1E4 8004A5E4 3C04800D */  lui        $a0, %hi(D_800D7F20)
/* 4B1E8 8004A5E8 24847F20 */  addiu      $a0, $a0, %lo(D_800D7F20)
/* 4B1EC 8004A5EC 00002821 */  addu       $a1, $zero, $zero
/* 4B1F0 8004A5F0 0C022228 */  jal        func_800888A0
/* 4B1F4 8004A5F4 00003021 */   addu      $a2, $zero, $zero
/* 4B1F8 8004A5F8 0C012944 */  jal        func_8004A510
/* 4B1FC 8004A5FC 00008021 */   addu      $s0, $zero, $zero
/* 4B200 8004A600 0C01294C */  jal        func_8004A530
/* 4B204 8004A604 00000000 */   nop
/* 4B208 8004A608 3C04800E */  lui        $a0, %hi(D_800D8090)
/* 4B20C 8004A60C 24848090 */  addiu      $a0, $a0, %lo(D_800D8090)
/* 4B210 8004A610 00002821 */  addu       $a1, $zero, $zero
/* 4B214 8004A614 0C022278 */  jal        func_800889E0
/* 4B218 8004A618 24060001 */   addiu     $a2, $zero, 1
/* 4B21C 8004A61C 3C04800E */  lui        $a0, %hi(D_800D8090)
/* 4B220 8004A620 24848090 */  addiu      $a0, $a0, %lo(D_800D8090)
/* 4B224 8004A624 00002821 */  addu       $a1, $zero, $zero
/* 4B228 8004A628 0C022278 */  jal        func_800889E0
/* 4B22C 8004A62C 24060001 */   addiu     $a2, $zero, 1
/* 4B230 8004A630 3C12800D */  lui        $s2, %hi(D_800D6740)
/* 4B234 8004A634 26526740 */  addiu      $s2, $s2, %lo(D_800D6740)
/* 4B238 8004A638 00101080 */  sll        $v0, $s0, 2
.L8004A63C:
/* 4B23C 8004A63C 00501021 */  addu       $v0, $v0, $s0
/* 4B240 8004A640 00021080 */  sll        $v0, $v0, 2
/* 4B244 8004A644 00528821 */  addu       $s1, $v0, $s2
/* 4B248 8004A648 8E240008 */  lw         $a0, 8($s1)
/* 4B24C 8004A64C 10800004 */  beqz       $a0, .L8004A660
/* 4B250 8004A650 26100001 */   addiu     $s0, $s0, 1
/* 4B254 8004A654 0C00EDE6 */  jal        func_8003B798
/* 4B258 8004A658 00000000 */   nop
/* 4B25C 8004A65C AE200008 */  sw         $zero, 8($s1)
.L8004A660:
/* 4B260 8004A660 2A020028 */  slti       $v0, $s0, 0x28
/* 4B264 8004A664 1440FFF5 */  bnez       $v0, .L8004A63C
/* 4B268 8004A668 00101080 */   sll       $v0, $s0, 2
/* 4B26C 8004A66C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4B270 8004A670 8FB20018 */  lw         $s2, 0x18($sp)
/* 4B274 8004A674 8FB10014 */  lw         $s1, 0x14($sp)
/* 4B278 8004A678 8FB00010 */  lw         $s0, 0x10($sp)
/* 4B27C 8004A67C 03E00008 */  jr         $ra
/* 4B280 8004A680 27BD0020 */   addiu     $sp, $sp, 0x20
