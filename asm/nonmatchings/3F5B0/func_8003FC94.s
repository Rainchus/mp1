	.set noat
	.set noreorder

glabel func_8003FC94
/* 40894 8003FC94 00001821 */  addu       $v1, $zero, $zero
/* 40898 8003FC98 00031100 */  sll        $v0, $v1, 4
.L8003FC9C:
/* 4089C 8003FC9C 00431021 */  addu       $v0, $v0, $v1
/* 408A0 8003FCA0 00021080 */  sll        $v0, $v0, 2
/* 408A4 8003FCA4 3C01800D */  lui        $at, %hi(D_800D62D3)
/* 408A8 8003FCA8 00220821 */  addu       $at, $at, $v0
/* 408AC 8003FCAC A02062D3 */  sb         $zero, %lo(D_800D62D3)($at)
/* 408B0 8003FCB0 3C01800D */  lui        $at, %hi(D_800D62D2)
/* 408B4 8003FCB4 00220821 */  addu       $at, $at, $v0
/* 408B8 8003FCB8 A02062D2 */  sb         $zero, %lo(D_800D62D2)($at)
/* 408BC 8003FCBC 24630001 */  addiu      $v1, $v1, 1
/* 408C0 8003FCC0 28620004 */  slti       $v0, $v1, 4
/* 408C4 8003FCC4 5440FFF5 */  bnel       $v0, $zero, .L8003FC9C
/* 408C8 8003FCC8 00031100 */   sll       $v0, $v1, 4
/* 408CC 8003FCCC 03E00008 */  jr         $ra
/* 408D0 8003FCD0 00000000 */   nop
