	.set noat
	.set noreorder

glabel func_80055994
/* 56594 80055994 00042180 */  sll        $a0, $a0, 6
/* 56598 80055998 3C01800E */  lui        $at, %hi(D_800D83AC)
/* 5659C 8005599C 00240821 */  addu       $at, $at, $a0
/* 565A0 800559A0 03E00008 */  jr         $ra
/* 565A4 800559A4 A02083AC */   sb        $zero, %lo(D_800D83AC)($at)
