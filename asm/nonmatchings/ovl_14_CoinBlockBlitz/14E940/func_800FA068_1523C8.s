	.set noat
	.set noreorder

glabel func_800FA068_1523C8
/* 1523C8 800FA068 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1523CC 800FA06C AFBF0030 */  sw         $ra, 0x30($sp)
/* 1523D0 800FA070 AFB1002C */  sw         $s1, 0x2c($sp)
/* 1523D4 800FA074 AFB00028 */  sw         $s0, 0x28($sp)
/* 1523D8 800FA078 00808821 */  addu       $s1, $a0, $zero
/* 1523DC 800FA07C 27B00018 */  addiu      $s0, $sp, 0x18
/* 1523E0 800FA080 3C038010 */  lui        $v1, %hi(D_800FA8E4)
/* 1523E4 800FA084 9463A8E4 */  lhu        $v1, %lo(D_800FA8E4)($v1)
/* 1523E8 800FA088 00031040 */  sll        $v0, $v1, 1
/* 1523EC 800FA08C 00431021 */  addu       $v0, $v0, $v1
/* 1523F0 800FA090 00021080 */  sll        $v0, $v0, 2
/* 1523F4 800FA094 3C058010 */  lui        $a1, %hi(D_800FA824)
/* 1523F8 800FA098 00A22821 */  addu       $a1, $a1, $v0
/* 1523FC 800FA09C 8CA5A824 */  lw         $a1, %lo(D_800FA824)($a1)
/* 152400 800FA0A0 3C068010 */  lui        $a2, %hi(D_800FA828)
/* 152404 800FA0A4 00C23021 */  addu       $a2, $a2, $v0
/* 152408 800FA0A8 8CC6A828 */  lw         $a2, %lo(D_800FA828)($a2)
/* 15240C 800FA0AC 3C078010 */  lui        $a3, %hi(D_800FA82C)
/* 152410 800FA0B0 00E23821 */  addu       $a3, $a3, $v0
/* 152414 800FA0B4 8CE7A82C */  lw         $a3, %lo(D_800FA82C)($a3)
/* 152418 800FA0B8 0C028340 */  jal        func_800A0D00
/* 15241C 800FA0BC 02002021 */   addu      $a0, $s0, $zero
/* 152420 800FA0C0 3C03800F */  lui        $v1, %hi(D_800F32E4)
/* 152424 800FA0C4 906332E4 */  lbu        $v1, %lo(D_800F32E4)($v1)
/* 152428 800FA0C8 00031080 */  sll        $v0, $v1, 2
/* 15242C 800FA0CC 00431021 */  addu       $v0, $v0, $v1
/* 152430 800FA0D0 00021080 */  sll        $v0, $v0, 2
/* 152434 800FA0D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 152438 800FA0D8 3063FFFF */  andi       $v1, $v1, 0xffff
/* 15243C 800FA0DC AFA30014 */  sw         $v1, 0x14($sp)
/* 152440 800FA0E0 02202021 */  addu       $a0, $s1, $zero
/* 152444 800FA0E4 3C05800C */  lui        $a1, %hi(D_800C59AC)
/* 152448 800FA0E8 00A22821 */  addu       $a1, $a1, $v0
/* 15244C 800FA0EC 8CA559AC */  lw         $a1, %lo(D_800C59AC)($a1)
/* 152450 800FA0F0 3C06800C */  lui        $a2, %hi(D_800C59B0)
/* 152454 800FA0F4 00C23021 */  addu       $a2, $a2, $v0
/* 152458 800FA0F8 8CC659B0 */  lw         $a2, %lo(D_800C59B0)($a2)
/* 15245C 800FA0FC 0C03E6F3 */  jal        func_800F9BCC_151F2C
/* 152460 800FA100 24070001 */   addiu     $a3, $zero, 1
/* 152464 800FA104 8FBF0030 */  lw         $ra, 0x30($sp)
/* 152468 800FA108 8FB1002C */  lw         $s1, 0x2c($sp)
/* 15246C 800FA10C 8FB00028 */  lw         $s0, 0x28($sp)
/* 152470 800FA110 03E00008 */  jr         $ra
/* 152474 800FA114 27BD0038 */   addiu     $sp, $sp, 0x38
