	.set noat
	.set noreorder

glabel func_8005CEDC
/* 5DADC 8005CEDC 04810002 */  bgez       $a0, .L8005CEE8
/* 5DAE0 8005CEE0 00801021 */   addu      $v0, $a0, $zero
/* 5DAE4 8005CEE4 24820007 */  addiu      $v0, $a0, 7
.L8005CEE8:
/* 5DAE8 8005CEE8 000228C3 */  sra        $a1, $v0, 3
/* 5DAEC 8005CEEC 04810002 */  bgez       $a0, .L8005CEF8
/* 5DAF0 8005CEF0 00801021 */   addu      $v0, $a0, $zero
/* 5DAF4 8005CEF4 24820007 */  addiu      $v0, $a0, 7
.L8005CEF8:
/* 5DAF8 8005CEF8 000210C3 */  sra        $v0, $v0, 3
/* 5DAFC 8005CEFC 000210C0 */  sll        $v0, $v0, 3
/* 5DB00 8005CF00 00821023 */  subu       $v0, $a0, $v0
/* 5DB04 8005CF04 24030001 */  addiu      $v1, $zero, 1
/* 5DB08 8005CF08 00431804 */  sllv       $v1, $v1, $v0
/* 5DB0C 8005CF0C 00031827 */  nor        $v1, $zero, $v1
/* 5DB10 8005CF10 3C02800F */  lui        $v0, %hi(D_800F37BC)
/* 5DB14 8005CF14 00451021 */  addu       $v0, $v0, $a1
/* 5DB18 8005CF18 904237BC */  lbu        $v0, %lo(D_800F37BC)($v0)
/* 5DB1C 8005CF1C 00431024 */  and        $v0, $v0, $v1
/* 5DB20 8005CF20 3C01800F */  lui        $at, %hi(D_800F37BC)
/* 5DB24 8005CF24 00250821 */  addu       $at, $at, $a1
/* 5DB28 8005CF28 03E00008 */  jr         $ra
/* 5DB2C 8005CF2C A02237BC */   sb        $v0, %lo(D_800F37BC)($at)
