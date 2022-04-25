	.set noat
	.set noreorder

glabel func_8005699C
/* 5759C 8005699C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 575A0 800569A0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 575A4 800569A4 3C02800E */  lui        $v0, %hi(D_800D86B2)
/* 575A8 800569A8 844286B2 */  lh         $v0, %lo(D_800D86B2)($v0)
/* 575AC 800569AC 000218C0 */  sll        $v1, $v0, 3
/* 575B0 800569B0 3C01800E */  lui        $at, %hi(D_800D86BC)
/* 575B4 800569B4 00230821 */  addu       $at, $at, $v1
/* 575B8 800569B8 A42486BC */  sh         $a0, %lo(D_800D86BC)($at)
/* 575BC 800569BC 24420001 */  addiu      $v0, $v0, 1
/* 575C0 800569C0 3C01800E */  lui        $at, %hi(D_800D86B2)
/* 575C4 800569C4 A42286B2 */  sh         $v0, %lo(D_800D86B2)($at)
/* 575C8 800569C8 00021400 */  sll        $v0, $v0, 0x10
/* 575CC 800569CC 00021403 */  sra        $v0, $v0, 0x10
/* 575D0 800569D0 28420005 */  slti       $v0, $v0, 5
/* 575D4 800569D4 14400004 */  bnez       $v0, .L800569E8
/* 575D8 800569D8 2404FFFE */   addiu     $a0, $zero, -2
/* 575DC 800569DC 24020004 */  addiu      $v0, $zero, 4
/* 575E0 800569E0 3C01800E */  lui        $at, %hi(D_800D86B2)
/* 575E4 800569E4 A42286B2 */  sh         $v0, %lo(D_800D86B2)($at)
.L800569E8:
/* 575E8 800569E8 24050003 */  addiu      $a1, $zero, 3
/* 575EC 800569EC 0C0159CC */  jal        func_80056730
/* 575F0 800569F0 24060092 */   addiu     $a2, $zero, 0x92
/* 575F4 800569F4 0C0177EE */  jal        func_8005DFB8
/* 575F8 800569F8 24040001 */   addiu     $a0, $zero, 1
/* 575FC 800569FC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 57600 80056A00 03E00008 */  jr         $ra
/* 57604 80056A04 27BD0020 */   addiu     $sp, $sp, 0x20
