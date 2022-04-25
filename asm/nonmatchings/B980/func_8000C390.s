	.set noat
	.set noreorder

glabel func_8000C390
/* CF90 8000C390 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF94 8000C394 AFBF0010 */  sw         $ra, 0x10($sp)
/* CF98 8000C398 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* CF9C 8000C39C 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* CFA0 8000C3A0 30428000 */  andi       $v0, $v0, 0x8000
/* CFA4 8000C3A4 10400018 */  beqz       $v0, .L8000C408
/* CFA8 8000C3A8 00042600 */   sll       $a0, $a0, 0x18
/* CFAC 8000C3AC 0C002B7F */  jal        func_8000ADFC
/* CFB0 8000C3B0 00042603 */   sra       $a0, $a0, 0x18
/* CFB4 8000C3B4 3C01800D */  lui        $at, %hi(D_800CDB00)
/* CFB8 8000C3B8 A422DB00 */  sh         $v0, %lo(D_800CDB00)($at)
/* CFBC 8000C3BC 3C03800D */  lui        $v1, %hi(D_800CDB02)
/* CFC0 8000C3C0 8463DB02 */  lh         $v1, %lo(D_800CDB02)($v1)
/* CFC4 8000C3C4 00021400 */  sll        $v0, $v0, 0x10
/* CFC8 8000C3C8 00021403 */  sra        $v0, $v0, 0x10
/* CFCC 8000C3CC 00620018 */  mult       $v1, $v0
/* CFD0 8000C3D0 00001812 */  mflo       $v1
/* CFD4 8000C3D4 3C028001 */  lui        $v0, 0x8001
/* CFD8 8000C3D8 34420003 */  ori        $v0, $v0, 3
/* CFDC 8000C3DC 00620018 */  mult       $v1, $v0
/* CFE0 8000C3E0 00003010 */  mfhi       $a2
/* CFE4 8000C3E4 00C32821 */  addu       $a1, $a2, $v1
/* CFE8 8000C3E8 00052B83 */  sra        $a1, $a1, 0xe
/* CFEC 8000C3EC 00031FC3 */  sra        $v1, $v1, 0x1f
/* CFF0 8000C3F0 00A32823 */  subu       $a1, $a1, $v1
/* CFF4 8000C3F4 00052C00 */  sll        $a1, $a1, 0x10
/* CFF8 8000C3F8 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* CFFC 8000C3FC 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* D000 8000C400 0C0229DC */  jal        func_8008A770
/* D004 8000C404 00052C03 */   sra       $a1, $a1, 0x10
.L8000C408:
/* D008 8000C408 8FBF0010 */  lw         $ra, 0x10($sp)
/* D00C 8000C40C 03E00008 */  jr         $ra
/* D010 8000C410 27BD0018 */   addiu     $sp, $sp, 0x18
