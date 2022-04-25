	.set noat
	.set noreorder

glabel func_80054FA8
/* 55BA8 80054FA8 00002021 */  addu       $a0, $zero, $zero
/* 55BAC 80054FAC 00001821 */  addu       $v1, $zero, $zero
/* 55BB0 80054FB0 2405FFFE */  addiu      $a1, $zero, -2
/* 55BB4 80054FB4 00031180 */  sll        $v0, $v1, 6
.L80054FB8:
/* 55BB8 80054FB8 3C01800E */  lui        $at, %hi(D_800D83B2)
/* 55BBC 80054FBC 00220821 */  addu       $at, $at, $v0
/* 55BC0 80054FC0 842283B2 */  lh         $v0, %lo(D_800D83B2)($at)
/* 55BC4 80054FC4 54450001 */  bnel       $v0, $a1, .L80054FCC
/* 55BC8 80054FC8 24040001 */   addiu     $a0, $zero, 1
.L80054FCC:
/* 55BCC 80054FCC 24630001 */  addiu      $v1, $v1, 1
/* 55BD0 80054FD0 28620004 */  slti       $v0, $v1, 4
/* 55BD4 80054FD4 5440FFF8 */  bnel       $v0, $zero, .L80054FB8
/* 55BD8 80054FD8 00031180 */   sll       $v0, $v1, 6
/* 55BDC 80054FDC 03E00008 */  jr         $ra
/* 55BE0 80054FE0 00801021 */   addu      $v0, $a0, $zero
