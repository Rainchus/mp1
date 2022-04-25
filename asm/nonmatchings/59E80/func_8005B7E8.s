	.set noat
	.set noreorder

glabel func_8005B7E8
/* 5C3E8 8005B7E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5C3EC 8005B7EC AFBF001C */  sw         $ra, 0x1c($sp)
/* 5C3F0 8005B7F0 AFB00018 */  sw         $s0, 0x18($sp)
/* 5C3F4 8005B7F4 0C016DD7 */  jal        func_8005B75C
/* 5C3F8 8005B7F8 27A50010 */   addiu     $a1, $sp, 0x10
/* 5C3FC 8005B7FC 97A40014 */  lhu        $a0, 0x14($sp)
/* 5C400 8005B800 0C00EDA9 */  jal        func_8003B6A4
/* 5C404 8005B804 00000000 */   nop
/* 5C408 8005B808 00408021 */  addu       $s0, $v0, $zero
/* 5C40C 8005B80C 12000006 */  beqz       $s0, .L8005B828
/* 5C410 8005B810 02001021 */   addu      $v0, $s0, $zero
/* 5C414 8005B814 8FA40010 */  lw         $a0, 0x10($sp)
/* 5C418 8005B818 97A60014 */  lhu        $a2, 0x14($sp)
/* 5C41C 8005B81C 0C0187FA */  jal        func_80061FE8
/* 5C420 8005B820 02002821 */   addu      $a1, $s0, $zero
/* 5C424 8005B824 02001021 */  addu       $v0, $s0, $zero
.L8005B828:
/* 5C428 8005B828 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5C42C 8005B82C 8FB00018 */  lw         $s0, 0x18($sp)
/* 5C430 8005B830 03E00008 */  jr         $ra
/* 5C434 8005B834 27BD0020 */   addiu     $sp, $sp, 0x20
