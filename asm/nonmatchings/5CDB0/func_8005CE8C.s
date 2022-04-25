	.set noat
	.set noreorder

glabel func_8005CE8C
/* 5DA8C 8005CE8C 04810002 */  bgez       $a0, .L8005CE98
/* 5DA90 8005CE90 00801021 */   addu      $v0, $a0, $zero
/* 5DA94 8005CE94 24820007 */  addiu      $v0, $a0, 7
.L8005CE98:
/* 5DA98 8005CE98 000228C3 */  sra        $a1, $v0, 3
/* 5DA9C 8005CE9C 04810002 */  bgez       $a0, .L8005CEA8
/* 5DAA0 8005CEA0 00801021 */   addu      $v0, $a0, $zero
/* 5DAA4 8005CEA4 24820007 */  addiu      $v0, $a0, 7
.L8005CEA8:
/* 5DAA8 8005CEA8 000210C3 */  sra        $v0, $v0, 3
/* 5DAAC 8005CEAC 000210C0 */  sll        $v0, $v0, 3
/* 5DAB0 8005CEB0 00821023 */  subu       $v0, $a0, $v0
/* 5DAB4 8005CEB4 24030001 */  addiu      $v1, $zero, 1
/* 5DAB8 8005CEB8 00431804 */  sllv       $v1, $v1, $v0
/* 5DABC 8005CEBC 3C02800F */  lui        $v0, %hi(D_800F37BC)
/* 5DAC0 8005CEC0 00451021 */  addu       $v0, $v0, $a1
/* 5DAC4 8005CEC4 904237BC */  lbu        $v0, %lo(D_800F37BC)($v0)
/* 5DAC8 8005CEC8 00431025 */  or         $v0, $v0, $v1
/* 5DACC 8005CECC 3C01800F */  lui        $at, %hi(D_800F37BC)
/* 5DAD0 8005CED0 00250821 */  addu       $at, $at, $a1
/* 5DAD4 8005CED4 03E00008 */  jr         $ra
/* 5DAD8 8005CED8 A02237BC */   sb        $v0, %lo(D_800F37BC)($at)
