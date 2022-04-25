	.set noat
	.set noreorder

glabel func_80056F40
/* 57B40 80056F40 3C02800F */  lui        $v0, %hi(D_800ED5DC)
/* 57B44 80056F44 9442D5DC */  lhu        $v0, %lo(D_800ED5DC)($v0)
/* 57B48 80056F48 24420001 */  addiu      $v0, $v0, 1
/* 57B4C 80056F4C 3C01800F */  lui        $at, %hi(D_800ED5DC)
/* 57B50 80056F50 A422D5DC */  sh         $v0, %lo(D_800ED5DC)($at)
/* 57B54 80056F54 00021400 */  sll        $v0, $v0, 0x10
/* 57B58 80056F58 00021403 */  sra        $v0, $v0, 0x10
/* 57B5C 80056F5C 28420004 */  slti       $v0, $v0, 4
/* 57B60 80056F60 1440000F */  bnez       $v0, .L80056FA0
/* 57B64 80056F64 00000000 */   nop
/* 57B68 80056F68 3C01800F */  lui        $at, %hi(D_800ED5DC)
/* 57B6C 80056F6C A420D5DC */  sh         $zero, %lo(D_800ED5DC)($at)
/* 57B70 80056F70 3C02800F */  lui        $v0, %hi(D_800ED5C8)
/* 57B74 80056F74 9442D5C8 */  lhu        $v0, %lo(D_800ED5C8)($v0)
/* 57B78 80056F78 24420001 */  addiu      $v0, $v0, 1
/* 57B7C 80056F7C 3C01800F */  lui        $at, %hi(D_800ED5C8)
/* 57B80 80056F80 A422D5C8 */  sh         $v0, %lo(D_800ED5C8)($at)
/* 57B84 80056F84 00021400 */  sll        $v0, $v0, 0x10
/* 57B88 80056F88 00021403 */  sra        $v0, $v0, 0x10
/* 57B8C 80056F8C 28420063 */  slti       $v0, $v0, 0x63
/* 57B90 80056F90 14400003 */  bnez       $v0, .L80056FA0
/* 57B94 80056F94 24020063 */   addiu     $v0, $zero, 0x63
/* 57B98 80056F98 3C01800F */  lui        $at, %hi(D_800ED5C8)
/* 57B9C 80056F9C A422D5C8 */  sh         $v0, %lo(D_800ED5C8)($at)
.L80056FA0:
/* 57BA0 80056FA0 03E00008 */  jr         $ra
/* 57BA4 80056FA4 00000000 */   nop
