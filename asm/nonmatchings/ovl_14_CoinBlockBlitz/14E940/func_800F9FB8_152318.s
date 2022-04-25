	.set noat
	.set noreorder

glabel func_800F9FB8_152318
/* 152318 800F9FB8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 15231C 800F9FBC AFBF0030 */  sw         $ra, 0x30($sp)
/* 152320 800F9FC0 AFB1002C */  sw         $s1, 0x2c($sp)
/* 152324 800F9FC4 AFB00028 */  sw         $s0, 0x28($sp)
/* 152328 800F9FC8 00808821 */  addu       $s1, $a0, $zero
/* 15232C 800F9FCC 27B00018 */  addiu      $s0, $sp, 0x18
/* 152330 800F9FD0 3C038010 */  lui        $v1, %hi(D_800FA8E2)
/* 152334 800F9FD4 9463A8E2 */  lhu        $v1, %lo(D_800FA8E2)($v1)
/* 152338 800F9FD8 00031040 */  sll        $v0, $v1, 1
/* 15233C 800F9FDC 00431021 */  addu       $v0, $v0, $v1
/* 152340 800F9FE0 00021080 */  sll        $v0, $v0, 2
/* 152344 800F9FE4 3C058010 */  lui        $a1, %hi(D_800FA824)
/* 152348 800F9FE8 00A22821 */  addu       $a1, $a1, $v0
/* 15234C 800F9FEC 8CA5A824 */  lw         $a1, %lo(D_800FA824)($a1)
/* 152350 800F9FF0 3C068010 */  lui        $a2, %hi(D_800FA828)
/* 152354 800F9FF4 00C23021 */  addu       $a2, $a2, $v0
/* 152358 800F9FF8 8CC6A828 */  lw         $a2, %lo(D_800FA828)($a2)
/* 15235C 800F9FFC 3C078010 */  lui        $a3, %hi(D_800FA82C)
/* 152360 800FA000 00E23821 */  addu       $a3, $a3, $v0
/* 152364 800FA004 8CE7A82C */  lw         $a3, %lo(D_800FA82C)($a3)
/* 152368 800FA008 0C028340 */  jal        func_800A0D00
/* 15236C 800FA00C 02002021 */   addu      $a0, $s0, $zero
/* 152370 800FA010 3C03800F */  lui        $v1, %hi(D_800F32B4)
/* 152374 800FA014 906332B4 */  lbu        $v1, %lo(D_800F32B4)($v1)
/* 152378 800FA018 00031080 */  sll        $v0, $v1, 2
/* 15237C 800FA01C 00431021 */  addu       $v0, $v0, $v1
/* 152380 800FA020 00021080 */  sll        $v0, $v0, 2
/* 152384 800FA024 AFB00010 */  sw         $s0, 0x10($sp)
/* 152388 800FA028 3063FFFF */  andi       $v1, $v1, 0xffff
/* 15238C 800FA02C AFA30014 */  sw         $v1, 0x14($sp)
/* 152390 800FA030 02202021 */  addu       $a0, $s1, $zero
/* 152394 800FA034 3C05800C */  lui        $a1, %hi(D_800C59AC)
/* 152398 800FA038 00A22821 */  addu       $a1, $a1, $v0
/* 15239C 800FA03C 8CA559AC */  lw         $a1, %lo(D_800C59AC)($a1)
/* 1523A0 800FA040 3C06800C */  lui        $a2, %hi(D_800C59B0)
/* 1523A4 800FA044 00C23021 */  addu       $a2, $a2, $v0
/* 1523A8 800FA048 8CC659B0 */  lw         $a2, %lo(D_800C59B0)($a2)
/* 1523AC 800FA04C 0C03E6F3 */  jal        func_800F9BCC_151F2C
/* 1523B0 800FA050 00003821 */   addu      $a3, $zero, $zero
/* 1523B4 800FA054 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1523B8 800FA058 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1523BC 800FA05C 8FB00028 */  lw         $s0, 0x28($sp)
/* 1523C0 800FA060 03E00008 */  jr         $ra
/* 1523C4 800FA064 27BD0038 */   addiu     $sp, $sp, 0x38
