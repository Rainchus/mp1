	.set noat
	.set noreorder

glabel func_800F89A8_CFE18
/* CFE18 800F89A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* CFE1C 800F89AC AFBF0028 */  sw         $ra, 0x28($sp)
/* CFE20 800F89B0 AFB10024 */  sw         $s1, 0x24($sp)
/* CFE24 800F89B4 AFB00020 */  sw         $s0, 0x20($sp)
/* CFE28 800F89B8 9083004E */  lbu        $v1, 0x4e($a0)
/* CFE2C 800F89BC 2C620006 */  sltiu      $v0, $v1, 6
/* CFE30 800F89C0 1040007A */  beqz       $v0, .L800F8BAC
/* CFE34 800F89C4 00031080 */   sll       $v0, $v1, 2
/* CFE38 800F89C8 3C018010 */  lui        $at, %hi(D_800FDAC0)
/* CFE3C 800F89CC 00220821 */  addu       $at, $at, $v0
/* CFE40 800F89D0 8C22DAC0 */  lw         $v0, %lo(D_800FDAC0)($at)
/* CFE44 800F89D4 00400008 */  jr         $v0
/* CFE48 800F89D8 00000000 */   nop
/* CFE4C 800F89DC C4820024 */  lwc1       $f2, 0x24($a0)
/* CFE50 800F89E0 3C014334 */  lui        $at, 0x4334
/* CFE54 800F89E4 44810000 */  mtc1       $at, $f0
/* CFE58 800F89E8 00000000 */  nop
/* CFE5C 800F89EC 4600103C */  c.lt.s     $f2, $f0
/* CFE60 800F89F0 00000000 */  nop
/* CFE64 800F89F4 45000006 */  bc1f       .L800F8A10
/* CFE68 800F89F8 00000000 */   nop
/* CFE6C 800F89FC 3C0141A0 */  lui        $at, 0x41a0
/* CFE70 800F8A00 44810000 */  mtc1       $at, $f0
/* CFE74 800F8A04 00000000 */  nop
/* CFE78 800F8A08 46001000 */  add.s      $f0, $f2, $f0
/* CFE7C 800F8A0C E4800024 */  swc1       $f0, 0x24($a0)
.L800F8A10:
/* CFE80 800F8A10 C4800024 */  lwc1       $f0, 0x24($a0)
/* CFE84 800F8A14 3C014334 */  lui        $at, 0x4334
/* CFE88 800F8A18 44811000 */  mtc1       $at, $f2
/* CFE8C 800F8A1C 00000000 */  nop
/* CFE90 800F8A20 4600103E */  c.le.s     $f2, $f0
/* CFE94 800F8A24 00000000 */  nop
/* CFE98 800F8A28 00000000 */  nop
/* CFE9C 800F8A2C 4500005F */  bc1f       .L800F8BAC
/* CFEA0 800F8A30 24020001 */   addiu     $v0, $zero, 1
/* CFEA4 800F8A34 E4820024 */  swc1       $f2, 0x24($a0)
/* CFEA8 800F8A38 A082004E */  sb         $v0, 0x4e($a0)
/* CFEAC 800F8A3C 3C028010 */  lui        $v0, %hi(D_800FDE40)
/* CFEB0 800F8A40 8442DE40 */  lh         $v0, %lo(D_800FDE40)($v0)
/* CFEB4 800F8A44 28420002 */  slti       $v0, $v0, 2
/* CFEB8 800F8A48 14400058 */  bnez       $v0, .L800F8BAC
/* CFEBC 800F8A4C 00000000 */   nop
/* CFEC0 800F8A50 3C118010 */  lui        $s1, %hi(D_800FDE42)
/* CFEC4 800F8A54 2631DE42 */  addiu      $s1, $s1, %lo(D_800FDE42)
/* CFEC8 800F8A58 86230000 */  lh         $v1, ($s1)
/* CFECC 800F8A5C 86220002 */  lh         $v0, 2($s1)
/* CFED0 800F8A60 14620026 */  bne        $v1, $v0, .L800F8AFC
/* CFED4 800F8A64 24020005 */   addiu     $v0, $zero, 5
/* CFED8 800F8A68 3C108010 */  lui        $s0, %hi(D_800FDE46)
/* CFEDC 800F8A6C 2610DE46 */  addiu      $s0, $s0, %lo(D_800FDE46)
/* CFEE0 800F8A70 86020000 */  lh         $v0, ($s0)
/* CFEE4 800F8A74 00021080 */  sll        $v0, $v0, 2
/* CFEE8 800F8A78 3C018010 */  lui        $at, %hi(D_800FE2E8)
/* CFEEC 800F8A7C 00220821 */  addu       $at, $at, $v0
/* CFEF0 800F8A80 8C22E2E8 */  lw         $v0, %lo(D_800FE2E8)($at)
/* CFEF4 800F8A84 24030005 */  addiu      $v1, $zero, 5
/* CFEF8 800F8A88 A043004E */  sb         $v1, 0x4e($v0)
/* CFEFC 800F8A8C 86020002 */  lh         $v0, 2($s0)
/* CFF00 800F8A90 00021080 */  sll        $v0, $v0, 2
/* CFF04 800F8A94 3C048010 */  lui        $a0, %hi(D_800FE2E8)
/* CFF08 800F8A98 2484E2E8 */  addiu      $a0, $a0, %lo(D_800FE2E8)
/* CFF0C 800F8A9C 3C018010 */  lui        $at, %hi(D_800FE2E8)
/* CFF10 800F8AA0 00220821 */  addu       $at, $at, $v0
/* CFF14 800F8AA4 8C22E2E8 */  lw         $v0, %lo(D_800FE2E8)($at)
/* CFF18 800F8AA8 A043004E */  sb         $v1, 0x4e($v0)
/* CFF1C 800F8AAC 86030000 */  lh         $v1, ($s0)
/* CFF20 800F8AB0 00031880 */  sll        $v1, $v1, 2
/* CFF24 800F8AB4 00641821 */  addu       $v1, $v1, $a0
/* CFF28 800F8AB8 86020002 */  lh         $v0, 2($s0)
/* CFF2C 800F8ABC 00021080 */  sll        $v0, $v0, 2
/* CFF30 800F8AC0 00441021 */  addu       $v0, $v0, $a0
/* CFF34 800F8AC4 8C640000 */  lw         $a0, ($v1)
/* CFF38 800F8AC8 0C03F5A8 */  jal        func_800FD6A0_D4B10
/* CFF3C 800F8ACC 8C450000 */   lw        $a1, ($v0)
/* CFF40 800F8AD0 240401C4 */  addiu      $a0, $zero, 0x1c4
/* CFF44 800F8AD4 0C03DF70 */  jal        func_800F7DC0_CF230
/* CFF48 800F8AD8 24050009 */   addiu     $a1, $zero, 9
/* CFF4C 800F8ADC 2402FFFF */  addiu      $v0, $zero, -1
/* CFF50 800F8AE0 A6020002 */  sh         $v0, 2($s0)
/* CFF54 800F8AE4 A6020000 */  sh         $v0, ($s0)
/* CFF58 800F8AE8 A6200002 */  sh         $zero, 2($s1)
/* CFF5C 800F8AEC A6200000 */  sh         $zero, ($s1)
/* CFF60 800F8AF0 3C018010 */  lui        $at, %hi(D_800FDE40)
/* CFF64 800F8AF4 0803E2EB */  j          .L800F8BAC
/* CFF68 800F8AF8 A420DE40 */   sh        $zero, %lo(D_800FDE40)($at)
.L800F8AFC:
/* CFF6C 800F8AFC 3C038010 */  lui        $v1, %hi(D_800FDE44)
/* CFF70 800F8B00 8463DE44 */  lh         $v1, %lo(D_800FDE44)($v1)
/* CFF74 800F8B04 10620029 */  beq        $v1, $v0, .L800F8BAC
/* CFF78 800F8B08 240401C7 */   addiu     $a0, $zero, 0x1c7
/* CFF7C 800F8B0C 0C03DF70 */  jal        func_800F7DC0_CF230
/* CFF80 800F8B10 24050009 */   addiu     $a1, $zero, 9
/* CFF84 800F8B14 0803E2EB */  j          .L800F8BAC
/* CFF88 800F8B18 00000000 */   nop
/* CFF8C 800F8B1C C4820024 */  lwc1       $f2, 0x24($a0)
/* CFF90 800F8B20 3C0143B4 */  lui        $at, 0x43b4
/* CFF94 800F8B24 44810000 */  mtc1       $at, $f0
/* CFF98 800F8B28 00000000 */  nop
/* CFF9C 800F8B2C 4600103C */  c.lt.s     $f2, $f0
/* CFFA0 800F8B30 00000000 */  nop
/* CFFA4 800F8B34 45000017 */  bc1f       .L800F8B94
/* CFFA8 800F8B38 00000000 */   nop
/* CFFAC 800F8B3C 3C0141A0 */  lui        $at, 0x41a0
/* CFFB0 800F8B40 44810000 */  mtc1       $at, $f0
/* CFFB4 800F8B44 00000000 */  nop
/* CFFB8 800F8B48 0803E2E0 */  j          .L800F8B80
/* CFFBC 800F8B4C 46001000 */   add.s     $f0, $f2, $f0
/* CFFC0 800F8B50 C4820024 */  lwc1       $f2, 0x24($a0)
/* CFFC4 800F8B54 3C0143B4 */  lui        $at, 0x43b4
/* CFFC8 800F8B58 44810000 */  mtc1       $at, $f0
/* CFFCC 800F8B5C 00000000 */  nop
/* CFFD0 800F8B60 4600103C */  c.lt.s     $f2, $f0
/* CFFD4 800F8B64 00000000 */  nop
/* CFFD8 800F8B68 4500000A */  bc1f       .L800F8B94
/* CFFDC 800F8B6C 00000000 */   nop
/* CFFE0 800F8B70 3C0140A0 */  lui        $at, 0x40a0
/* CFFE4 800F8B74 44810000 */  mtc1       $at, $f0
/* CFFE8 800F8B78 00000000 */  nop
/* CFFEC 800F8B7C 46001000 */  add.s      $f0, $f2, $f0
.L800F8B80:
/* CFFF0 800F8B80 E4800024 */  swc1       $f0, 0x24($a0)
/* CFFF4 800F8B84 C4820024 */  lwc1       $f2, 0x24($a0)
/* CFFF8 800F8B88 3C0143B4 */  lui        $at, 0x43b4
/* CFFFC 800F8B8C 44810000 */  mtc1       $at, $f0
/* D0000 800F8B90 00000000 */  nop
.L800F8B94:
/* D0004 800F8B94 4602003E */  c.le.s     $f0, $f2
/* D0008 800F8B98 00000000 */  nop
/* D000C 800F8B9C 45000003 */  bc1f       .L800F8BAC
/* D0010 800F8BA0 00000000 */   nop
/* D0014 800F8BA4 AC800024 */  sw         $zero, 0x24($a0)
/* D0018 800F8BA8 A080004E */  sb         $zero, 0x4e($a0)
.L800F8BAC:
/* D001C 800F8BAC 8FBF0028 */  lw         $ra, 0x28($sp)
/* D0020 800F8BB0 8FB10024 */  lw         $s1, 0x24($sp)
/* D0024 800F8BB4 8FB00020 */  lw         $s0, 0x20($sp)
/* D0028 800F8BB8 03E00008 */  jr         $ra
/* D002C 800F8BBC 27BD0030 */   addiu     $sp, $sp, 0x30
