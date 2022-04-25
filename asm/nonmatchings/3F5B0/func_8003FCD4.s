	.set noat
	.set noreorder

glabel func_8003FCD4
/* 408D4 8003FCD4 00001821 */  addu       $v1, $zero, $zero
/* 408D8 8003FCD8 3C05800D */  lui        $a1, %hi(D_800D62D0)
/* 408DC 8003FCDC 24A562D0 */  addiu      $a1, $a1, %lo(D_800D62D0)
/* 408E0 8003FCE0 2404FFFF */  addiu      $a0, $zero, -1
/* 408E4 8003FCE4 00031100 */  sll        $v0, $v1, 4
.L8003FCE8:
/* 408E8 8003FCE8 00431021 */  addu       $v0, $v0, $v1
/* 408EC 8003FCEC 00021080 */  sll        $v0, $v0, 2
/* 408F0 8003FCF0 00451021 */  addu       $v0, $v0, $a1
/* 408F4 8003FCF4 A444000C */  sh         $a0, 0xc($v0)
/* 408F8 8003FCF8 A444000E */  sh         $a0, 0xe($v0)
/* 408FC 8003FCFC AC400028 */  sw         $zero, 0x28($v0)
/* 40900 8003FD00 A444001C */  sh         $a0, 0x1c($v0)
/* 40904 8003FD04 A4440008 */  sh         $a0, 8($v0)
/* 40908 8003FD08 A444000A */  sh         $a0, 0xa($v0)
/* 4090C 8003FD0C A0400007 */  sb         $zero, 7($v0)
/* 40910 8003FD10 AC40002C */  sw         $zero, 0x2c($v0)
/* 40914 8003FD14 AC400030 */  sw         $zero, 0x30($v0)
/* 40918 8003FD18 AC400034 */  sw         $zero, 0x34($v0)
/* 4091C 8003FD1C A0400006 */  sb         $zero, 6($v0)
/* 40920 8003FD20 A0400000 */  sb         $zero, ($v0)
/* 40924 8003FD24 A0400002 */  sb         $zero, 2($v0)
/* 40928 8003FD28 A444001E */  sh         $a0, 0x1e($v0)
/* 4092C 8003FD2C A4400020 */  sh         $zero, 0x20($v0)
/* 40930 8003FD30 A0440004 */  sb         $a0, 4($v0)
/* 40934 8003FD34 24630001 */  addiu      $v1, $v1, 1
/* 40938 8003FD38 28620004 */  slti       $v0, $v1, 4
/* 4093C 8003FD3C 1440FFEA */  bnez       $v0, .L8003FCE8
/* 40940 8003FD40 00031100 */   sll       $v0, $v1, 4
/* 40944 8003FD44 3C01800D */  lui        $at, %hi(D_800D63E1)
/* 40948 8003FD48 A02063E1 */  sb         $zero, %lo(D_800D63E1)($at)
/* 4094C 8003FD4C 24020001 */  addiu      $v0, $zero, 1
/* 40950 8003FD50 3C01800D */  lui        $at, %hi(D_800D63E2)
/* 40954 8003FD54 A02263E2 */  sb         $v0, %lo(D_800D63E2)($at)
/* 40958 8003FD58 240200FA */  addiu      $v0, $zero, 0xfa
/* 4095C 8003FD5C 3C01800D */  lui        $at, %hi(D_800D63E4)
/* 40960 8003FD60 03E00008 */  jr         $ra
/* 40964 8003FD64 AC2263E4 */   sw        $v0, %lo(D_800D63E4)($at)
