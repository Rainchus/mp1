	.set noat
	.set noreorder

glabel func_80018870
/* 19470 80018870 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19474 80018874 AFBF0010 */  sw         $ra, 0x10($sp)
/* 19478 80018878 0C0192DC */  jal        func_80064B70
/* 1947C 8001887C 00000000 */   nop
/* 19480 80018880 0C008D9A */  jal        func_80023668
/* 19484 80018884 24042400 */   addiu     $a0, $zero, 0x2400
/* 19488 80018888 3C01800F */  lui        $at, %hi(D_800ED60C)
/* 1948C 8001888C AC22D60C */  sw         $v0, %lo(D_800ED60C)($at)
/* 19490 80018890 24020100 */  addiu      $v0, $zero, 0x100
/* 19494 80018894 3C01800F */  lui        $at, %hi(D_800EC6DC)
/* 19498 80018898 A422C6DC */  sh         $v0, %lo(D_800EC6DC)($at)
/* 1949C 8001889C 3C01800F */  lui        $at, %hi(D_800ECB38)
/* 194A0 800188A0 A420CB38 */  sh         $zero, %lo(D_800ECB38)($at)
/* 194A4 800188A4 00002021 */  addu       $a0, $zero, $zero
/* 194A8 800188A8 3C06800F */  lui        $a2, %hi(D_800ED60C)
/* 194AC 800188AC 8CC6D60C */  lw         $a2, %lo(D_800ED60C)($a2)
/* 194B0 800188B0 240500FF */  addiu      $a1, $zero, 0xff
/* 194B4 800188B4 3083FFFF */  andi       $v1, $a0, 0xffff
.L800188B8:
/* 194B8 800188B8 000310C0 */  sll        $v0, $v1, 3
/* 194BC 800188BC 00431021 */  addu       $v0, $v0, $v1
/* 194C0 800188C0 00021080 */  sll        $v0, $v0, 2
/* 194C4 800188C4 00461021 */  addu       $v0, $v0, $a2
/* 194C8 800188C8 A4400000 */  sh         $zero, ($v0)
/* 194CC 800188CC 24830001 */  addiu      $v1, $a0, 1
/* 194D0 800188D0 A4430002 */  sh         $v1, 2($v0)
/* 194D4 800188D4 A445001C */  sh         $a1, 0x1c($v0)
/* 194D8 800188D8 A445001E */  sh         $a1, 0x1e($v0)
/* 194DC 800188DC A4400020 */  sh         $zero, 0x20($v0)
/* 194E0 800188E0 00602021 */  addu       $a0, $v1, $zero
/* 194E4 800188E4 3082FFFF */  andi       $v0, $a0, 0xffff
/* 194E8 800188E8 2C420100 */  sltiu      $v0, $v0, 0x100
/* 194EC 800188EC 5440FFF2 */  bnel       $v0, $zero, .L800188B8
/* 194F0 800188F0 3083FFFF */   andi      $v1, $a0, 0xffff
/* 194F4 800188F4 3C01800F */  lui        $at, %hi(D_800F527A)
/* 194F8 800188F8 A420527A */  sh         $zero, %lo(D_800F527A)($at)
/* 194FC 800188FC 3C01800F */  lui        $at, %hi(D_800F6530)
/* 19500 80018900 A4206530 */  sh         $zero, %lo(D_800F6530)($at)
/* 19504 80018904 8FBF0010 */  lw         $ra, 0x10($sp)
/* 19508 80018908 03E00008 */  jr         $ra
/* 1950C 8001890C 27BD0018 */   addiu     $sp, $sp, 0x18
