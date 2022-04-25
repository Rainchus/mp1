	.set noat
	.set noreorder

glabel func_80041F84
/* 42B84 80041F84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 42B88 80041F88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 42B8C 80041F8C AFB00010 */  sw         $s0, 0x10($sp)
/* 42B90 80041F90 00041100 */  sll        $v0, $a0, 4
/* 42B94 80041F94 00441021 */  addu       $v0, $v0, $a0
/* 42B98 80041F98 00021080 */  sll        $v0, $v0, 2
/* 42B9C 80041F9C 3C03800D */  lui        $v1, %hi(D_800D62D0)
/* 42BA0 80041FA0 246362D0 */  addiu      $v1, $v1, %lo(D_800D62D0)
/* 42BA4 80041FA4 00438021 */  addu       $s0, $v0, $v1
/* 42BA8 80041FA8 8604001E */  lh         $a0, 0x1e($s0)
/* 42BAC 80041FAC 2402FFFF */  addiu      $v0, $zero, -1
/* 42BB0 80041FB0 10820006 */  beq        $a0, $v0, .L80041FCC
/* 42BB4 80041FB4 24020001 */   addiu     $v0, $zero, 1
/* 42BB8 80041FB8 0C0181C7 */  jal        func_8006071C
/* 42BBC 80041FBC 00000000 */   nop
/* 42BC0 80041FC0 2402FFFF */  addiu      $v0, $zero, -1
/* 42BC4 80041FC4 A602001E */  sh         $v0, 0x1e($s0)
/* 42BC8 80041FC8 24020001 */  addiu      $v0, $zero, 1
.L80041FCC:
/* 42BCC 80041FCC A6020020 */  sh         $v0, 0x20($s0)
/* 42BD0 80041FD0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 42BD4 80041FD4 8FB00010 */  lw         $s0, 0x10($sp)
/* 42BD8 80041FD8 03E00008 */  jr         $ra
/* 42BDC 80041FDC 27BD0018 */   addiu     $sp, $sp, 0x18
