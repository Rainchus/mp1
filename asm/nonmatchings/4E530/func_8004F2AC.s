	.set noat
	.set noreorder

glabel func_8004F2AC
/* 4FEAC 8004F2AC 00001821 */  addu       $v1, $zero, $zero
/* 4FEB0 8004F2B0 00031040 */  sll        $v0, $v1, 1
.L8004F2B4:
/* 4FEB4 8004F2B4 00431021 */  addu       $v0, $v0, $v1
/* 4FEB8 8004F2B8 00021080 */  sll        $v0, $v0, 2
/* 4FEBC 8004F2BC 3C01800E */  lui        $at, %hi(D_800D8164)
/* 4FEC0 8004F2C0 00220821 */  addu       $at, $at, $v0
/* 4FEC4 8004F2C4 AC208164 */  sw         $zero, %lo(D_800D8164)($at)
/* 4FEC8 8004F2C8 3C01800E */  lui        $at, %hi(D_800D8168)
/* 4FECC 8004F2CC 00220821 */  addu       $at, $at, $v0
/* 4FED0 8004F2D0 AC208168 */  sw         $zero, %lo(D_800D8168)($at)
/* 4FED4 8004F2D4 24630001 */  addiu      $v1, $v1, 1
/* 4FED8 8004F2D8 28620010 */  slti       $v0, $v1, 0x10
/* 4FEDC 8004F2DC 5440FFF5 */  bnel       $v0, $zero, .L8004F2B4
/* 4FEE0 8004F2E0 00031040 */   sll       $v0, $v1, 1
/* 4FEE4 8004F2E4 03E00008 */  jr         $ra
/* 4FEE8 8004F2E8 00000000 */   nop
