	.set noat
	.set noreorder

glabel func_8007FEA4
/* 80AA4 8007FEA4 3C0F800C */  lui        $t7, %hi(D_800C63C4)
/* 80AA8 8007FEA8 8DEF63C4 */  lw         $t7, %lo(D_800C63C4)($t7)
/* 80AAC 8007FEAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 80AB0 8007FEB0 240E0001 */  addiu      $t6, $zero, 1
/* 80AB4 8007FEB4 3C01800C */  lui        $at, %hi(D_800C63C0)
/* 80AB8 8007FEB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 80ABC 8007FEBC 11E00019 */  beqz       $t7, .L8007FF24
/* 80AC0 8007FEC0 AC2E63C0 */   sw        $t6, %lo(D_800C63C0)($at)
/* 80AC4 8007FEC4 3C19800F */  lui        $t9, %hi(D_800E87E5)
/* 80AC8 8007FEC8 273987E5 */  addiu      $t9, $t9, %lo(D_800E87E5)
/* 80ACC 8007FECC 241800FF */  addiu      $t8, $zero, 0xff
/* 80AD0 8007FED0 0C020534 */  jal        func_800814D0
/* 80AD4 8007FED4 A3380000 */   sb        $t8, ($t9)
/* 80AD8 8007FED8 3C08800F */  lui        $t0, %hi(D_800E87E5)
/* 80ADC 8007FEDC 250887E5 */  addiu      $t0, $t0, %lo(D_800E87E5)
/* 80AE0 8007FEE0 3C04800F */  lui        $a0, %hi(D_800E8760)
/* 80AE4 8007FEE4 A1000000 */  sb         $zero, ($t0)
/* 80AE8 8007FEE8 24848760 */  addiu      $a0, $a0, %lo(D_800E8760)
/* 80AEC 8007FEEC 00002825 */  or         $a1, $zero, $zero
/* 80AF0 8007FEF0 0C022278 */  jal        func_800889E0
/* 80AF4 8007FEF4 00003025 */   or        $a2, $zero, $zero
/* 80AF8 8007FEF8 3C04800F */  lui        $a0, %hi(D_800E8760)
/* 80AFC 8007FEFC 24848760 */  addiu      $a0, $a0, %lo(D_800E8760)
/* 80B00 8007FF00 3C05000A */  lui        $a1, 0xa
/* 80B04 8007FF04 0C0222C4 */  jal        func_80088B10
/* 80B08 8007FF08 24060001 */   addiu     $a2, $zero, 1
/* 80B0C 8007FF0C 3C04800F */  lui        $a0, %hi(D_800E8748)
/* 80B10 8007FF10 3C05800D */  lui        $a1, %hi(D_800CBAF0)
/* 80B14 8007FF14 24A5BAF0 */  addiu      $a1, $a1, %lo(D_800CBAF0)
/* 80B18 8007FF18 24848748 */  addiu      $a0, $a0, %lo(D_800E8748)
/* 80B1C 8007FF1C 0C0222C4 */  jal        func_80088B10
/* 80B20 8007FF20 24060001 */   addiu     $a2, $zero, 1
.L8007FF24:
/* 80B24 8007FF24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 80B28 8007FF28 27BD0018 */  addiu      $sp, $sp, 0x18
/* 80B2C 8007FF2C 03E00008 */  jr         $ra
/* 80B30 8007FF30 00000000 */   nop
