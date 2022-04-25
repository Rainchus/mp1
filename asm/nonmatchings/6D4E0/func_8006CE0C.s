	.set noat
	.set noreorder

glabel func_8006CE0C
/* 6DA0C 8006CE0C 84830000 */  lh         $v1, ($a0)
/* 6DA10 8006CE10 00031040 */  sll        $v0, $v1, 1
/* 6DA14 8006CE14 00431021 */  addu       $v0, $v0, $v1
/* 6DA18 8006CE18 00021080 */  sll        $v0, $v0, 2
/* 6DA1C 8006CE1C 3C03800E */  lui        $v1, %hi(D_800E42E0)
/* 6DA20 8006CE20 246342E0 */  addiu      $v1, $v1, %lo(D_800E42E0)
/* 6DA24 8006CE24 00431821 */  addu       $v1, $v0, $v1
/* 6DA28 8006CE28 84620000 */  lh         $v0, ($v1)
/* 6DA2C 8006CE2C 1040000B */  beqz       $v0, .L8006CE5C
/* 6DA30 8006CE30 24020001 */   addiu     $v0, $zero, 1
/* 6DA34 8006CE34 A4620000 */  sh         $v0, ($v1)
/* 6DA38 8006CE38 24020003 */  addiu      $v0, $zero, 3
/* 6DA3C 8006CE3C A4620002 */  sh         $v0, 2($v1)
/* 6DA40 8006CE40 94820002 */  lhu        $v0, 2($a0)
/* 6DA44 8006CE44 A4620004 */  sh         $v0, 4($v1)
/* 6DA48 8006CE48 94820004 */  lhu        $v0, 4($a0)
/* 6DA4C 8006CE4C A4620006 */  sh         $v0, 6($v1)
/* 6DA50 8006CE50 94820006 */  lhu        $v0, 6($a0)
/* 6DA54 8006CE54 A462000A */  sh         $v0, 0xa($v1)
/* 6DA58 8006CE58 A4600008 */  sh         $zero, 8($v1)
.L8006CE5C:
/* 6DA5C 8006CE5C 03E00008 */  jr         $ra
/* 6DA60 8006CE60 00000000 */   nop
