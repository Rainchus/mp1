	.set noat
	.set noreorder

glabel func_8000DDEC
/* E9EC 8000DDEC 27BDFFF8 */  addiu      $sp, $sp, -8
/* E9F0 8000DDF0 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* E9F4 8000DDF4 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* E9F8 8000DDF8 18400015 */  blez       $v0, .L8000DE50
/* E9FC 8000DDFC 00002021 */   addu      $a0, $zero, $zero
/* EA00 8000DE00 3C06800D */  lui        $a2, %hi(D_800CEA94)
/* EA04 8000DE04 8CC6EA94 */  lw         $a2, %lo(D_800CEA94)($a2)
/* EA08 8000DE08 24070001 */  addiu      $a3, $zero, 1
/* EA0C 8000DE0C 3C05800D */  lui        $a1, %hi(D_800CEA9C)
/* EA10 8000DE10 8CA5EA9C */  lw         $a1, %lo(D_800CEA9C)($a1)
/* EA14 8000DE14 00041040 */  sll        $v0, $a0, 1
.L8000DE18:
/* EA18 8000DE18 00441021 */  addu       $v0, $v0, $a0
/* EA1C 8000DE1C 00021080 */  sll        $v0, $v0, 2
/* EA20 8000DE20 00441023 */  subu       $v0, $v0, $a0
/* EA24 8000DE24 00021080 */  sll        $v0, $v0, 2
/* EA28 8000DE28 00461821 */  addu       $v1, $v0, $a2
/* EA2C 8000DE2C 8C62000C */  lw         $v0, 0xc($v1)
/* EA30 8000DE30 14470004 */  bne        $v0, $a3, .L8000DE44
/* EA34 8000DE34 24840001 */   addiu     $a0, $a0, 1
/* EA38 8000DE38 8C620008 */  lw         $v0, 8($v1)
/* EA3C 8000DE3C 34420002 */  ori        $v0, $v0, 2
/* EA40 8000DE40 AC620008 */  sw         $v0, 8($v1)
.L8000DE44:
/* EA44 8000DE44 0085102A */  slt        $v0, $a0, $a1
/* EA48 8000DE48 1440FFF3 */  bnez       $v0, .L8000DE18
/* EA4C 8000DE4C 00041040 */   sll       $v0, $a0, 1
.L8000DE50:
/* EA50 8000DE50 27BD0008 */  addiu      $sp, $sp, 8
/* EA54 8000DE54 03E00008 */  jr         $ra
/* EA58 8000DE58 00000000 */   nop
