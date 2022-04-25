	.set noat
	.set noreorder

glabel func_800F9838_151B98
/* 151B98 800F9838 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 151B9C 800F983C AFBF0020 */  sw         $ra, 0x20($sp)
/* 151BA0 800F9840 AFB3001C */  sw         $s3, 0x1c($sp)
/* 151BA4 800F9844 AFB20018 */  sw         $s2, 0x18($sp)
/* 151BA8 800F9848 AFB10014 */  sw         $s1, 0x14($sp)
/* 151BAC 800F984C AFB00010 */  sw         $s0, 0x10($sp)
/* 151BB0 800F9850 00809821 */  addu       $s3, $a0, $zero
/* 151BB4 800F9854 00A08021 */  addu       $s0, $a1, $zero
/* 151BB8 800F9858 8E710050 */  lw         $s1, 0x50($s3)
/* 151BBC 800F985C 00C02021 */  addu       $a0, $a2, $zero
/* 151BC0 800F9860 00E02821 */  addu       $a1, $a3, $zero
/* 151BC4 800F9864 8FA60038 */  lw         $a2, 0x38($sp)
/* 151BC8 800F9868 97A7003E */  lhu        $a3, 0x3e($sp)
/* 151BCC 800F986C 0C03E5D5 */  jal        func_800F9754_151AB4
/* 151BD0 800F9870 321000FF */   andi      $s0, $s0, 0xff
/* 151BD4 800F9874 00409021 */  addu       $s2, $v0, $zero
/* 151BD8 800F9878 8E620040 */  lw         $v0, 0x40($s3)
/* 151BDC 800F987C 00102840 */  sll        $a1, $s0, 1
/* 151BE0 800F9880 00A22821 */  addu       $a1, $a1, $v0
/* 151BE4 800F9884 324400FF */  andi       $a0, $s2, 0xff
/* 151BE8 800F9888 3C03800F */  lui        $v1, %hi(D_800ECDE0)
/* 151BEC 800F988C 8C63CDE0 */  lw         $v1, %lo(D_800ECDE0)($v1)
/* 151BF0 800F9890 000410C0 */  sll        $v0, $a0, 3
/* 151BF4 800F9894 00441021 */  addu       $v0, $v0, $a0
/* 151BF8 800F9898 00021080 */  sll        $v0, $v0, 2
/* 151BFC 800F989C 00431821 */  addu       $v1, $v0, $v1
/* 151C00 800F98A0 94630000 */  lhu        $v1, ($v1)
/* 151C04 800F98A4 A4A30000 */  sh         $v1, ($a1)
/* 151C08 800F98A8 02308821 */  addu       $s1, $s1, $s0
/* 151C0C 800F98AC A2320021 */  sb         $s2, 0x21($s1)
/* 151C10 800F98B0 3C03800F */  lui        $v1, %hi(D_800ECDE0)
/* 151C14 800F98B4 8C63CDE0 */  lw         $v1, %lo(D_800ECDE0)($v1)
/* 151C18 800F98B8 00431021 */  addu       $v0, $v0, $v1
/* 151C1C 800F98BC 84440000 */  lh         $a0, ($v0)
/* 151C20 800F98C0 3C057000 */  lui        $a1, 0x7000
/* 151C24 800F98C4 0C00964C */  jal        func_80025930
/* 151C28 800F98C8 3C067000 */   lui       $a2, 0x7000
/* 151C2C 800F98CC 324400FF */  andi       $a0, $s2, 0xff
/* 151C30 800F98D0 24050004 */  addiu      $a1, $zero, 4
/* 151C34 800F98D4 0C00789A */  jal        func_8001E268
/* 151C38 800F98D8 24060004 */   addiu     $a2, $zero, 4
/* 151C3C 800F98DC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 151C40 800F98E0 8FB3001C */  lw         $s3, 0x1c($sp)
/* 151C44 800F98E4 8FB20018 */  lw         $s2, 0x18($sp)
/* 151C48 800F98E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 151C4C 800F98EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 151C50 800F98F0 03E00008 */  jr         $ra
/* 151C54 800F98F4 27BD0028 */   addiu     $sp, $sp, 0x28
