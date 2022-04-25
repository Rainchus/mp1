	.set noat
	.set noreorder

glabel func_8005CD7C
/* 5D97C 8005CD7C 24020004 */  addiu      $v0, $zero, 4
/* 5D980 8005CD80 3C01800E */  lui        $at, %hi(D_800D8984)
/* 5D984 8005CD84 A4228984 */  sh         $v0, %lo(D_800D8984)($at)
/* 5D988 8005CD88 3C01800F */  lui        $at, %hi(D_800F37BA)
/* 5D98C 8005CD8C A02437BA */  sb         $a0, %lo(D_800F37BA)($at)
/* 5D990 8005CD90 3C01800E */  lui        $at, %hi(D_800D8952)
/* 5D994 8005CD94 A4258952 */  sh         $a1, %lo(D_800D8952)($at)
/* 5D998 8005CD98 3C01800E */  lui        $at, %hi(D_800D8986)
/* 5D99C 8005CD9C A4268986 */  sh         $a2, %lo(D_800D8986)($at)
/* 5D9A0 8005CDA0 3C01800E */  lui        $at, %hi(D_800D8988)
/* 5D9A4 8005CDA4 03E00008 */  jr         $ra
/* 5D9A8 8005CDA8 A4278988 */   sh        $a3, %lo(D_800D8988)($at)
