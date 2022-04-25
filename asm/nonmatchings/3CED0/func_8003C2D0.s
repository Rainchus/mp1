	.set noat
	.set noreorder

glabel func_8003C2D0
/* 3CED0 8003C2D0 3C01800D */  lui        $at, %hi(D_800D6050)
/* 3CED4 8003C2D4 AC246050 */  sw         $a0, %lo(D_800D6050)($at)
/* 3CED8 8003C2D8 00001821 */  addu       $v1, $zero, $zero
/* 3CEDC 8003C2DC 2404FFFF */  addiu      $a0, $zero, -1
/* 3CEE0 8003C2E0 00031100 */  sll        $v0, $v1, 4
.L8003C2E4:
/* 3CEE4 8003C2E4 3C01800D */  lui        $at, %hi(D_800D6058)
/* 3CEE8 8003C2E8 00220821 */  addu       $at, $at, $v0
/* 3CEEC 8003C2EC A0246058 */  sb         $a0, %lo(D_800D6058)($at)
/* 3CEF0 8003C2F0 24630001 */  addiu      $v1, $v1, 1
/* 3CEF4 8003C2F4 28620014 */  slti       $v0, $v1, 0x14
/* 3CEF8 8003C2F8 5440FFFA */  bnel       $v0, $zero, .L8003C2E4
/* 3CEFC 8003C2FC 00031100 */   sll       $v0, $v1, 4
/* 3CF00 8003C300 3C01800D */  lui        $at, %hi(D_800D6054)
/* 3CF04 8003C304 03E00008 */  jr         $ra
/* 3CF08 8003C308 A4206054 */   sh        $zero, %lo(D_800D6054)($at)
