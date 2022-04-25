	.set noat
	.set noreorder

glabel func_8005DFB8
/* 5EBB8 8005DFB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5EBBC 8005DFBC AFBF0010 */  sw         $ra, 0x10($sp)
/* 5EBC0 8005DFC0 3C02800C */  lui        $v0, %hi(D_800C597E)
/* 5EBC4 8005DFC4 9442597E */  lhu        $v0, %lo(D_800C597E)($v0)
/* 5EBC8 8005DFC8 00441023 */  subu       $v0, $v0, $a0
/* 5EBCC 8005DFCC 3C01800C */  lui        $at, %hi(D_800C597E)
/* 5EBD0 8005DFD0 A422597E */  sh         $v0, %lo(D_800C597E)($at)
/* 5EBD4 8005DFD4 00021400 */  sll        $v0, $v0, 0x10
/* 5EBD8 8005DFD8 00021403 */  sra        $v0, $v0, 0x10
/* 5EBDC 8005DFDC 0440000D */  bltz       $v0, .L8005E014
/* 5EBE0 8005DFE0 000210C0 */   sll       $v0, $v0, 3
/* 5EBE4 8005DFE4 3C04800F */  lui        $a0, %hi(D_800F37F8)
/* 5EBE8 8005DFE8 00822021 */  addu       $a0, $a0, $v0
/* 5EBEC 8005DFEC 8C8437F8 */  lw         $a0, %lo(D_800F37F8)($a0)
/* 5EBF0 8005DFF0 3C05800F */  lui        $a1, %hi(D_800F37FC)
/* 5EBF4 8005DFF4 00A22821 */  addu       $a1, $a1, $v0
/* 5EBF8 8005DFF8 84A537FC */  lh         $a1, %lo(D_800F37FC)($a1)
/* 5EBFC 8005DFFC 3C06800F */  lui        $a2, %hi(D_800F37FE)
/* 5EC00 8005E000 00C23021 */  addu       $a2, $a2, $v0
/* 5EC04 8005E004 0C017811 */  jal        func_8005E044
/* 5EC08 8005E008 94C637FE */   lhu       $a2, %lo(D_800F37FE)($a2)
/* 5EC0C 8005E00C 0801780E */  j          .L8005E038
/* 5EC10 8005E010 24020001 */   addiu     $v0, $zero, 1
.L8005E014:
/* 5EC14 8005E014 3C01800C */  lui        $at, %hi(D_800C597E)
/* 5EC18 8005E018 A420597E */  sh         $zero, %lo(D_800C597E)($at)
/* 5EC1C 8005E01C 3C02800F */  lui        $v0, %hi(D_800F37F8)
/* 5EC20 8005E020 244237F8 */  addiu      $v0, $v0, %lo(D_800F37F8)
/* 5EC24 8005E024 8C440000 */  lw         $a0, ($v0)
/* 5EC28 8005E028 84450004 */  lh         $a1, 4($v0)
/* 5EC2C 8005E02C 0C017811 */  jal        func_8005E044
/* 5EC30 8005E030 94460006 */   lhu       $a2, 6($v0)
/* 5EC34 8005E034 00001021 */  addu       $v0, $zero, $zero
.L8005E038:
/* 5EC38 8005E038 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5EC3C 8005E03C 03E00008 */  jr         $ra
/* 5EC40 8005E040 27BD0018 */   addiu     $sp, $sp, 0x18
