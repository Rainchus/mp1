	.set noat
	.set noreorder

glabel func_8000C4A0
/* D0A0 8000C4A0 3C02800D */  lui        $v0, %hi(D_800CDB00)
/* D0A4 8000C4A4 8442DB00 */  lh         $v0, %lo(D_800CDB00)($v0)
/* D0A8 8000C4A8 04420001 */  bltzl      $v0, .L8000C4B0
/* D0AC 8000C4AC 244200FF */   addiu     $v0, $v0, 0xff
.L8000C4B0:
/* D0B0 8000C4B0 00021400 */  sll        $v0, $v0, 0x10
/* D0B4 8000C4B4 03E00008 */  jr         $ra
/* D0B8 8000C4B8 00021603 */   sra       $v0, $v0, 0x18
