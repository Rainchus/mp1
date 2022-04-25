	.set noat
	.set noreorder

glabel func_8005AE88
/* 5BA88 8005AE88 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5BA8C 8005AE8C AFBF0024 */  sw         $ra, 0x24($sp)
/* 5BA90 8005AE90 AFB40020 */  sw         $s4, 0x20($sp)
/* 5BA94 8005AE94 AFB3001C */  sw         $s3, 0x1c($sp)
/* 5BA98 8005AE98 AFB20018 */  sw         $s2, 0x18($sp)
/* 5BA9C 8005AE9C AFB10014 */  sw         $s1, 0x14($sp)
/* 5BAA0 8005AEA0 AFB00010 */  sw         $s0, 0x10($sp)
/* 5BAA4 8005AEA4 00008021 */  addu       $s0, $zero, $zero
/* 5BAA8 8005AEA8 00009021 */  addu       $s2, $zero, $zero
/* 5BAAC 8005AEAC 00008821 */  addu       $s1, $zero, $zero
/* 5BAB0 8005AEB0 24140001 */  addiu      $s4, $zero, 1
/* 5BAB4 8005AEB4 24130003 */  addiu      $s3, $zero, 3
/* 5BAB8 8005AEB8 00102400 */  sll        $a0, $s0, 0x10
.L8005AEBC:
/* 5BABC 8005AEBC 0C00507F */  jal        func_800141FC
/* 5BAC0 8005AEC0 00042403 */   sra       $a0, $a0, 0x10
/* 5BAC4 8005AEC4 14540009 */  bne        $v0, $s4, .L8005AEEC
/* 5BAC8 8005AEC8 02711823 */   subu      $v1, $s3, $s1
/* 5BACC 8005AECC 00121040 */  sll        $v0, $s2, 1
/* 5BAD0 8005AED0 00521021 */  addu       $v0, $v0, $s2
/* 5BAD4 8005AED4 00021100 */  sll        $v0, $v0, 4
/* 5BAD8 8005AED8 3C01800F */  lui        $at, %hi(D_800F32B3)
/* 5BADC 8005AEDC 00220821 */  addu       $at, $at, $v0
/* 5BAE0 8005AEE0 A03032B3 */  sb         $s0, %lo(D_800F32B3)($at)
/* 5BAE4 8005AEE4 08016BC2 */  j          .L8005AF08
/* 5BAE8 8005AEE8 26520001 */   addiu     $s2, $s2, 1
.L8005AEEC:
/* 5BAEC 8005AEEC 00031040 */  sll        $v0, $v1, 1
/* 5BAF0 8005AEF0 00431021 */  addu       $v0, $v0, $v1
/* 5BAF4 8005AEF4 00021100 */  sll        $v0, $v0, 4
/* 5BAF8 8005AEF8 3C01800F */  lui        $at, %hi(D_800F32B3)
/* 5BAFC 8005AEFC 00220821 */  addu       $at, $at, $v0
/* 5BB00 8005AF00 A03032B3 */  sb         $s0, %lo(D_800F32B3)($at)
/* 5BB04 8005AF04 26310001 */  addiu      $s1, $s1, 1
.L8005AF08:
/* 5BB08 8005AF08 26100001 */  addiu      $s0, $s0, 1
/* 5BB0C 8005AF0C 2A020004 */  slti       $v0, $s0, 4
/* 5BB10 8005AF10 1440FFEA */  bnez       $v0, .L8005AEBC
/* 5BB14 8005AF14 00102400 */   sll       $a0, $s0, 0x10
/* 5BB18 8005AF18 24020004 */  addiu      $v0, $zero, 4
/* 5BB1C 8005AF1C 16220005 */  bne        $s1, $v0, .L8005AF34
/* 5BB20 8005AF20 24020003 */   addiu     $v0, $zero, 3
/* 5BB24 8005AF24 3C03800F */  lui        $v1, %hi(D_800F32B3)
/* 5BB28 8005AF28 246332B3 */  addiu      $v1, $v1, %lo(D_800F32B3)
/* 5BB2C 8005AF2C A0600000 */  sb         $zero, ($v1)
/* 5BB30 8005AF30 A0620090 */  sb         $v0, 0x90($v1)
.L8005AF34:
/* 5BB34 8005AF34 3C01800F */  lui        $at, %hi(D_800F32B6)
/* 5BB38 8005AF38 A42032B6 */  sh         $zero, %lo(D_800F32B6)($at)
/* 5BB3C 8005AF3C 02401021 */  addu       $v0, $s2, $zero
/* 5BB40 8005AF40 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5BB44 8005AF44 8FB40020 */  lw         $s4, 0x20($sp)
/* 5BB48 8005AF48 8FB3001C */  lw         $s3, 0x1c($sp)
/* 5BB4C 8005AF4C 8FB20018 */  lw         $s2, 0x18($sp)
/* 5BB50 8005AF50 8FB10014 */  lw         $s1, 0x14($sp)
/* 5BB54 8005AF54 8FB00010 */  lw         $s0, 0x10($sp)
/* 5BB58 8005AF58 03E00008 */  jr         $ra
/* 5BB5C 8005AF5C 27BD0028 */   addiu     $sp, $sp, 0x28
