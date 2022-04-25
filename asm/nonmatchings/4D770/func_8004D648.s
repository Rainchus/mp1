	.set noat
	.set noreorder

glabel func_8004D648
/* 4E248 8004D648 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4E24C 8004D64C AFBF0020 */  sw         $ra, 0x20($sp)
/* 4E250 8004D650 AFB3001C */  sw         $s3, 0x1c($sp)
/* 4E254 8004D654 AFB20018 */  sw         $s2, 0x18($sp)
/* 4E258 8004D658 AFB10014 */  sw         $s1, 0x14($sp)
/* 4E25C 8004D65C AFB00010 */  sw         $s0, 0x10($sp)
/* 4E260 8004D660 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 4E264 8004D664 00808821 */  addu       $s1, $a0, $zero
/* 4E268 8004D668 00A09021 */  addu       $s2, $a1, $zero
/* 4E26C 8004D66C 00C09821 */  addu       $s3, $a2, $zero
/* 4E270 8004D670 4487A000 */  mtc1       $a3, $f20
/* 4E274 8004D674 3C048005 */  lui        $a0, %hi(func_8004D580)
/* 4E278 8004D678 2484D580 */  addiu      $a0, $a0, %lo(func_8004D580)
/* 4E27C 8004D67C 24054001 */  addiu      $a1, $zero, 0x4001
/* 4E280 8004D680 00003021 */  addu       $a2, $zero, $zero
/* 4E284 8004D684 0C01770A */  jal        func_8005DC28
/* 4E288 8004D688 24070050 */   addiu     $a3, $zero, 0x50
/* 4E28C 8004D68C 00408021 */  addu       $s0, $v0, $zero
/* 4E290 8004D690 8E040018 */  lw         $a0, 0x18($s0)
/* 4E294 8004D694 0C016628 */  jal        func_800598A0
/* 4E298 8004D698 24050020 */   addiu     $a1, $zero, 0x20
/* 4E29C 8004D69C AE02008C */  sw         $v0, 0x8c($s0)
/* 4E2A0 8004D6A0 8E230000 */  lw         $v1, ($s1)
/* 4E2A4 8004D6A4 8E240004 */  lw         $a0, 4($s1)
/* 4E2A8 8004D6A8 8E250008 */  lw         $a1, 8($s1)
/* 4E2AC 8004D6AC AC430000 */  sw         $v1, ($v0)
/* 4E2B0 8004D6B0 AC440004 */  sw         $a0, 4($v0)
/* 4E2B4 8004D6B4 AC450008 */  sw         $a1, 8($v0)
/* 4E2B8 8004D6B8 8E430000 */  lw         $v1, ($s2)
/* 4E2BC 8004D6BC 8E440004 */  lw         $a0, 4($s2)
/* 4E2C0 8004D6C0 8E450008 */  lw         $a1, 8($s2)
/* 4E2C4 8004D6C4 AC43000C */  sw         $v1, 0xc($v0)
/* 4E2C8 8004D6C8 AC440010 */  sw         $a0, 0x10($v0)
/* 4E2CC 8004D6CC AC450014 */  sw         $a1, 0x14($v0)
/* 4E2D0 8004D6D0 AC530018 */  sw         $s3, 0x18($v0)
/* 4E2D4 8004D6D4 E454001C */  swc1       $f20, 0x1c($v0)
/* 4E2D8 8004D6D8 02001021 */  addu       $v0, $s0, $zero
/* 4E2DC 8004D6DC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 4E2E0 8004D6E0 8FB3001C */  lw         $s3, 0x1c($sp)
/* 4E2E4 8004D6E4 8FB20018 */  lw         $s2, 0x18($sp)
/* 4E2E8 8004D6E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 4E2EC 8004D6EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 4E2F0 8004D6F0 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 4E2F4 8004D6F4 03E00008 */  jr         $ra
/* 4E2F8 8004D6F8 27BD0030 */   addiu     $sp, $sp, 0x30
