	.set noat
	.set noreorder

glabel func_8000B00C
/* BC0C 8000B00C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BC10 8000B010 AFBF0010 */  sw         $ra, 0x10($sp)
/* BC14 8000B014 3C02800C */  lui        $v0, %hi(D_800C18E8)
/* BC18 8000B018 244218E8 */  addiu      $v0, $v0, %lo(D_800C18E8)
/* BC1C 8000B01C AC440000 */  sw         $a0, ($v0)
/* BC20 8000B020 AC450004 */  sw         $a1, 4($v0)
/* BC24 8000B024 24030001 */  addiu      $v1, $zero, 1
/* BC28 8000B028 AC430008 */  sw         $v1, 8($v0)
/* BC2C 8000B02C AC46FFB8 */  sw         $a2, -0x48($v0)
/* BC30 8000B030 0C002C4F */  jal        func_8000B13C
/* BC34 8000B034 AC47FFBC */   sw        $a3, -0x44($v0)
/* BC38 8000B038 8FBF0010 */  lw         $ra, 0x10($sp)
/* BC3C 8000B03C 03E00008 */  jr         $ra
/* BC40 8000B040 27BD0018 */   addiu     $sp, $sp, 0x18
