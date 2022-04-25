	.set noat
	.set noreorder

glabel func_8007C080
/* 7CC80 8007C080 AC9D0000 */  sw         $sp, ($a0)
/* 7CC84 8007C084 AC9F0004 */  sw         $ra, 4($a0)
/* 7CC88 8007C088 AC900008 */  sw         $s0, 8($a0)
/* 7CC8C 8007C08C AC91000C */  sw         $s1, 0xc($a0)
/* 7CC90 8007C090 AC920010 */  sw         $s2, 0x10($a0)
/* 7CC94 8007C094 AC930014 */  sw         $s3, 0x14($a0)
/* 7CC98 8007C098 AC940018 */  sw         $s4, 0x18($a0)
/* 7CC9C 8007C09C AC95001C */  sw         $s5, 0x1c($a0)
/* 7CCA0 8007C0A0 AC960020 */  sw         $s6, 0x20($a0)
/* 7CCA4 8007C0A4 AC970024 */  sw         $s7, 0x24($a0)
/* 7CCA8 8007C0A8 AC9E0028 */  sw         $fp, 0x28($a0)
/* 7CCAC 8007C0AC E494002C */  swc1       $f20, 0x2c($a0)
/* 7CCB0 8007C0B0 E4950030 */  swc1       $f21, 0x30($a0)
/* 7CCB4 8007C0B4 E4960034 */  swc1       $f22, 0x34($a0)
/* 7CCB8 8007C0B8 E4970038 */  swc1       $f23, 0x38($a0)
/* 7CCBC 8007C0BC E498003C */  swc1       $f24, 0x3c($a0)
/* 7CCC0 8007C0C0 E4990040 */  swc1       $f25, 0x40($a0)
/* 7CCC4 8007C0C4 E49A0044 */  swc1       $f26, 0x44($a0)
/* 7CCC8 8007C0C8 E49B0048 */  swc1       $f27, 0x48($a0)
/* 7CCCC 8007C0CC E49C004C */  swc1       $f28, 0x4c($a0)
/* 7CCD0 8007C0D0 E49D0050 */  swc1       $f29, 0x50($a0)
/* 7CCD4 8007C0D4 E49E0054 */  swc1       $f30, 0x54($a0)
/* 7CCD8 8007C0D8 E49F0058 */  swc1       $f31, 0x58($a0)
/* 7CCDC 8007C0DC 03E00008 */  jr         $ra
/* 7CCE0 8007C0E0 00001025 */   or        $v0, $zero, $zero
