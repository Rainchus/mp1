	.set noat
	.set noreorder

glabel func_800F963C_D0AAC
/* D0AAC 800F963C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D0AB0 800F9640 AFBF0018 */  sw         $ra, 0x18($sp)
/* D0AB4 800F9644 3C028010 */  lui        $v0, %hi(func_800F9C50_D10C0)
/* D0AB8 800F9648 24429C50 */  addiu      $v0, $v0, %lo(func_800F9C50_D10C0)
/* D0ABC 800F964C AFA20010 */  sw         $v0, 0x10($sp)
/* D0AC0 800F9650 24040001 */  addiu      $a0, $zero, 1
/* D0AC4 800F9654 24050009 */  addiu      $a1, $zero, 9
/* D0AC8 800F9658 2406003C */  addiu      $a2, $zero, 0x3c
/* D0ACC 800F965C 0C0174E1 */  jal        func_8005D384
/* D0AD0 800F9660 2407FFFF */   addiu     $a3, $zero, -1
/* D0AD4 800F9664 3C03800F */  lui        $v1, %hi(D_800F2BC1)
/* D0AD8 800F9668 90632BC1 */  lbu        $v1, %lo(D_800F2BC1)($v1)
/* D0ADC 800F966C A043004C */  sb         $v1, 0x4c($v0)
/* D0AE0 800F9670 3C03800F */  lui        $v1, %hi(D_800F2BC0)
/* D0AE4 800F9674 94632BC0 */  lhu        $v1, %lo(D_800F2BC0)($v1)
/* D0AE8 800F9678 00031880 */  sll        $v1, $v1, 2
/* D0AEC 800F967C 3C01800F */  lui        $at, %hi(D_800F3FB0)
/* D0AF0 800F9680 00230821 */  addu       $at, $at, $v1
/* D0AF4 800F9684 AC223FB0 */  sw         $v0, %lo(D_800F3FB0)($at)
/* D0AF8 800F9688 3C02800F */  lui        $v0, %hi(D_800F2BC0)
/* D0AFC 800F968C 94422BC0 */  lhu        $v0, %lo(D_800F2BC0)($v0)
/* D0B00 800F9690 24420001 */  addiu      $v0, $v0, 1
/* D0B04 800F9694 3C01800F */  lui        $at, %hi(D_800F2BC0)
/* D0B08 800F9698 A4222BC0 */  sh         $v0, %lo(D_800F2BC0)($at)
/* D0B0C 800F969C 8FBF0018 */  lw         $ra, 0x18($sp)
/* D0B10 800F96A0 03E00008 */  jr         $ra
/* D0B14 800F96A4 27BD0020 */   addiu     $sp, $sp, 0x20
