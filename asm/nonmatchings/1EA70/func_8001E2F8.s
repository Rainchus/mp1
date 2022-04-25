	.set noat
	.set noreorder

glabel func_8001E2F8
/* 1EEF8 8001E2F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EEFC 8001E2FC 00042400 */  sll        $a0, $a0, 0x10
/* 1EF00 8001E300 00042403 */  sra        $a0, $a0, 0x10
/* 1EF04 8001E304 2402FFFF */  addiu      $v0, $zero, -1
/* 1EF08 8001E308 10820012 */  beq        $a0, $v0, .L8001E354
/* 1EF0C 8001E30C AFBF0010 */   sw        $ra, 0x10($sp)
/* 1EF10 8001E310 3C03800F */  lui        $v1, %hi(D_800ECDE0)
/* 1EF14 8001E314 8C63CDE0 */  lw         $v1, %lo(D_800ECDE0)($v1)
/* 1EF18 8001E318 000410C0 */  sll        $v0, $a0, 3
/* 1EF1C 8001E31C 00441021 */  addu       $v0, $v0, $a0
/* 1EF20 8001E320 00021080 */  sll        $v0, $v0, 2
/* 1EF24 8001E324 00431821 */  addu       $v1, $v0, $v1
/* 1EF28 8001E328 A0650012 */  sb         $a1, 0x12($v1)
/* 1EF2C 8001E32C 30A600FF */  andi       $a2, $a1, 0xff
/* 1EF30 8001E330 38C600FF */  xori       $a2, $a2, 0xff
/* 1EF34 8001E334 0006302B */  sltu       $a2, $zero, $a2
/* 1EF38 8001E338 3C03800F */  lui        $v1, %hi(D_800ECDE0)
/* 1EF3C 8001E33C 8C63CDE0 */  lw         $v1, %lo(D_800ECDE0)($v1)
/* 1EF40 8001E340 00431021 */  addu       $v0, $v0, $v1
/* 1EF44 8001E344 84440000 */  lh         $a0, ($v0)
/* 1EF48 8001E348 3C050001 */  lui        $a1, 1
/* 1EF4C 8001E34C 0C00964C */  jal        func_80025930
/* 1EF50 8001E350 00063400 */   sll       $a2, $a2, 0x10
.L8001E354:
/* 1EF54 8001E354 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1EF58 8001E358 03E00008 */  jr         $ra
/* 1EF5C 8001E35C 27BD0018 */   addiu     $sp, $sp, 0x18
