	.set noat
	.set noreorder

glabel func_800F90CC_D053C
/* D053C 800F90CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D0540 800F90D0 AFBF0018 */  sw         $ra, 0x18($sp)
/* D0544 800F90D4 AFB10014 */  sw         $s1, 0x14($sp)
/* D0548 800F90D8 AFB00010 */  sw         $s0, 0x10($sp)
/* D054C 800F90DC 3C108010 */  lui        $s0, %hi(D_800FDF10)
/* D0550 800F90E0 2610DF10 */  addiu      $s0, $s0, %lo(D_800FDF10)
/* D0554 800F90E4 00008821 */  addu       $s1, $zero, $zero
/* D0558 800F90E8 3C040012 */  lui        $a0, 0x12
.L800F90EC:
/* D055C 800F90EC 3484000F */  ori        $a0, $a0, 0xf
/* D0560 800F90F0 24050289 */  addiu      $a1, $zero, 0x289
/* D0564 800F90F4 0C03E53A */  jal        func_800F94E8_D0958
/* D0568 800F90F8 24060008 */   addiu     $a2, $zero, 8
/* D056C 800F90FC A6020002 */  sh         $v0, 2($s0)
/* D0570 800F9100 00021400 */  sll        $v0, $v0, 0x10
/* D0574 800F9104 00022403 */  sra        $a0, $v0, 0x10
/* D0578 800F9108 04800011 */  bltz       $a0, .L800F9150
/* D057C 800F910C 000418C0 */   sll       $v1, $a0, 3
/* D0580 800F9110 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* D0584 800F9114 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* D0588 800F9118 00641821 */  addu       $v1, $v1, $a0
/* D058C 800F911C 00031880 */  sll        $v1, $v1, 2
/* D0590 800F9120 00621821 */  addu       $v1, $v1, $v0
/* D0594 800F9124 94640000 */  lhu        $a0, ($v1)
/* D0598 800F9128 A6040000 */  sh         $a0, ($s0)
/* D059C 800F912C 00042400 */  sll        $a0, $a0, 0x10
/* D05A0 800F9130 00042403 */  sra        $a0, $a0, 0x10
/* D05A4 800F9134 24050004 */  addiu      $a1, $zero, 4
/* D05A8 800F9138 0C00963B */  jal        func_800258EC
/* D05AC 800F913C 24060004 */   addiu     $a2, $zero, 4
/* D05B0 800F9140 86040002 */  lh         $a0, 2($s0)
/* D05B4 800F9144 0C0078AA */  jal        func_8001E2A8
/* D05B8 800F9148 00002821 */   addu      $a1, $zero, $zero
/* D05BC 800F914C 26100024 */  addiu      $s0, $s0, 0x24
.L800F9150:
/* D05C0 800F9150 26310001 */  addiu      $s1, $s1, 1
/* D05C4 800F9154 3222FFFF */  andi       $v0, $s1, 0xffff
/* D05C8 800F9158 2C420010 */  sltiu      $v0, $v0, 0x10
/* D05CC 800F915C 1440FFE3 */  bnez       $v0, .L800F90EC
/* D05D0 800F9160 3C040012 */   lui       $a0, 0x12
/* D05D4 800F9164 8FBF0018 */  lw         $ra, 0x18($sp)
/* D05D8 800F9168 8FB10014 */  lw         $s1, 0x14($sp)
/* D05DC 800F916C 8FB00010 */  lw         $s0, 0x10($sp)
/* D05E0 800F9170 03E00008 */  jr         $ra
/* D05E4 800F9174 27BD0020 */   addiu     $sp, $sp, 0x20
