	.set noat
	.set noreorder

glabel func_800F7DC0_CF230
/* CF230 800F7DC0 00003021 */  addu       $a2, $zero, $zero
/* CF234 800F7DC4 2407FFFF */  addiu      $a3, $zero, -1
/* CF238 800F7DC8 00061400 */  sll        $v0, $a2, 0x10
.L800F7DCC:
/* CF23C 800F7DCC 00021B83 */  sra        $v1, $v0, 0xe
/* CF240 800F7DD0 3C028010 */  lui        $v0, %hi(D_800FE158)
/* CF244 800F7DD4 00431021 */  addu       $v0, $v0, $v1
/* CF248 800F7DD8 8442E158 */  lh         $v0, %lo(D_800FE158)($v0)
/* CF24C 800F7DDC 14470008 */  bne        $v0, $a3, .L800F7E00
/* CF250 800F7DE0 24C20001 */   addiu     $v0, $a2, 1
/* CF254 800F7DE4 3C018010 */  lui        $at, %hi(D_800FE158)
/* CF258 800F7DE8 00230821 */  addu       $at, $at, $v1
/* CF25C 800F7DEC A424E158 */  sh         $a0, %lo(D_800FE158)($at)
/* CF260 800F7DF0 3C018010 */  lui        $at, %hi(D_800FE15A)
/* CF264 800F7DF4 00230821 */  addu       $at, $at, $v1
/* CF268 800F7DF8 0803DF86 */  j          .L800F7E18
/* CF26C 800F7DFC A425E15A */   sh        $a1, %lo(D_800FE15A)($at)
.L800F7E00:
/* CF270 800F7E00 00403021 */  addu       $a2, $v0, $zero
/* CF274 800F7E04 00021400 */  sll        $v0, $v0, 0x10
/* CF278 800F7E08 00021403 */  sra        $v0, $v0, 0x10
/* CF27C 800F7E0C 2842000A */  slti       $v0, $v0, 0xa
/* CF280 800F7E10 1440FFEE */  bnez       $v0, .L800F7DCC
/* CF284 800F7E14 00061400 */   sll       $v0, $a2, 0x10
.L800F7E18:
/* CF288 800F7E18 03E00008 */  jr         $ra
/* CF28C 800F7E1C 00000000 */   nop
