	.set noat
	.set noreorder

glabel func_800F8BC0_D0030
/* D0030 800F8BC0 00042400 */  sll        $a0, $a0, 0x10
/* D0034 800F8BC4 00042403 */  sra        $a0, $a0, 0x10
/* D0038 800F8BC8 24020002 */  addiu      $v0, $zero, 2
/* D003C 800F8BCC 1082000C */  beq        $a0, $v0, .L800F8C00
/* D0040 800F8BD0 28820003 */   slti      $v0, $a0, 3
/* D0044 800F8BD4 10400005 */  beqz       $v0, .L800F8BEC
/* D0048 800F8BD8 24020001 */   addiu     $v0, $zero, 1
/* D004C 800F8BDC 10820008 */  beq        $a0, $v0, .L800F8C00
/* D0050 800F8BE0 00000000 */   nop
/* D0054 800F8BE4 0803E30C */  j          .L800F8C30
/* D0058 800F8BE8 00000000 */   nop
.L800F8BEC:
/* D005C 800F8BEC 24020003 */  addiu      $v0, $zero, 3
/* D0060 800F8BF0 10820003 */  beq        $a0, $v0, .L800F8C00
/* D0064 800F8BF4 24020004 */   addiu     $v0, $zero, 4
/* D0068 800F8BF8 1482000D */  bne        $a0, $v0, .L800F8C30
/* D006C 800F8BFC 00000000 */   nop
.L800F8C00:
/* D0070 800F8C00 3C028010 */  lui        $v0, %hi(D_800FE30C)
/* D0074 800F8C04 8442E30C */  lh         $v0, %lo(D_800FE30C)($v0)
/* D0078 800F8C08 00021840 */  sll        $v1, $v0, 1
/* D007C 800F8C0C 00621821 */  addu       $v1, $v1, $v0
/* D0080 800F8C10 00031900 */  sll        $v1, $v1, 4
/* D0084 800F8C14 3C02800F */  lui        $v0, %hi(D_800F32BA)
/* D0088 800F8C18 00431021 */  addu       $v0, $v0, $v1
/* D008C 800F8C1C 944232BA */  lhu        $v0, %lo(D_800F32BA)($v0)
/* D0090 800F8C20 24420002 */  addiu      $v0, $v0, 2
/* D0094 800F8C24 3C01800F */  lui        $at, %hi(D_800F32BA)
/* D0098 800F8C28 00230821 */  addu       $at, $at, $v1
/* D009C 800F8C2C A42232BA */  sh         $v0, %lo(D_800F32BA)($at)
.L800F8C30:
/* D00A0 800F8C30 03E00008 */  jr         $ra
/* D00A4 800F8C34 00000000 */   nop
