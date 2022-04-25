	.set noat
	.set noreorder

glabel func_8000C414
/* D014 8000C414 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D018 8000C418 AFBF0010 */  sw         $ra, 0x10($sp)
/* D01C 8000C41C 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* D020 8000C420 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* D024 8000C424 30428000 */  andi       $v0, $v0, 0x8000
/* D028 8000C428 1040001A */  beqz       $v0, .L8000C494
/* D02C 8000C42C 00042600 */   sll       $a0, $a0, 0x18
/* D030 8000C430 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* D034 8000C434 AC20DAF4 */  sw         $zero, %lo(D_800CDAF4)($at)
/* D038 8000C438 0C002B7F */  jal        func_8000ADFC
/* D03C 8000C43C 00042603 */   sra       $a0, $a0, 0x18
/* D040 8000C440 3C01800D */  lui        $at, %hi(D_800CDB02)
/* D044 8000C444 A422DB02 */  sh         $v0, %lo(D_800CDB02)($at)
/* D048 8000C448 00021400 */  sll        $v0, $v0, 0x10
/* D04C 8000C44C 00021403 */  sra        $v0, $v0, 0x10
/* D050 8000C450 3C03800D */  lui        $v1, %hi(D_800CDB00)
/* D054 8000C454 8463DB00 */  lh         $v1, %lo(D_800CDB00)($v1)
/* D058 8000C458 00430018 */  mult       $v0, $v1
/* D05C 8000C45C 00001012 */  mflo       $v0
/* D060 8000C460 3C038001 */  lui        $v1, 0x8001
/* D064 8000C464 34630003 */  ori        $v1, $v1, 3
/* D068 8000C468 00430018 */  mult       $v0, $v1
/* D06C 8000C46C 00003010 */  mfhi       $a2
/* D070 8000C470 00C22821 */  addu       $a1, $a2, $v0
/* D074 8000C474 00052B83 */  sra        $a1, $a1, 0xe
/* D078 8000C478 000217C3 */  sra        $v0, $v0, 0x1f
/* D07C 8000C47C 00A22823 */  subu       $a1, $a1, $v0
/* D080 8000C480 00052C00 */  sll        $a1, $a1, 0x10
/* D084 8000C484 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* D088 8000C488 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* D08C 8000C48C 0C0229DC */  jal        func_8008A770
/* D090 8000C490 00052C03 */   sra       $a1, $a1, 0x10
.L8000C494:
/* D094 8000C494 8FBF0010 */  lw         $ra, 0x10($sp)
/* D098 8000C498 03E00008 */  jr         $ra
/* D09C 8000C49C 27BD0018 */   addiu     $sp, $sp, 0x18
