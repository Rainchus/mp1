	.set noat
	.set noreorder

glabel func_8006CD3C
/* 6D93C 8006CD3C 84830000 */  lh         $v1, ($a0)
/* 6D940 8006CD40 00031040 */  sll        $v0, $v1, 1
/* 6D944 8006CD44 00431021 */  addu       $v0, $v0, $v1
/* 6D948 8006CD48 00021080 */  sll        $v0, $v0, 2
/* 6D94C 8006CD4C 3C03800E */  lui        $v1, %hi(D_800E42E0)
/* 6D950 8006CD50 246342E0 */  addiu      $v1, $v1, %lo(D_800E42E0)
/* 6D954 8006CD54 00431821 */  addu       $v1, $v0, $v1
/* 6D958 8006CD58 84620000 */  lh         $v0, ($v1)
/* 6D95C 8006CD5C 10400002 */  beqz       $v0, .L8006CD68
/* 6D960 8006CD60 24020002 */   addiu     $v0, $zero, 2
/* 6D964 8006CD64 A4620002 */  sh         $v0, 2($v1)
.L8006CD68:
/* 6D968 8006CD68 03E00008 */  jr         $ra
/* 6D96C 8006CD6C 00000000 */   nop
