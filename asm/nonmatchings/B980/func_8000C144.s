	.set noat
	.set noreorder

glabel func_8000C144
/* CD44 8000C144 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* CD48 8000C148 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* CD4C 8000C14C 30420002 */  andi       $v0, $v0, 2
/* CD50 8000C150 10400003 */  beqz       $v0, .L8000C160
/* CD54 8000C154 00000000 */   nop
/* CD58 8000C158 0800305F */  j          .L8000C17C
/* CD5C 8000C15C 24020100 */   addiu     $v0, $zero, 0x100
.L8000C160:
/* CD60 8000C160 3C03800D */  lui        $v1, %hi(D_800CDAF0)
/* CD64 8000C164 8C63DAF0 */  lw         $v1, %lo(D_800CDAF0)($v1)
/* CD68 8000C168 30630001 */  andi       $v1, $v1, 1
/* CD6C 8000C16C 14600003 */  bnez       $v1, .L8000C17C
/* CD70 8000C170 24020200 */   addiu     $v0, $zero, 0x200
/* CD74 8000C174 3C02800D */  lui        $v0, %hi(D_800CDAEC)
/* CD78 8000C178 8C42DAEC */  lw         $v0, %lo(D_800CDAEC)($v0)
.L8000C17C:
/* CD7C 8000C17C 03E00008 */  jr         $ra
/* CD80 8000C180 00000000 */   nop
