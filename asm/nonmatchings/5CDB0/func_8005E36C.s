	.set noat
	.set noreorder

glabel func_8005E36C
/* 5EF6C 8005E36C 3C02800C */  lui        $v0, %hi(D_800C597E)
/* 5EF70 8005E370 8442597E */  lh         $v0, %lo(D_800C597E)($v0)
/* 5EF74 8005E374 00042400 */  sll        $a0, $a0, 0x10
/* 5EF78 8005E378 00042403 */  sra        $a0, $a0, 0x10
/* 5EF7C 8005E37C 00441023 */  subu       $v0, $v0, $a0
/* 5EF80 8005E380 04400007 */  bltz       $v0, .L8005E3A0
/* 5EF84 8005E384 000210C0 */   sll       $v0, $v0, 3
/* 5EF88 8005E388 3C03800F */  lui        $v1, %hi(D_800F37F8)
/* 5EF8C 8005E38C 246337F8 */  addiu      $v1, $v1, %lo(D_800F37F8)
/* 5EF90 8005E390 00431021 */  addu       $v0, $v0, $v1
/* 5EF94 8005E394 AC450000 */  sw         $a1, ($v0)
/* 5EF98 8005E398 A4460004 */  sh         $a2, 4($v0)
/* 5EF9C 8005E39C A4470006 */  sh         $a3, 6($v0)
.L8005E3A0:
/* 5EFA0 8005E3A0 03E00008 */  jr         $ra
/* 5EFA4 8005E3A4 00000000 */   nop
