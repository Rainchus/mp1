	.set noat
	.set noreorder

glabel func_800F9BC8_D1038
/* D1038 800F9BC8 00803021 */  addu       $a2, $a0, $zero
/* D103C 800F9BCC 8CC40050 */  lw         $a0, 0x50($a2)
/* D1040 800F9BD0 90C3004C */  lbu        $v1, 0x4c($a2)
/* D1044 800F9BD4 000310C0 */  sll        $v0, $v1, 3
/* D1048 800F9BD8 00431023 */  subu       $v0, $v0, $v1
/* D104C 800F9BDC 00021080 */  sll        $v0, $v0, 2
/* D1050 800F9BE0 3C038010 */  lui        $v1, %hi(D_800FE2C8)
/* D1054 800F9BE4 2463E2C8 */  addiu      $v1, $v1, %lo(D_800FE2C8)
/* D1058 800F9BE8 00433821 */  addu       $a3, $v0, $v1
/* D105C 800F9BEC 8CC20040 */  lw         $v0, 0x40($a2)
/* D1060 800F9BF0 84430000 */  lh         $v1, ($v0)
/* D1064 800F9BF4 00031040 */  sll        $v0, $v1, 1
/* D1068 800F9BF8 00431021 */  addu       $v0, $v0, $v1
/* D106C 800F9BFC 00021180 */  sll        $v0, $v0, 6
/* D1070 800F9C00 3C03800F */  lui        $v1, %hi(D_800F2B7C)
/* D1074 800F9C04 8C632B7C */  lw         $v1, %lo(D_800F2B7C)($v1)
/* D1078 800F9C08 00432821 */  addu       $a1, $v0, $v1
/* D107C 800F9C0C 8C83005C */  lw         $v1, 0x5c($a0)
/* D1080 800F9C10 24020020 */  addiu      $v0, $zero, 0x20
/* D1084 800F9C14 1062000B */  beq        $v1, $v0, .L800F9C44
/* D1088 800F9C18 2402FFFF */   addiu     $v0, $zero, -1
/* D108C 800F9C1C 84A3000C */  lh         $v1, 0xc($a1)
/* D1090 800F9C20 54620009 */  bnel       $v1, $v0, .L800F9C48
/* D1094 800F9C24 00001021 */   addu      $v0, $zero, $zero
/* D1098 800F9C28 C4E20008 */  lwc1       $f2, 8($a3)
/* D109C 800F9C2C C4C0001C */  lwc1       $f0, 0x1c($a2)
/* D10A0 800F9C30 46001032 */  c.eq.s     $f2, $f0
/* D10A4 800F9C34 00000000 */  nop
/* D10A8 800F9C38 00000000 */  nop
/* D10AC 800F9C3C 45010002 */  bc1t       .L800F9C48
/* D10B0 800F9C40 24020001 */   addiu     $v0, $zero, 1
.L800F9C44:
/* D10B4 800F9C44 00001021 */  addu       $v0, $zero, $zero
.L800F9C48:
/* D10B8 800F9C48 03E00008 */  jr         $ra
/* D10BC 800F9C4C 00000000 */   nop
