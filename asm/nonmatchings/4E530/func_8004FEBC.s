	.set noat
	.set noreorder

glabel func_8004FEBC
/* 50ABC 8004FEBC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 50AC0 8004FEC0 00803821 */  addu       $a3, $a0, $zero
/* 50AC4 8004FEC4 00003021 */  addu       $a2, $zero, $zero
/* 50AC8 8004FEC8 00062880 */  sll        $a1, $a2, 2
.L8004FECC:
/* 50ACC 8004FECC 00BD2821 */  addu       $a1, $a1, $sp
/* 50AD0 8004FED0 00062040 */  sll        $a0, $a2, 1
/* 50AD4 8004FED4 00862021 */  addu       $a0, $a0, $a2
/* 50AD8 8004FED8 00042100 */  sll        $a0, $a0, 4
/* 50ADC 8004FEDC 3C03800F */  lui        $v1, %hi(D_800F32BC)
/* 50AE0 8004FEE0 00641821 */  addu       $v1, $v1, $a0
/* 50AE4 8004FEE4 846332BC */  lh         $v1, %lo(D_800F32BC)($v1)
/* 50AE8 8004FEE8 00031140 */  sll        $v0, $v1, 5
/* 50AEC 8004FEEC 00431023 */  subu       $v0, $v0, $v1
/* 50AF0 8004FEF0 00021080 */  sll        $v0, $v0, 2
/* 50AF4 8004FEF4 00431021 */  addu       $v0, $v0, $v1
/* 50AF8 8004FEF8 000210C0 */  sll        $v0, $v0, 3
/* 50AFC 8004FEFC 3C03800F */  lui        $v1, %hi(D_800F32B8)
/* 50B00 8004FF00 00641821 */  addu       $v1, $v1, $a0
/* 50B04 8004FF04 846332B8 */  lh         $v1, %lo(D_800F32B8)($v1)
/* 50B08 8004FF08 00431021 */  addu       $v0, $v0, $v1
/* 50B0C 8004FF0C ACA20000 */  sw         $v0, ($a1)
/* 50B10 8004FF10 24C60001 */  addiu      $a2, $a2, 1
/* 50B14 8004FF14 28C20004 */  slti       $v0, $a2, 4
/* 50B18 8004FF18 1440FFEC */  bnez       $v0, .L8004FECC
/* 50B1C 8004FF1C 00062880 */   sll       $a1, $a2, 2
/* 50B20 8004FF20 00003021 */  addu       $a2, $zero, $zero
/* 50B24 8004FF24 00002021 */  addu       $a0, $zero, $zero
/* 50B28 8004FF28 00071080 */  sll        $v0, $a3, 2
/* 50B2C 8004FF2C 005D2821 */  addu       $a1, $v0, $sp
.L8004FF30:
/* 50B30 8004FF30 10C70006 */  beq        $a2, $a3, .L8004FF4C
/* 50B34 8004FF34 00061080 */   sll       $v0, $a2, 2
/* 50B38 8004FF38 005D1021 */  addu       $v0, $v0, $sp
/* 50B3C 8004FF3C 8CA30000 */  lw         $v1, ($a1)
/* 50B40 8004FF40 8C420000 */  lw         $v0, ($v0)
/* 50B44 8004FF44 0062182A */  slt        $v1, $v1, $v0
/* 50B48 8004FF48 00832021 */  addu       $a0, $a0, $v1
.L8004FF4C:
/* 50B4C 8004FF4C 24C60001 */  addiu      $a2, $a2, 1
/* 50B50 8004FF50 28C20004 */  slti       $v0, $a2, 4
/* 50B54 8004FF54 1440FFF6 */  bnez       $v0, .L8004FF30
/* 50B58 8004FF58 00801021 */   addu      $v0, $a0, $zero
/* 50B5C 8004FF5C 27BD0010 */  addiu      $sp, $sp, 0x10
/* 50B60 8004FF60 03E00008 */  jr         $ra
/* 50B64 8004FF64 00000000 */   nop
