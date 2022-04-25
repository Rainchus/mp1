	.set noat
	.set noreorder

glabel func_800656E4
/* 662E4 800656E4 54A00001 */  bnel       $a1, $zero, .L800656EC
/* 662E8 800656E8 ACA40068 */   sw        $a0, 0x68($a1)
.L800656EC:
/* 662EC 800656EC 54C00001 */  bnel       $a2, $zero, .L800656F4
/* 662F0 800656F0 ACC40064 */   sw        $a0, 0x64($a2)
.L800656F4:
/* 662F4 800656F4 AC850064 */  sw         $a1, 0x64($a0)
/* 662F8 800656F8 03E00008 */  jr         $ra
/* 662FC 800656FC AC860068 */   sw        $a2, 0x68($a0)
