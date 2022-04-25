	.set noat
	.set noreorder

glabel func_8005CD4C
/* 5D94C 8005CD4C 3C01800E */  lui        $at, %hi(D_800D898C)
/* 5D950 8005CD50 AC24898C */  sw         $a0, %lo(D_800D898C)($at)
/* 5D954 8005CD54 3C01800E */  lui        $at, %hi(D_800D8990)
/* 5D958 8005CD58 A4258990 */  sh         $a1, %lo(D_800D8990)($at)
/* 5D95C 8005CD5C 24020002 */  addiu      $v0, $zero, 2
/* 5D960 8005CD60 3C01800E */  lui        $at, %hi(D_800D8984)
/* 5D964 8005CD64 A4228984 */  sh         $v0, %lo(D_800D8984)($at)
/* 5D968 8005CD68 3C01800E */  lui        $at, %hi(D_800D8986)
/* 5D96C 8005CD6C A4268986 */  sh         $a2, %lo(D_800D8986)($at)
/* 5D970 8005CD70 3C01800E */  lui        $at, %hi(D_800D8988)
/* 5D974 8005CD74 03E00008 */  jr         $ra
/* 5D978 8005CD78 A4278988 */   sh        $a3, %lo(D_800D8988)($at)
