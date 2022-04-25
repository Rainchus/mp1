	.set noat
	.set noreorder

glabel func_800234B8
/* 240B8 800234B8 3C02800F */  lui        $v0, %hi(D_800EE9A0)
/* 240BC 800234BC 8442E9A0 */  lh         $v0, %lo(D_800EE9A0)($v0)
/* 240C0 800234C0 00042400 */  sll        $a0, $a0, 0x10
/* 240C4 800234C4 00042403 */  sra        $a0, $a0, 0x10
/* 240C8 800234C8 0044102A */  slt        $v0, $v0, $a0
/* 240CC 800234CC 1440000B */  bnez       $v0, .L800234FC
/* 240D0 800234D0 000410C0 */   sll       $v0, $a0, 3
/* 240D4 800234D4 00441023 */  subu       $v0, $v0, $a0
/* 240D8 800234D8 3C01800F */  lui        $at, %hi(D_800EE9A2)
/* 240DC 800234DC 00220821 */  addu       $at, $at, $v0
/* 240E0 800234E0 A025E9A2 */  sb         $a1, %lo(D_800EE9A2)($at)
/* 240E4 800234E4 3C01800F */  lui        $at, %hi(D_800EE9A3)
/* 240E8 800234E8 00220821 */  addu       $at, $at, $v0
/* 240EC 800234EC A026E9A3 */  sb         $a2, %lo(D_800EE9A3)($at)
/* 240F0 800234F0 3C01800F */  lui        $at, %hi(D_800EE9A4)
/* 240F4 800234F4 00220821 */  addu       $at, $at, $v0
/* 240F8 800234F8 A027E9A4 */  sb         $a3, %lo(D_800EE9A4)($at)
.L800234FC:
/* 240FC 800234FC 03E00008 */  jr         $ra
/* 24100 80023500 00000000 */   nop
