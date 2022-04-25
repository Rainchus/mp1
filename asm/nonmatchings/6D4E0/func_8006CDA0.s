	.set noat
	.set noreorder

glabel func_8006CDA0
/* 6D9A0 8006CDA0 84830000 */  lh         $v1, ($a0)
/* 6D9A4 8006CDA4 00031040 */  sll        $v0, $v1, 1
/* 6D9A8 8006CDA8 00431021 */  addu       $v0, $v0, $v1
/* 6D9AC 8006CDAC 00021080 */  sll        $v0, $v0, 2
/* 6D9B0 8006CDB0 3C03800E */  lui        $v1, %hi(D_800E42E0)
/* 6D9B4 8006CDB4 246342E0 */  addiu      $v1, $v1, %lo(D_800E42E0)
/* 6D9B8 8006CDB8 00431821 */  addu       $v1, $v0, $v1
/* 6D9BC 8006CDBC 84620000 */  lh         $v0, ($v1)
/* 6D9C0 8006CDC0 10400004 */  beqz       $v0, .L8006CDD4
/* 6D9C4 8006CDC4 24020001 */   addiu     $v0, $zero, 1
/* 6D9C8 8006CDC8 A4620002 */  sh         $v0, 2($v1)
/* 6D9CC 8006CDCC 24020003 */  addiu      $v0, $zero, 3
/* 6D9D0 8006CDD0 A462000A */  sh         $v0, 0xa($v1)
.L8006CDD4:
/* 6D9D4 8006CDD4 03E00008 */  jr         $ra
/* 6D9D8 8006CDD8 00000000 */   nop
