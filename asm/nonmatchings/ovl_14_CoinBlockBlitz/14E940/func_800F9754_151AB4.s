	.set noat
	.set noreorder

glabel func_800F9754_151AB4
/* 151AB4 800F9754 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 151AB8 800F9758 AFBF001C */  sw         $ra, 0x1c($sp)
/* 151ABC 800F975C AFB20018 */  sw         $s2, 0x18($sp)
/* 151AC0 800F9760 AFB10014 */  sw         $s1, 0x14($sp)
/* 151AC4 800F9764 AFB00010 */  sw         $s0, 0x10($sp)
/* 151AC8 800F9768 00A08821 */  addu       $s1, $a1, $zero
/* 151ACC 800F976C 30E7FFFF */  andi       $a3, $a3, 0xffff
/* 151AD0 800F9770 14E00018 */  bnez       $a3, .L800F97D4
/* 151AD4 800F9774 00C09021 */   addu      $s2, $a2, $zero
/* 151AD8 800F9778 0C00516C */  jal        func_800145B0
/* 151ADC 800F977C 00000000 */   nop
/* 151AE0 800F9780 00408021 */  addu       $s0, $v0, $zero
/* 151AE4 800F9784 02002021 */  addu       $a0, $s0, $zero
/* 151AE8 800F9788 3225FFFF */  andi       $a1, $s1, 0xffff
/* 151AEC 800F978C 0C007803 */  jal        func_8001E00C
/* 151AF0 800F9790 324600FF */   andi      $a2, $s2, 0xff
/* 151AF4 800F9794 00408821 */  addu       $s1, $v0, $zero
/* 151AF8 800F9798 00111C00 */  sll        $v1, $s1, 0x10
/* 151AFC 800F979C 00031C03 */  sra        $v1, $v1, 0x10
/* 151B00 800F97A0 3C04800F */  lui        $a0, %hi(D_800ECDE0)
/* 151B04 800F97A4 8C84CDE0 */  lw         $a0, %lo(D_800ECDE0)($a0)
/* 151B08 800F97A8 000310C0 */  sll        $v0, $v1, 3
/* 151B0C 800F97AC 00431021 */  addu       $v0, $v0, $v1
/* 151B10 800F97B0 00021080 */  sll        $v0, $v0, 2
/* 151B14 800F97B4 00441021 */  addu       $v0, $v0, $a0
/* 151B18 800F97B8 94420002 */  lhu        $v0, 2($v0)
/* 151B1C 800F97BC 3C018010 */  lui        $at, %hi(D_800FA882)
/* 151B20 800F97C0 A422A882 */  sh         $v0, %lo(D_800FA882)($at)
/* 151B24 800F97C4 0C00EDB2 */  jal        func_8003B6C8
/* 151B28 800F97C8 02002021 */   addu      $a0, $s0, $zero
/* 151B2C 800F97CC 0803E608 */  j          .L800F9820
/* 151B30 800F97D0 3222FFFF */   andi      $v0, $s1, 0xffff
.L800F97D4:
/* 151B34 800F97D4 2404FFFF */  addiu      $a0, $zero, -1
/* 151B38 800F97D8 3225FFFF */  andi       $a1, $s1, 0xffff
/* 151B3C 800F97DC 0C007803 */  jal        func_8001E00C
/* 151B40 800F97E0 324600FF */   andi      $a2, $s2, 0xff
/* 151B44 800F97E4 00408821 */  addu       $s1, $v0, $zero
/* 151B48 800F97E8 00111400 */  sll        $v0, $s1, 0x10
/* 151B4C 800F97EC 00022403 */  sra        $a0, $v0, 0x10
/* 151B50 800F97F0 2402FFFF */  addiu      $v0, $zero, -1
/* 151B54 800F97F4 10820009 */  beq        $a0, $v0, .L800F981C
/* 151B58 800F97F8 000418C0 */   sll       $v1, $a0, 3
/* 151B5C 800F97FC 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 151B60 800F9800 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 151B64 800F9804 00641821 */  addu       $v1, $v1, $a0
/* 151B68 800F9808 00031880 */  sll        $v1, $v1, 2
/* 151B6C 800F980C 00621821 */  addu       $v1, $v1, $v0
/* 151B70 800F9810 3C028010 */  lui        $v0, %hi(D_800FA882)
/* 151B74 800F9814 9442A882 */  lhu        $v0, %lo(D_800FA882)($v0)
/* 151B78 800F9818 A4620002 */  sh         $v0, 2($v1)
.L800F981C:
/* 151B7C 800F981C 3222FFFF */  andi       $v0, $s1, 0xffff
.L800F9820:
/* 151B80 800F9820 8FBF001C */  lw         $ra, 0x1c($sp)
/* 151B84 800F9824 8FB20018 */  lw         $s2, 0x18($sp)
/* 151B88 800F9828 8FB10014 */  lw         $s1, 0x14($sp)
/* 151B8C 800F982C 8FB00010 */  lw         $s0, 0x10($sp)
/* 151B90 800F9830 03E00008 */  jr         $ra
/* 151B94 800F9834 27BD0020 */   addiu     $sp, $sp, 0x20
