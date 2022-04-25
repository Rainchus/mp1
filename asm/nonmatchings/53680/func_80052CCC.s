	.set noat
	.set noreorder

glabel func_80052CCC
/* 538CC 80052CCC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 538D0 80052CD0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 538D4 80052CD4 AFB10014 */  sw         $s1, 0x14($sp)
/* 538D8 80052CD8 AFB00010 */  sw         $s0, 0x10($sp)
/* 538DC 80052CDC 0C014AA3 */  jal        func_80052A8C
/* 538E0 80052CE0 00A08021 */   addu      $s0, $a1, $zero
/* 538E4 80052CE4 00408821 */  addu       $s1, $v0, $zero
/* 538E8 80052CE8 A2300002 */  sb         $s0, 2($s1)
/* 538EC 80052CEC 0C0165E6 */  jal        func_80059798
/* 538F0 80052CF0 2404002C */   addiu     $a0, $zero, 0x2c
/* 538F4 80052CF4 14400006 */  bnez       $v0, .L80052D10
/* 538F8 80052CF8 320200FF */   andi      $v0, $s0, 0xff
/* 538FC 80052CFC 3C01800C */  lui        $at, %hi(D_800C53E0)
/* 53900 80052D00 00220821 */  addu       $at, $at, $v0
/* 53904 80052D04 902253E0 */  lbu        $v0, %lo(D_800C53E0)($at)
/* 53908 80052D08 08014B48 */  j          .L80052D20
/* 5390C 80052D0C A2220001 */   sb        $v0, 1($s1)
.L80052D10:
/* 53910 80052D10 3C01800C */  lui        $at, %hi(D_800C53E4)
/* 53914 80052D14 00220821 */  addu       $at, $at, $v0
/* 53918 80052D18 902253E4 */  lbu        $v0, %lo(D_800C53E4)($at)
/* 5391C 80052D1C A2220001 */  sb         $v0, 1($s1)
.L80052D20:
/* 53920 80052D20 8FBF0018 */  lw         $ra, 0x18($sp)
/* 53924 80052D24 8FB10014 */  lw         $s1, 0x14($sp)
/* 53928 80052D28 8FB00010 */  lw         $s0, 0x10($sp)
/* 5392C 80052D2C 03E00008 */  jr         $ra
/* 53930 80052D30 27BD0020 */   addiu     $sp, $sp, 0x20
