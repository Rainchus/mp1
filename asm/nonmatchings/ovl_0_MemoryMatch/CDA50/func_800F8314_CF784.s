	.set noat
	.set noreorder

glabel func_800F8314_CF784
/* CF784 800F8314 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* CF788 800F8318 AFBF0030 */  sw         $ra, 0x30($sp)
/* CF78C 800F831C AFB3002C */  sw         $s3, 0x2c($sp)
/* CF790 800F8320 AFB20028 */  sw         $s2, 0x28($sp)
/* CF794 800F8324 AFB10024 */  sw         $s1, 0x24($sp)
/* CF798 800F8328 AFB00020 */  sw         $s0, 0x20($sp)
/* CF79C 800F832C 0C03DEBF */  jal        func_800F7AFC_CEF6C
/* CF7A0 800F8330 24040200 */   addiu     $a0, $zero, 0x200
/* CF7A4 800F8334 00409821 */  addu       $s3, $v0, $zero
/* CF7A8 800F8338 3262FFFF */  andi       $v0, $s3, 0xffff
/* CF7AC 800F833C 10400053 */  beqz       $v0, .L800F848C
/* CF7B0 800F8340 00009021 */   addu      $s2, $zero, $zero
.L800F8344:
/* CF7B4 800F8344 0C03DEBF */  jal        func_800F7AFC_CEF6C
/* CF7B8 800F8348 24040009 */   addiu     $a0, $zero, 9
/* CF7BC 800F834C 00408821 */  addu       $s1, $v0, $zero
/* CF7C0 800F8350 00111400 */  sll        $v0, $s1, 0x10
/* CF7C4 800F8354 00021403 */  sra        $v0, $v0, 0x10
/* CF7C8 800F8358 28420009 */  slti       $v0, $v0, 9
/* CF7CC 800F835C 00021023 */  negu       $v0, $v0
/* CF7D0 800F8360 00518024 */  and        $s0, $v0, $s1
/* CF7D4 800F8364 02008821 */  addu       $s1, $s0, $zero
/* CF7D8 800F8368 0C03DEBF */  jal        func_800F7AFC_CEF6C
/* CF7DC 800F836C 00002021 */   addu      $a0, $zero, $zero
/* CF7E0 800F8370 30420001 */  andi       $v0, $v0, 1
/* CF7E4 800F8374 14400002 */  bnez       $v0, .L800F8380
/* CF7E8 800F8378 26030001 */   addiu     $v1, $s0, 1
/* CF7EC 800F837C 2623FFFF */  addiu      $v1, $s1, -1
.L800F8380:
/* CF7F0 800F8380 00031400 */  sll        $v0, $v1, 0x10
/* CF7F4 800F8384 00021403 */  sra        $v0, $v0, 0x10
/* CF7F8 800F8388 28420009 */  slti       $v0, $v0, 9
/* CF7FC 800F838C 14400003 */  bnez       $v0, .L800F839C
/* CF800 800F8390 00031400 */   sll       $v0, $v1, 0x10
/* CF804 800F8394 0803E0E9 */  j          .L800F83A4
/* CF808 800F8398 00001821 */   addu      $v1, $zero, $zero
.L800F839C:
/* CF80C 800F839C 04420001 */  bltzl      $v0, .L800F83A4
/* CF810 800F83A0 24030008 */   addiu     $v1, $zero, 8
.L800F83A4:
/* CF814 800F83A4 00031400 */  sll        $v0, $v1, 0x10
/* CF818 800F83A8 00021403 */  sra        $v0, $v0, 0x10
/* CF81C 800F83AC 00022040 */  sll        $a0, $v0, 1
/* CF820 800F83B0 00822021 */  addu       $a0, $a0, $v0
/* CF824 800F83B4 00042080 */  sll        $a0, $a0, 2
/* CF828 800F83B8 3C018010 */  lui        $at, %hi(D_800FD7F0)
/* CF82C 800F83BC 00240821 */  addu       $at, $at, $a0
/* CF830 800F83C0 C420D7F0 */  lwc1       $f0, %lo(D_800FD7F0)($at)
/* CF834 800F83C4 E7A00010 */  swc1       $f0, 0x10($sp)
/* CF838 800F83C8 3C018010 */  lui        $at, %hi(D_800FD7F4)
/* CF83C 800F83CC 00240821 */  addu       $at, $at, $a0
/* CF840 800F83D0 C420D7F4 */  lwc1       $f0, %lo(D_800FD7F4)($at)
/* CF844 800F83D4 E7A00014 */  swc1       $f0, 0x14($sp)
/* CF848 800F83D8 3C018010 */  lui        $at, %hi(D_800FD7F8)
/* CF84C 800F83DC 00240821 */  addu       $at, $at, $a0
/* CF850 800F83E0 C420D7F8 */  lwc1       $f0, %lo(D_800FD7F8)($at)
/* CF854 800F83E4 E7A00018 */  swc1       $f0, 0x18($sp)
/* CF858 800F83E8 00111400 */  sll        $v0, $s1, 0x10
/* CF85C 800F83EC 00021403 */  sra        $v0, $v0, 0x10
/* CF860 800F83F0 00021840 */  sll        $v1, $v0, 1
/* CF864 800F83F4 00621821 */  addu       $v1, $v1, $v0
/* CF868 800F83F8 00031880 */  sll        $v1, $v1, 2
/* CF86C 800F83FC 3C018010 */  lui        $at, %hi(D_800FD7F0)
/* CF870 800F8400 00230821 */  addu       $at, $at, $v1
/* CF874 800F8404 C420D7F0 */  lwc1       $f0, %lo(D_800FD7F0)($at)
/* CF878 800F8408 3C018010 */  lui        $at, %hi(D_800FD7F0)
/* CF87C 800F840C 00240821 */  addu       $at, $at, $a0
/* CF880 800F8410 E420D7F0 */  swc1       $f0, %lo(D_800FD7F0)($at)
/* CF884 800F8414 3C018010 */  lui        $at, %hi(D_800FD7F4)
/* CF888 800F8418 00230821 */  addu       $at, $at, $v1
/* CF88C 800F841C C420D7F4 */  lwc1       $f0, %lo(D_800FD7F4)($at)
/* CF890 800F8420 3C018010 */  lui        $at, %hi(D_800FD7F4)
/* CF894 800F8424 00240821 */  addu       $at, $at, $a0
/* CF898 800F8428 E420D7F4 */  swc1       $f0, %lo(D_800FD7F4)($at)
/* CF89C 800F842C 3C018010 */  lui        $at, %hi(D_800FD7F8)
/* CF8A0 800F8430 00230821 */  addu       $at, $at, $v1
/* CF8A4 800F8434 C420D7F8 */  lwc1       $f0, %lo(D_800FD7F8)($at)
/* CF8A8 800F8438 3C018010 */  lui        $at, %hi(D_800FD7F8)
/* CF8AC 800F843C 00240821 */  addu       $at, $at, $a0
/* CF8B0 800F8440 E420D7F8 */  swc1       $f0, %lo(D_800FD7F8)($at)
/* CF8B4 800F8444 C7A00010 */  lwc1       $f0, 0x10($sp)
/* CF8B8 800F8448 3C018010 */  lui        $at, %hi(D_800FD7F0)
/* CF8BC 800F844C 00230821 */  addu       $at, $at, $v1
/* CF8C0 800F8450 E420D7F0 */  swc1       $f0, %lo(D_800FD7F0)($at)
/* CF8C4 800F8454 C7A00014 */  lwc1       $f0, 0x14($sp)
/* CF8C8 800F8458 3C018010 */  lui        $at, %hi(D_800FD7F4)
/* CF8CC 800F845C 00230821 */  addu       $at, $at, $v1
/* CF8D0 800F8460 E420D7F4 */  swc1       $f0, %lo(D_800FD7F4)($at)
/* CF8D4 800F8464 C7A00018 */  lwc1       $f0, 0x18($sp)
/* CF8D8 800F8468 3C018010 */  lui        $at, %hi(D_800FD7F8)
/* CF8DC 800F846C 00230821 */  addu       $at, $at, $v1
/* CF8E0 800F8470 E420D7F8 */  swc1       $f0, %lo(D_800FD7F8)($at)
/* CF8E4 800F8474 26520001 */  addiu      $s2, $s2, 1
/* CF8E8 800F8478 3242FFFF */  andi       $v0, $s2, 0xffff
/* CF8EC 800F847C 3263FFFF */  andi       $v1, $s3, 0xffff
/* CF8F0 800F8480 0043102B */  sltu       $v0, $v0, $v1
/* CF8F4 800F8484 1440FFAF */  bnez       $v0, .L800F8344
/* CF8F8 800F8488 00000000 */   nop
.L800F848C:
/* CF8FC 800F848C 8FBF0030 */  lw         $ra, 0x30($sp)
/* CF900 800F8490 8FB3002C */  lw         $s3, 0x2c($sp)
/* CF904 800F8494 8FB20028 */  lw         $s2, 0x28($sp)
/* CF908 800F8498 8FB10024 */  lw         $s1, 0x24($sp)
/* CF90C 800F849C 8FB00020 */  lw         $s0, 0x20($sp)
/* CF910 800F84A0 03E00008 */  jr         $ra
/* CF914 800F84A4 27BD0038 */   addiu     $sp, $sp, 0x38
