	.set noat
	.set noreorder

glabel func_8000A634
/* B234 8000A634 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B238 8000A638 AFBF001C */  sw         $ra, 0x1c($sp)
/* B23C 8000A63C AFB20018 */  sw         $s2, 0x18($sp)
/* B240 8000A640 AFB10014 */  sw         $s1, 0x14($sp)
/* B244 8000A644 AFB00010 */  sw         $s0, 0x10($sp)
/* B248 8000A648 00A08821 */  addu       $s1, $a1, $zero
/* B24C 8000A64C 8C920050 */  lw         $s2, 0x50($a0)
/* B250 8000A650 8E300050 */  lw         $s0, 0x50($s1)
/* B254 8000A654 96020050 */  lhu        $v0, 0x50($s0)
/* B258 8000A658 30420040 */  andi       $v0, $v0, 0x40
/* B25C 8000A65C 1040001F */  beqz       $v0, .L8000A6DC
/* B260 8000A660 00001021 */   addu      $v0, $zero, $zero
/* B264 8000A664 96020050 */  lhu        $v0, 0x50($s0)
/* B268 8000A668 30420020 */  andi       $v0, $v0, 0x20
/* B26C 8000A66C 1440001B */  bnez       $v0, .L8000A6DC
/* B270 8000A670 00001021 */   addu      $v0, $zero, $zero
/* B274 8000A674 96430050 */  lhu        $v1, 0x50($s2)
/* B278 8000A678 30620020 */  andi       $v0, $v1, 0x20
/* B27C 8000A67C 54400017 */  bnel       $v0, $zero, .L8000A6DC
/* B280 8000A680 00001021 */   addu      $v0, $zero, $zero
/* B284 8000A684 34620120 */  ori        $v0, $v1, 0x120
/* B288 8000A688 A6420050 */  sh         $v0, 0x50($s2)
/* B28C 8000A68C 96020050 */  lhu        $v0, 0x50($s0)
/* B290 8000A690 34420020 */  ori        $v0, $v0, 0x20
/* B294 8000A694 A6020050 */  sh         $v0, 0x50($s0)
/* B298 8000A698 AE5100B8 */  sw         $s1, 0xb8($s2)
/* B29C 8000A69C AE040064 */  sw         $a0, 0x64($s0)
/* B2A0 8000A6A0 8E220040 */  lw         $v0, 0x40($s1)
/* B2A4 8000A6A4 8C830040 */  lw         $v1, 0x40($a0)
/* B2A8 8000A6A8 84440000 */  lh         $a0, ($v0)
/* B2AC 8000A6AC 84650000 */  lh         $a1, ($v1)
/* B2B0 8000A6B0 3C06800D */  lui        $a2, %hi(D_800C9F7C)
/* B2B4 8000A6B4 0C00A167 */  jal        func_8002859C
/* B2B8 8000A6B8 24C69F7C */   addiu     $a2, $a2, %lo(D_800C9F7C)
/* B2BC 8000A6BC 8E220040 */  lw         $v0, 0x40($s1)
/* B2C0 8000A6C0 84440000 */  lh         $a0, ($v0)
/* B2C4 8000A6C4 24054000 */  addiu      $a1, $zero, 0x4000
/* B2C8 8000A6C8 0C00963B */  jal        func_800258EC
/* B2CC 8000A6CC 24064000 */   addiu     $a2, $zero, 0x4000
/* B2D0 8000A6D0 C6000058 */  lwc1       $f0, 0x58($s0)
/* B2D4 8000A6D4 E64000A4 */  swc1       $f0, 0xa4($s2)
/* B2D8 8000A6D8 24020001 */  addiu      $v0, $zero, 1
.L8000A6DC:
/* B2DC 8000A6DC 8FBF001C */  lw         $ra, 0x1c($sp)
/* B2E0 8000A6E0 8FB20018 */  lw         $s2, 0x18($sp)
/* B2E4 8000A6E4 8FB10014 */  lw         $s1, 0x14($sp)
/* B2E8 8000A6E8 8FB00010 */  lw         $s0, 0x10($sp)
/* B2EC 8000A6EC 03E00008 */  jr         $ra
/* B2F0 8000A6F0 27BD0020 */   addiu     $sp, $sp, 0x20
