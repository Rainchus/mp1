	.set noat
	.set noreorder

glabel func_80012C7C
/* 1387C 80012C7C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13880 80012C80 AFBF0030 */  sw         $ra, 0x30($sp)
/* 13884 80012C84 3C02800D */  lui        $v0, %hi(D_800CEAA4)
/* 13888 80012C88 8C42EAA4 */  lw         $v0, %lo(D_800CEAA4)($v0)
/* 1388C 80012C8C 30428000 */  andi       $v0, $v0, 0x8000
/* 13890 80012C90 10400010 */  beqz       $v0, .L80012CD4
/* 13894 80012C94 00041400 */   sll       $v0, $a0, 0x10
/* 13898 80012C98 3C03800D */  lui        $v1, %hi(D_800CEA90)
/* 1389C 80012C9C 8C63EA90 */  lw         $v1, %lo(D_800CEA90)($v1)
/* 138A0 80012CA0 00022403 */  sra        $a0, $v0, 0x10
/* 138A4 80012CA4 84620002 */  lh         $v0, 2($v1)
/* 138A8 80012CA8 0082102A */  slt        $v0, $a0, $v0
/* 138AC 80012CAC 38420001 */  xori       $v0, $v0, 1
/* 138B0 80012CB0 00041FC2 */  srl        $v1, $a0, 0x1f
/* 138B4 80012CB4 00431025 */  or         $v0, $v0, $v1
/* 138B8 80012CB8 14400007 */  bnez       $v0, .L80012CD8
/* 138BC 80012CBC 2402FFFF */   addiu     $v0, $zero, -1
/* 138C0 80012CC0 0C0037E6 */  jal        func_8000DF98
/* 138C4 80012CC4 27A50010 */   addiu     $a1, $sp, 0x10
/* 138C8 80012CC8 93A20028 */  lbu        $v0, 0x28($sp)
/* 138CC 80012CCC 08004B36 */  j          .L80012CD8
/* 138D0 80012CD0 00000000 */   nop
.L80012CD4:
/* 138D4 80012CD4 2402FFFF */  addiu      $v0, $zero, -1
.L80012CD8:
/* 138D8 80012CD8 8FBF0030 */  lw         $ra, 0x30($sp)
/* 138DC 80012CDC 03E00008 */  jr         $ra
/* 138E0 80012CE0 27BD0038 */   addiu     $sp, $sp, 0x38
/* 138E4 80012CE4 00000000 */  nop
/* 138E8 80012CE8 00000000 */  nop
/* 138EC 80012CEC 00000000 */  nop
