	.set noat
	.set noreorder

glabel func_8004F140
/* 4FD40 8004F140 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4FD44 8004F144 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4FD48 8004F148 AFB00018 */  sw         $s0, 0x18($sp)
/* 4FD4C 8004F14C 00808021 */  addu       $s0, $a0, $zero
/* 4FD50 8004F150 3C04000A */  lui        $a0, 0xa
/* 4FD54 8004F154 34840076 */  ori        $a0, $a0, 0x76
/* 4FD58 8004F158 0C005D4A */  jal        func_80017528
/* 4FD5C 8004F15C 240502AD */   addiu     $a1, $zero, 0x2ad
/* 4FD60 8004F160 3042FFFF */  andi       $v0, $v0, 0xffff
/* 4FD64 8004F164 3C01800C */  lui        $at, %hi(D_800C524C)
/* 4FD68 8004F168 AC22524C */  sw         $v0, %lo(D_800C524C)($at)
/* 4FD6C 8004F16C 00102400 */  sll        $a0, $s0, 0x10
/* 4FD70 8004F170 0C009810 */  jal        func_80026040
/* 4FD74 8004F174 00042403 */   sra       $a0, $a0, 0x10
/* 4FD78 8004F178 3C028005 */  lui        $v0, %hi(func_8004F084)
/* 4FD7C 8004F17C 2442F084 */  addiu      $v0, $v0, %lo(func_8004F084)
/* 4FD80 8004F180 AFA20010 */  sw         $v0, 0x10($sp)
/* 4FD84 8004F184 24041000 */  addiu      $a0, $zero, 0x1000
/* 4FD88 8004F188 00002821 */  addu       $a1, $zero, $zero
/* 4FD8C 8004F18C 00003021 */  addu       $a2, $zero, $zero
/* 4FD90 8004F190 0C0174E1 */  jal        func_8005D384
/* 4FD94 8004F194 2407FFFF */   addiu     $a3, $zero, -1
/* 4FD98 8004F198 3C01800C */  lui        $at, %hi(D_800C5248)
/* 4FD9C 8004F19C AC225248 */  sw         $v0, %lo(D_800C5248)($at)
/* 4FDA0 8004F1A0 AC400018 */  sw         $zero, 0x18($v0)
/* 4FDA4 8004F1A4 A450003C */  sh         $s0, 0x3c($v0)
/* 4FDA8 8004F1A8 3C03800C */  lui        $v1, %hi(D_800C524E)
/* 4FDAC 8004F1AC 9463524E */  lhu        $v1, %lo(D_800C524E)($v1)
/* 4FDB0 8004F1B0 A4430044 */  sh         $v1, 0x44($v0)
/* 4FDB4 8004F1B4 00402021 */  addu       $a0, $v0, $zero
/* 4FDB8 8004F1B8 0C01762E */  jal        func_8005D8B8
/* 4FDBC 8004F1BC 240500A0 */   addiu     $a1, $zero, 0xa0
/* 4FDC0 8004F1C0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4FDC4 8004F1C4 8FB00018 */  lw         $s0, 0x18($sp)
/* 4FDC8 8004F1C8 03E00008 */  jr         $ra
/* 4FDCC 8004F1CC 27BD0020 */   addiu     $sp, $sp, 0x20
