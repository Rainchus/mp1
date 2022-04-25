	.set noat
	.set noreorder

glabel func_800F84A8_CF918
/* CF918 800F84A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* CF91C 800F84AC AFBF0028 */  sw         $ra, 0x28($sp)
/* CF920 800F84B0 AFB10024 */  sw         $s1, 0x24($sp)
/* CF924 800F84B4 00808821 */  addu       $s1, $a0, $zero
/* CF928 800F84B8 00042400 */  sll        $a0, $a0, 0x10
/* CF92C 800F84BC 00042403 */  sra        $a0, $a0, 0x10
/* CF930 800F84C0 28840009 */  slti       $a0, $a0, 9
/* CF934 800F84C4 1080005D */  beqz       $a0, .L800F863C
/* CF938 800F84C8 AFB00020 */   sw        $s0, 0x20($sp)
/* CF93C 800F84CC 00111400 */  sll        $v0, $s1, 0x10
/* CF940 800F84D0 0440005A */  bltz       $v0, .L800F863C
/* CF944 800F84D4 00001821 */   addu      $v1, $zero, $zero
/* CF948 800F84D8 3C048010 */  lui        $a0, %hi(D_800FE2E8)
/* CF94C 800F84DC 2484E2E8 */  addiu      $a0, $a0, %lo(D_800FE2E8)
/* CF950 800F84E0 24070002 */  addiu      $a3, $zero, 2
/* CF954 800F84E4 24060003 */  addiu      $a2, $zero, 3
/* CF958 800F84E8 24050004 */  addiu      $a1, $zero, 4
/* CF95C 800F84EC 3062FFFF */  andi       $v0, $v1, 0xffff
.L800F84F0:
/* CF960 800F84F0 00021080 */  sll        $v0, $v0, 2
/* CF964 800F84F4 00441021 */  addu       $v0, $v0, $a0
/* CF968 800F84F8 8C420000 */  lw         $v0, ($v0)
/* CF96C 800F84FC 9042004E */  lbu        $v0, 0x4e($v0)
/* CF970 800F8500 1047004E */  beq        $v0, $a3, .L800F863C
/* CF974 800F8504 3062FFFF */   andi      $v0, $v1, 0xffff
/* CF978 800F8508 00021080 */  sll        $v0, $v0, 2
/* CF97C 800F850C 00441021 */  addu       $v0, $v0, $a0
/* CF980 800F8510 8C420000 */  lw         $v0, ($v0)
/* CF984 800F8514 9042004E */  lbu        $v0, 0x4e($v0)
/* CF988 800F8518 10460048 */  beq        $v0, $a2, .L800F863C
/* CF98C 800F851C 3062FFFF */   andi      $v0, $v1, 0xffff
/* CF990 800F8520 00021080 */  sll        $v0, $v0, 2
/* CF994 800F8524 00441021 */  addu       $v0, $v0, $a0
/* CF998 800F8528 8C420000 */  lw         $v0, ($v0)
/* CF99C 800F852C 9042004E */  lbu        $v0, 0x4e($v0)
/* CF9A0 800F8530 10450042 */  beq        $v0, $a1, .L800F863C
/* CF9A4 800F8534 24630001 */   addiu     $v1, $v1, 1
/* CF9A8 800F8538 3062FFFF */  andi       $v0, $v1, 0xffff
/* CF9AC 800F853C 2C420009 */  sltiu      $v0, $v0, 9
/* CF9B0 800F8540 1440FFEB */  bnez       $v0, .L800F84F0
/* CF9B4 800F8544 3062FFFF */   andi      $v0, $v1, 0xffff
/* CF9B8 800F8548 00111400 */  sll        $v0, $s1, 0x10
/* CF9BC 800F854C 3C038010 */  lui        $v1, %hi(D_800FE2E8)
/* CF9C0 800F8550 2463E2E8 */  addiu      $v1, $v1, %lo(D_800FE2E8)
/* CF9C4 800F8554 00021383 */  sra        $v0, $v0, 0xe
/* CF9C8 800F8558 00432821 */  addu       $a1, $v0, $v1
/* CF9CC 800F855C 8CA30000 */  lw         $v1, ($a1)
/* CF9D0 800F8560 9062004E */  lbu        $v0, 0x4e($v1)
/* CF9D4 800F8564 14400026 */  bnez       $v0, .L800F8600
/* CF9D8 800F8568 00111400 */   sll       $v0, $s1, 0x10
/* CF9DC 800F856C 24020002 */  addiu      $v0, $zero, 2
/* CF9E0 800F8570 A062004E */  sb         $v0, 0x4e($v1)
/* CF9E4 800F8574 3C038010 */  lui        $v1, %hi(D_800FDE40)
/* CF9E8 800F8578 8463DE40 */  lh         $v1, %lo(D_800FDE40)($v1)
/* CF9EC 800F857C 00032040 */  sll        $a0, $v1, 1
/* CF9F0 800F8580 3C018010 */  lui        $at, %hi(D_800FDE46)
/* CF9F4 800F8584 00240821 */  addu       $at, $at, $a0
/* CF9F8 800F8588 A431DE46 */  sh         $s1, %lo(D_800FDE46)($at)
/* CF9FC 800F858C 3C108010 */  lui        $s0, %hi(D_800FDE42)
/* CFA00 800F8590 2610DE42 */  addiu      $s0, $s0, %lo(D_800FDE42)
/* CFA04 800F8594 8CA20000 */  lw         $v0, ($a1)
/* CFA08 800F8598 9042004D */  lbu        $v0, 0x4d($v0)
/* CFA0C 800F859C 3C018010 */  lui        $at, %hi(D_800FDE42)
/* CFA10 800F85A0 00240821 */  addu       $at, $at, $a0
/* CFA14 800F85A4 A422DE42 */  sh         $v0, %lo(D_800FDE42)($at)
/* CFA18 800F85A8 24630001 */  addiu      $v1, $v1, 1
/* CFA1C 800F85AC 3C018010 */  lui        $at, %hi(D_800FDE40)
/* CFA20 800F85B0 A423DE40 */  sh         $v1, %lo(D_800FDE40)($at)
/* CFA24 800F85B4 0C0180AB */  jal        func_800602AC
/* CFA28 800F85B8 240401C2 */   addiu     $a0, $zero, 0x1c2
/* CFA2C 800F85BC 3C038010 */  lui        $v1, %hi(D_800FDE40)
/* CFA30 800F85C0 8463DE40 */  lh         $v1, %lo(D_800FDE40)($v1)
/* CFA34 800F85C4 24020002 */  addiu      $v0, $zero, 2
/* CFA38 800F85C8 1462000D */  bne        $v1, $v0, .L800F8600
/* CFA3C 800F85CC 00111400 */   sll       $v0, $s1, 0x10
/* CFA40 800F85D0 86040000 */  lh         $a0, ($s0)
/* CFA44 800F85D4 86020002 */  lh         $v0, 2($s0)
/* CFA48 800F85D8 14820009 */  bne        $a0, $v0, .L800F8600
/* CFA4C 800F85DC 00111400 */   sll       $v0, $s1, 0x10
/* CFA50 800F85E0 0C03E2F0 */  jal        func_800F8BC0_D0030
/* CFA54 800F85E4 00000000 */   nop
/* CFA58 800F85E8 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CFA5C 800F85EC 9442E30E */  lhu        $v0, %lo(D_800FE30E)($v0)
/* CFA60 800F85F0 2442FFFE */  addiu      $v0, $v0, -2
/* CFA64 800F85F4 3C018010 */  lui        $at, %hi(D_800FE30E)
/* CFA68 800F85F8 A422E30E */  sh         $v0, %lo(D_800FE30E)($at)
/* CFA6C 800F85FC 00111400 */  sll        $v0, $s1, 0x10
.L800F8600:
/* CFA70 800F8600 00021383 */  sra        $v0, $v0, 0xe
/* CFA74 800F8604 3C048010 */  lui        $a0, %hi(D_800FE2E8)
/* CFA78 800F8608 00822021 */  addu       $a0, $a0, $v0
/* CFA7C 800F860C 8C84E2E8 */  lw         $a0, %lo(D_800FE2E8)($a0)
/* CFA80 800F8610 8C82004C */  lw         $v0, 0x4c($a0)
/* CFA84 800F8614 3C0300FF */  lui        $v1, 0xff
/* CFA88 800F8618 3463FF00 */  ori        $v1, $v1, 0xff00
/* CFA8C 800F861C 00431024 */  and        $v0, $v0, $v1
/* CFA90 800F8620 3C030005 */  lui        $v1, 5
/* CFA94 800F8624 34630100 */  ori        $v1, $v1, 0x100
/* CFA98 800F8628 10430005 */  beq        $v0, $v1, .L800F8640
/* CFA9C 800F862C 2402FFFF */   addiu     $v0, $zero, -1
/* CFAA0 800F8630 9082004D */  lbu        $v0, 0x4d($a0)
/* CFAA4 800F8634 0803E190 */  j          .L800F8640
/* CFAA8 800F8638 00000000 */   nop
.L800F863C:
/* CFAAC 800F863C 2402FFFF */  addiu      $v0, $zero, -1
.L800F8640:
/* CFAB0 800F8640 8FBF0028 */  lw         $ra, 0x28($sp)
/* CFAB4 800F8644 8FB10024 */  lw         $s1, 0x24($sp)
/* CFAB8 800F8648 8FB00020 */  lw         $s0, 0x20($sp)
/* CFABC 800F864C 03E00008 */  jr         $ra
/* CFAC0 800F8650 27BD0030 */   addiu     $sp, $sp, 0x30
