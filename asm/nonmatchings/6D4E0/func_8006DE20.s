	.set noat
	.set noreorder

glabel func_8006DE20
/* 6EA20 8006DE20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6EA24 8006DE24 AFBF0018 */  sw         $ra, 0x18($sp)
/* 6EA28 8006DE28 AFB10014 */  sw         $s1, 0x14($sp)
/* 6EA2C 8006DE2C AFB00010 */  sw         $s0, 0x10($sp)
/* 6EA30 8006DE30 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 6EA34 8006DE34 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 6EA38 8006DE38 4485B000 */  mtc1       $a1, $f22
/* 6EA3C 8006DE3C 4486A000 */  mtc1       $a2, $f20
/* 6EA40 8006DE40 00042400 */  sll        $a0, $a0, 0x10
/* 6EA44 8006DE44 00042403 */  sra        $a0, $a0, 0x10
/* 6EA48 8006DE48 00041080 */  sll        $v0, $a0, 2
/* 6EA4C 8006DE4C 00441021 */  addu       $v0, $v0, $a0
/* 6EA50 8006DE50 00021140 */  sll        $v0, $v0, 5
/* 6EA54 8006DE54 00441023 */  subu       $v0, $v0, $a0
/* 6EA58 8006DE58 00021080 */  sll        $v0, $v0, 2
/* 6EA5C 8006DE5C 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6EA60 8006DE60 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6EA64 8006DE64 00438821 */  addu       $s1, $v0, $v1
/* 6EA68 8006DE68 E63600EC */  swc1       $f22, 0xec($s1)
/* 6EA6C 8006DE6C E63400F0 */  swc1       $f20, 0xf0($s1)
/* 6EA70 8006DE70 00008021 */  addu       $s0, $zero, $zero
/* 6EA74 8006DE74 00102C00 */  sll        $a1, $s0, 0x10
.L8006DE78:
/* 6EA78 8006DE78 86240044 */  lh         $a0, 0x44($s1)
/* 6EA7C 8006DE7C 4406B000 */  mfc1       $a2, $f22
/* 6EA80 8006DE80 4407A000 */  mfc1       $a3, $f20
/* 6EA84 8006DE84 00000000 */  nop
/* 6EA88 8006DE88 0C019CD5 */  jal        func_80067354
/* 6EA8C 8006DE8C 00052C03 */   sra       $a1, $a1, 0x10
/* 6EA90 8006DE90 26020001 */  addiu      $v0, $s0, 1
/* 6EA94 8006DE94 00408021 */  addu       $s0, $v0, $zero
/* 6EA98 8006DE98 00021400 */  sll        $v0, $v0, 0x10
/* 6EA9C 8006DE9C 00021403 */  sra        $v0, $v0, 0x10
/* 6EAA0 8006DEA0 2842000B */  slti       $v0, $v0, 0xb
/* 6EAA4 8006DEA4 1440FFF4 */  bnez       $v0, .L8006DE78
/* 6EAA8 8006DEA8 00102C00 */   sll       $a1, $s0, 0x10
/* 6EAAC 8006DEAC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 6EAB0 8006DEB0 8FB10014 */  lw         $s1, 0x14($sp)
/* 6EAB4 8006DEB4 8FB00010 */  lw         $s0, 0x10($sp)
/* 6EAB8 8006DEB8 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 6EABC 8006DEBC D7B40020 */  ldc1       $f20, 0x20($sp)
/* 6EAC0 8006DEC0 03E00008 */  jr         $ra
/* 6EAC4 8006DEC4 27BD0030 */   addiu     $sp, $sp, 0x30
