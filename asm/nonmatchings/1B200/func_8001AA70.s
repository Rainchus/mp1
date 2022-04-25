	.set noat
	.set noreorder

glabel func_8001AA70
/* 1B670 8001AA70 3C02800F */  lui        $v0, %hi(D_800ECB2E)
/* 1B674 8001AA74 8442CB2E */  lh         $v0, %lo(D_800ECB2E)($v0)
/* 1B678 8001AA78 28420020 */  slti       $v0, $v0, 0x20
/* 1B67C 8001AA7C 14400003 */  bnez       $v0, .L8001AA8C
/* 1B680 8001AA80 00000000 */   nop
/* 1B684 8001AA84 3C01800F */  lui        $at, %hi(D_800ECB2E)
/* 1B688 8001AA88 A420CB2E */  sh         $zero, %lo(D_800ECB2E)($at)
.L8001AA8C:
/* 1B68C 8001AA8C 3C03800F */  lui        $v1, %hi(D_800ECB2E)
/* 1B690 8001AA90 9463CB2E */  lhu        $v1, %lo(D_800ECB2E)($v1)
/* 1B694 8001AA94 24620001 */  addiu      $v0, $v1, 1
/* 1B698 8001AA98 3C01800F */  lui        $at, %hi(D_800ECB2E)
/* 1B69C 8001AA9C A422CB2E */  sh         $v0, %lo(D_800ECB2E)($at)
/* 1B6A0 8001AAA0 00031C00 */  sll        $v1, $v1, 0x10
/* 1B6A4 8001AAA4 00031C03 */  sra        $v1, $v1, 0x10
/* 1B6A8 8001AAA8 00031080 */  sll        $v0, $v1, 2
/* 1B6AC 8001AAAC 00431021 */  addu       $v0, $v0, $v1
/* 1B6B0 8001AAB0 00021080 */  sll        $v0, $v0, 2
/* 1B6B4 8001AAB4 3C03800F */  lui        $v1, %hi(D_800ECE20)
/* 1B6B8 8001AAB8 2463CE20 */  addiu      $v1, $v1, %lo(D_800ECE20)
/* 1B6BC 8001AABC 03E00008 */  jr         $ra
/* 1B6C0 8001AAC0 00431021 */   addu      $v0, $v0, $v1
