	.set noat
	.set noreorder

glabel func_80060E54
/* 61A54 80060E54 00002821 */  addu       $a1, $zero, $zero
/* 61A58 80060E58 3C0B800F */  lui        $t3, %hi(D_800ED55C)
/* 61A5C 80060E5C 256BD55C */  addiu      $t3, $t3, %lo(D_800ED55C)
/* 61A60 80060E60 3C0A800F */  lui        $t2, %hi(D_800EDEB4)
/* 61A64 80060E64 254ADEB4 */  addiu      $t2, $t2, %lo(D_800EDEB4)
/* 61A68 80060E68 3C09800F */  lui        $t1, %hi(D_800EE324)
/* 61A6C 80060E6C 2529E324 */  addiu      $t1, $t1, %lo(D_800EE324)
/* 61A70 80060E70 3C08800F */  lui        $t0, %hi(D_800F5460)
/* 61A74 80060E74 25085460 */  addiu      $t0, $t0, %lo(D_800F5460)
/* 61A78 80060E78 3C07800F */  lui        $a3, %hi(D_800ECC24)
/* 61A7C 80060E7C 24E7CC24 */  addiu      $a3, $a3, %lo(D_800ECC24)
/* 61A80 80060E80 3C06800F */  lui        $a2, %hi(D_800F338C)
/* 61A84 80060E84 24C6338C */  addiu      $a2, $a2, %lo(D_800F338C)
.L80060E88:
/* 61A88 80060E88 3C02800F */  lui        $v0, %hi(D_800ECE14)
/* 61A8C 80060E8C 00451021 */  addu       $v0, $v0, $a1
/* 61A90 80060E90 9042CE14 */  lbu        $v0, %lo(D_800ECE14)($v0)
/* 61A94 80060E94 3C01800F */  lui        $at, %hi(D_800F64E8)
/* 61A98 80060E98 00250821 */  addu       $at, $at, $a1
/* 61A9C 80060E9C A02264E8 */  sb         $v0, %lo(D_800F64E8)($at)
/* 61AA0 80060EA0 3C02800F */  lui        $v0, %hi(D_800F3843)
/* 61AA4 80060EA4 00451021 */  addu       $v0, $v0, $a1
/* 61AA8 80060EA8 90423843 */  lbu        $v0, %lo(D_800F3843)($v0)
/* 61AAC 80060EAC 3C01800F */  lui        $at, %hi(D_800F3388)
/* 61AB0 80060EB0 00250821 */  addu       $at, $at, $a1
/* 61AB4 80060EB4 A0223388 */  sb         $v0, %lo(D_800F3388)($at)
/* 61AB8 80060EB8 00051840 */  sll        $v1, $a1, 1
/* 61ABC 80060EBC 006B2021 */  addu       $a0, $v1, $t3
/* 61AC0 80060EC0 006A1021 */  addu       $v0, $v1, $t2
/* 61AC4 80060EC4 94420000 */  lhu        $v0, ($v0)
/* 61AC8 80060EC8 A4820000 */  sh         $v0, ($a0)
/* 61ACC 80060ECC 00692021 */  addu       $a0, $v1, $t1
/* 61AD0 80060ED0 00681021 */  addu       $v0, $v1, $t0
/* 61AD4 80060ED4 94420000 */  lhu        $v0, ($v0)
/* 61AD8 80060ED8 A4820000 */  sh         $v0, ($a0)
/* 61ADC 80060EDC 00672021 */  addu       $a0, $v1, $a3
/* 61AE0 80060EE0 00661821 */  addu       $v1, $v1, $a2
/* 61AE4 80060EE4 94620000 */  lhu        $v0, ($v1)
/* 61AE8 80060EE8 A4820000 */  sh         $v0, ($a0)
/* 61AEC 80060EEC 24A50001 */  addiu      $a1, $a1, 1
/* 61AF0 80060EF0 28A20004 */  slti       $v0, $a1, 4
/* 61AF4 80060EF4 1440FFE4 */  bnez       $v0, .L80060E88
/* 61AF8 80060EF8 00000000 */   nop
/* 61AFC 80060EFC 03E00008 */  jr         $ra
/* 61B00 80060F00 00000000 */   nop
