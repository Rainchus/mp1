	.set noat
	.set noreorder

glabel func_80072724
/* 73324 80072724 3C01800F */  lui        $at, %hi(D_800EDEB0)
/* 73328 80072728 A024DEB0 */  sb         $a0, %lo(D_800EDEB0)($at)
/* 7332C 8007272C 3C01800F */  lui        $at, %hi(D_800F2CF8)
/* 73330 80072730 A0252CF8 */  sb         $a1, %lo(D_800F2CF8)($at)
/* 73334 80072734 3C01800F */  lui        $at, %hi(D_800F396A)
/* 73338 80072738 03E00008 */  jr         $ra
/* 7333C 8007273C A026396A */   sb        $a2, %lo(D_800F396A)($at)
