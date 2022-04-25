	.set noat
	.set noreorder

glabel func_800593AC
/* 59FAC 800593AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 59FB0 800593B0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 59FB4 800593B4 00042400 */  sll        $a0, $a0, 0x10
/* 59FB8 800593B8 00042403 */  sra        $a0, $a0, 0x10
/* 59FBC 800593BC 27A50010 */  addiu      $a1, $sp, 0x10
/* 59FC0 800593C0 0C0164D5 */  jal        func_80059354
/* 59FC4 800593C4 27A60012 */   addiu     $a2, $sp, 0x12
/* 59FC8 800593C8 87A40010 */  lh         $a0, 0x10($sp)
/* 59FCC 800593CC 87A20012 */  lh         $v0, 0x12($sp)
/* 59FD0 800593D0 24030001 */  addiu      $v1, $zero, 1
/* 59FD4 800593D4 00431804 */  sllv       $v1, $v1, $v0
/* 59FD8 800593D8 3C02800F */  lui        $v0, %hi(D_800ED112)
/* 59FDC 800593DC 00441021 */  addu       $v0, $v0, $a0
/* 59FE0 800593E0 9042D112 */  lbu        $v0, %lo(D_800ED112)($v0)
/* 59FE4 800593E4 00431025 */  or         $v0, $v0, $v1
/* 59FE8 800593E8 3C01800F */  lui        $at, %hi(D_800ED112)
/* 59FEC 800593EC 00240821 */  addu       $at, $at, $a0
/* 59FF0 800593F0 A022D112 */  sb         $v0, %lo(D_800ED112)($at)
/* 59FF4 800593F4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 59FF8 800593F8 03E00008 */  jr         $ra
/* 59FFC 800593FC 27BD0020 */   addiu     $sp, $sp, 0x20
