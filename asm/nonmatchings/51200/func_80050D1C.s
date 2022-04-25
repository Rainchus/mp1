	.set noat
	.set noreorder

glabel func_80050D1C
/* 5191C 80050D1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 51920 80050D20 AFBF0018 */  sw         $ra, 0x18($sp)
/* 51924 80050D24 AFB10014 */  sw         $s1, 0x14($sp)
/* 51928 80050D28 AFB00010 */  sw         $s0, 0x10($sp)
/* 5192C 80050D2C 00A08821 */  addu       $s1, $a1, $zero
/* 51930 80050D30 00048400 */  sll        $s0, $a0, 0x10
/* 51934 80050D34 00108403 */  sra        $s0, $s0, 0x10
/* 51938 80050D38 0C01BAD0 */  jal        func_8006EB40
/* 5193C 80050D3C 02002021 */   addu      $a0, $s0, $zero
/* 51940 80050D40 02002021 */  addu       $a0, $s0, $zero
/* 51944 80050D44 02202821 */  addu       $a1, $s1, $zero
/* 51948 80050D48 2406FFFF */  addiu      $a2, $zero, -1
/* 5194C 80050D4C 0C01B5F6 */  jal        func_8006D7D8
/* 51950 80050D50 2407FFFF */   addiu     $a3, $zero, -1
/* 51954 80050D54 8FBF0018 */  lw         $ra, 0x18($sp)
/* 51958 80050D58 8FB10014 */  lw         $s1, 0x14($sp)
/* 5195C 80050D5C 8FB00010 */  lw         $s0, 0x10($sp)
/* 51960 80050D60 03E00008 */  jr         $ra
/* 51964 80050D64 27BD0020 */   addiu     $sp, $sp, 0x20
