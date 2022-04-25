	.set noat
	.set noreorder

glabel func_8005D8DC
/* 5E4DC 8005D8DC 84820022 */  lh         $v0, 0x22($a0)
/* 5E4E0 8005D8E0 3C04800C */  lui        $a0, %hi(D_800C5990)
/* 5E4E4 8005D8E4 8C845990 */  lw         $a0, %lo(D_800C5990)($a0)
/* 5E4E8 8005D8E8 00021840 */  sll        $v1, $v0, 1
/* 5E4EC 8005D8EC 00621821 */  addu       $v1, $v1, $v0
/* 5E4F0 8005D8F0 00031880 */  sll        $v1, $v1, 2
/* 5E4F4 8005D8F4 00641821 */  addu       $v1, $v1, $a0
/* 5E4F8 8005D8F8 03E00008 */  jr         $ra
/* 5E4FC 8005D8FC A4650000 */   sh        $a1, ($v1)
