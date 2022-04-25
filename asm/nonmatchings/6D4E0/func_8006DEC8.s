	.set noat
	.set noreorder

glabel func_8006DEC8
/* 6EAC8 8006DEC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6EACC 8006DECC AFBF001C */  sw         $ra, 0x1c($sp)
/* 6EAD0 8006DED0 AFB20018 */  sw         $s2, 0x18($sp)
/* 6EAD4 8006DED4 AFB10014 */  sw         $s1, 0x14($sp)
/* 6EAD8 8006DED8 AFB00010 */  sw         $s0, 0x10($sp)
/* 6EADC 8006DEDC 00A09021 */  addu       $s2, $a1, $zero
/* 6EAE0 8006DEE0 00C08821 */  addu       $s1, $a2, $zero
/* 6EAE4 8006DEE4 00042400 */  sll        $a0, $a0, 0x10
/* 6EAE8 8006DEE8 00042403 */  sra        $a0, $a0, 0x10
/* 6EAEC 8006DEEC 00041080 */  sll        $v0, $a0, 2
/* 6EAF0 8006DEF0 00441021 */  addu       $v0, $v0, $a0
/* 6EAF4 8006DEF4 00021140 */  sll        $v0, $v0, 5
/* 6EAF8 8006DEF8 00441023 */  subu       $v0, $v0, $a0
/* 6EAFC 8006DEFC 00021080 */  sll        $v0, $v0, 2
/* 6EB00 8006DF00 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6EB04 8006DF04 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6EB08 8006DF08 00438021 */  addu       $s0, $v0, $v1
/* 6EB0C 8006DF0C A6120020 */  sh         $s2, 0x20($s0)
/* 6EB10 8006DF10 A6110022 */  sh         $s1, 0x22($s0)
/* 6EB14 8006DF14 86040044 */  lh         $a0, 0x44($s0)
/* 6EB18 8006DF18 0C019D7D */  jal        func_800675F4
/* 6EB1C 8006DF1C 00002821 */   addu      $a1, $zero, $zero
/* 6EB20 8006DF20 00403021 */  addu       $a2, $v0, $zero
/* 6EB24 8006DF24 8CC2004C */  lw         $v0, 0x4c($a2)
/* 6EB28 8006DF28 00402021 */  addu       $a0, $v0, $zero
/* 6EB2C 8006DF2C 94420012 */  lhu        $v0, 0x12($v0)
/* 6EB30 8006DF30 10400016 */  beqz       $v0, .L8006DF8C
/* 6EB34 8006DF34 00002821 */   addu      $a1, $zero, $zero
/* 6EB38 8006DF38 00051C00 */  sll        $v1, $a1, 0x10
.L8006DF3C:
/* 6EB3C 8006DF3C 00031C03 */  sra        $v1, $v1, 0x10
/* 6EB40 8006DF40 8C840000 */  lw         $a0, ($a0)
/* 6EB44 8006DF44 00031040 */  sll        $v0, $v1, 1
/* 6EB48 8006DF48 00431021 */  addu       $v0, $v0, $v1
/* 6EB4C 8006DF4C 00021080 */  sll        $v0, $v0, 2
/* 6EB50 8006DF50 00442021 */  addu       $a0, $v0, $a0
/* 6EB54 8006DF54 A4920008 */  sh         $s2, 8($a0)
/* 6EB58 8006DF58 8CC3004C */  lw         $v1, 0x4c($a2)
/* 6EB5C 8006DF5C 8C630000 */  lw         $v1, ($v1)
/* 6EB60 8006DF60 00431021 */  addu       $v0, $v0, $v1
/* 6EB64 8006DF64 A451000A */  sh         $s1, 0xa($v0)
/* 6EB68 8006DF68 24A20001 */  addiu      $v0, $a1, 1
/* 6EB6C 8006DF6C 00402821 */  addu       $a1, $v0, $zero
/* 6EB70 8006DF70 00021400 */  sll        $v0, $v0, 0x10
/* 6EB74 8006DF74 00021403 */  sra        $v0, $v0, 0x10
/* 6EB78 8006DF78 8CC4004C */  lw         $a0, 0x4c($a2)
/* 6EB7C 8006DF7C 94830012 */  lhu        $v1, 0x12($a0)
/* 6EB80 8006DF80 0043102A */  slt        $v0, $v0, $v1
/* 6EB84 8006DF84 1440FFED */  bnez       $v0, .L8006DF3C
/* 6EB88 8006DF88 00051C00 */   sll       $v1, $a1, 0x10
.L8006DF8C:
/* 6EB8C 8006DF8C 86040044 */  lh         $a0, 0x44($s0)
/* 6EB90 8006DF90 0C019D7D */  jal        func_800675F4
/* 6EB94 8006DF94 2405000A */   addiu     $a1, $zero, 0xa
/* 6EB98 8006DF98 00403021 */  addu       $a2, $v0, $zero
/* 6EB9C 8006DF9C 8CC2004C */  lw         $v0, 0x4c($a2)
/* 6EBA0 8006DFA0 00402021 */  addu       $a0, $v0, $zero
/* 6EBA4 8006DFA4 94420012 */  lhu        $v0, 0x12($v0)
/* 6EBA8 8006DFA8 10400016 */  beqz       $v0, .L8006E004
/* 6EBAC 8006DFAC 00002821 */   addu      $a1, $zero, $zero
/* 6EBB0 8006DFB0 00051C00 */  sll        $v1, $a1, 0x10
.L8006DFB4:
/* 6EBB4 8006DFB4 00031C03 */  sra        $v1, $v1, 0x10
/* 6EBB8 8006DFB8 8C840000 */  lw         $a0, ($a0)
/* 6EBBC 8006DFBC 00031040 */  sll        $v0, $v1, 1
/* 6EBC0 8006DFC0 00431021 */  addu       $v0, $v0, $v1
/* 6EBC4 8006DFC4 00021080 */  sll        $v0, $v0, 2
/* 6EBC8 8006DFC8 00442021 */  addu       $a0, $v0, $a0
/* 6EBCC 8006DFCC A4920008 */  sh         $s2, 8($a0)
/* 6EBD0 8006DFD0 8CC3004C */  lw         $v1, 0x4c($a2)
/* 6EBD4 8006DFD4 8C630000 */  lw         $v1, ($v1)
/* 6EBD8 8006DFD8 00431021 */  addu       $v0, $v0, $v1
/* 6EBDC 8006DFDC A451000A */  sh         $s1, 0xa($v0)
/* 6EBE0 8006DFE0 24A20001 */  addiu      $v0, $a1, 1
/* 6EBE4 8006DFE4 00402821 */  addu       $a1, $v0, $zero
/* 6EBE8 8006DFE8 00021400 */  sll        $v0, $v0, 0x10
/* 6EBEC 8006DFEC 00021403 */  sra        $v0, $v0, 0x10
/* 6EBF0 8006DFF0 8CC4004C */  lw         $a0, 0x4c($a2)
/* 6EBF4 8006DFF4 94830012 */  lhu        $v1, 0x12($a0)
/* 6EBF8 8006DFF8 0043102A */  slt        $v0, $v0, $v1
/* 6EBFC 8006DFFC 1440FFED */  bnez       $v0, .L8006DFB4
/* 6EC00 8006E000 00051C00 */   sll       $v1, $a1, 0x10
.L8006E004:
/* 6EC04 8006E004 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6EC08 8006E008 8FB20018 */  lw         $s2, 0x18($sp)
/* 6EC0C 8006E00C 8FB10014 */  lw         $s1, 0x14($sp)
/* 6EC10 8006E010 8FB00010 */  lw         $s0, 0x10($sp)
/* 6EC14 8006E014 03E00008 */  jr         $ra
/* 6EC18 8006E018 27BD0020 */   addiu     $sp, $sp, 0x20
