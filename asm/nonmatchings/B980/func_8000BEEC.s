	.set noat
	.set noreorder

glabel func_8000BEEC
/* CAEC 8000BEEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CAF0 8000BEF0 AFBF001C */  sw         $ra, 0x1c($sp)
/* CAF4 8000BEF4 AFB20018 */  sw         $s2, 0x18($sp)
/* CAF8 8000BEF8 AFB10014 */  sw         $s1, 0x14($sp)
/* CAFC 8000BEFC AFB00010 */  sw         $s0, 0x10($sp)
/* CB00 8000BF00 00A08821 */  addu       $s1, $a1, $zero
/* CB04 8000BF04 00C08021 */  addu       $s0, $a2, $zero
/* CB08 8000BF08 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* CB0C 8000BF0C 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* CB10 8000BF10 30428000 */  andi       $v0, $v0, 0x8000
/* CB14 8000BF14 10400020 */  beqz       $v0, .L8000BF98
/* CB18 8000BF18 00809021 */   addu      $s2, $a0, $zero
/* CB1C 8000BF1C 3C02800D */  lui        $v0, %hi(D_800CDAE0)
/* CB20 8000BF20 8C42DAE0 */  lw         $v0, %lo(D_800CDAE0)($v0)
/* CB24 8000BF24 00121C00 */  sll        $v1, $s2, 0x10
/* CB28 8000BF28 00031C03 */  sra        $v1, $v1, 0x10
/* CB2C 8000BF2C 84420002 */  lh         $v0, 2($v0)
/* CB30 8000BF30 0062102A */  slt        $v0, $v1, $v0
/* CB34 8000BF34 38420001 */  xori       $v0, $v0, 1
/* CB38 8000BF38 00031FC2 */  srl        $v1, $v1, 0x1f
/* CB3C 8000BF3C 00431025 */  or         $v0, $v0, $v1
/* CB40 8000BF40 1440007A */  bnez       $v0, .L8000C12C
/* CB44 8000BF44 2402FFFF */   addiu     $v0, $zero, -1
/* CB48 8000BF48 34028010 */  ori        $v0, $zero, 0x8010
/* CB4C 8000BF4C 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* CB50 8000BF50 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
/* CB54 8000BF54 3C04800D */  lui        $a0, %hi(D_800CDAE0)
/* CB58 8000BF58 8C84DAE0 */  lw         $a0, %lo(D_800CDAE0)($a0)
/* CB5C 8000BF5C 84830000 */  lh         $v1, ($a0)
/* CB60 8000BF60 24025331 */  addiu      $v0, $zero, 0x5331
/* CB64 8000BF64 10620015 */  beq        $v1, $v0, .L8000BFBC
/* CB68 8000BF68 24025332 */   addiu     $v0, $zero, 0x5332
/* CB6C 8000BF6C 5462001B */  bnel       $v1, $v0, .L8000BFDC
/* CB70 8000BF70 2404007F */   addiu     $a0, $zero, 0x7f
/* CB74 8000BF74 00121400 */  sll        $v0, $s2, 0x10
/* CB78 8000BF78 00021343 */  sra        $v0, $v0, 0xd
/* CB7C 8000BF7C 00821021 */  addu       $v0, $a0, $v0
/* CB80 8000BF80 8C420008 */  lw         $v0, 8($v0)
/* CB84 8000BF84 04430006 */  bgezl      $v0, .L8000BFA0
/* CB88 8000BF88 00121400 */   sll       $v0, $s2, 0x10
/* CB8C 8000BF8C 34028000 */  ori        $v0, $zero, 0x8000
/* CB90 8000BF90 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* CB94 8000BF94 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
.L8000BF98:
/* CB98 8000BF98 0800304B */  j          .L8000C12C
/* CB9C 8000BF9C 2402FFFF */   addiu     $v0, $zero, -1
.L8000BFA0:
/* CBA0 8000BFA0 3C03800D */  lui        $v1, %hi(D_800CDAE4)
/* CBA4 8000BFA4 8C63DAE4 */  lw         $v1, %lo(D_800CDAE4)($v1)
/* CBA8 8000BFA8 00021303 */  sra        $v0, $v0, 0xc
/* CBAC 8000BFAC 00431021 */  addu       $v0, $v0, $v1
/* CBB0 8000BFB0 90440001 */  lbu        $a0, 1($v0)
/* CBB4 8000BFB4 08002FF8 */  j          .L8000BFE0
/* CBB8 8000BFB8 00042600 */   sll       $a0, $a0, 0x18
.L8000BFBC:
/* CBBC 8000BFBC 3C02800D */  lui        $v0, %hi(D_800CDAE0)
/* CBC0 8000BFC0 8C42DAE0 */  lw         $v0, %lo(D_800CDAE0)($v0)
/* CBC4 8000BFC4 00121C00 */  sll        $v1, $s2, 0x10
/* CBC8 8000BFC8 00031B43 */  sra        $v1, $v1, 0xd
/* CBCC 8000BFCC 00431021 */  addu       $v0, $v0, $v1
/* CBD0 8000BFD0 8C420008 */  lw         $v0, 8($v0)
/* CBD4 8000BFD4 0440FFF0 */  bltz       $v0, .L8000BF98
/* CBD8 8000BFD8 2404007F */   addiu     $a0, $zero, 0x7f
.L8000BFDC:
/* CBDC 8000BFDC 00042600 */  sll        $a0, $a0, 0x18
.L8000BFE0:
/* CBE0 8000BFE0 0C002B7F */  jal        func_8000ADFC
/* CBE4 8000BFE4 00042603 */   sra       $a0, $a0, 0x18
/* CBE8 8000BFE8 3C01800D */  lui        $at, %hi(D_800CDB00)
/* CBEC 8000BFEC A422DB00 */  sh         $v0, %lo(D_800CDB00)($at)
/* CBF0 8000BFF0 24020002 */  addiu      $v0, $zero, 2
/* CBF4 8000BFF4 12220016 */  beq        $s1, $v0, .L8000C050
/* CBF8 8000BFF8 2A220003 */   slti      $v0, $s1, 3
/* CBFC 8000BFFC 10400005 */  beqz       $v0, .L8000C014
/* CC00 8000C000 24020001 */   addiu     $v0, $zero, 1
/* CC04 8000C004 12220008 */  beq        $s1, $v0, .L8000C028
/* CC08 8000C008 00000000 */   nop
/* CC0C 8000C00C 08003032 */  j          .L8000C0C8
/* CC10 8000C010 00000000 */   nop
.L8000C014:
/* CC14 8000C014 24020003 */  addiu      $v0, $zero, 3
/* CC18 8000C018 12220027 */  beq        $s1, $v0, .L8000C0B8
/* CC1C 8000C01C 00102600 */   sll       $a0, $s0, 0x18
/* CC20 8000C020 08003032 */  j          .L8000C0C8
/* CC24 8000C024 00000000 */   nop
.L8000C028:
/* CC28 8000C028 0C003051 */  jal        func_8000C144
/* CC2C 8000C02C 00000000 */   nop
/* CC30 8000C030 24030001 */  addiu      $v1, $zero, 1
/* CC34 8000C034 54430027 */  bnel       $v0, $v1, .L8000C0D4
/* CC38 8000C038 24100001 */   addiu     $s0, $zero, 1
/* CC3C 8000C03C 00102400 */  sll        $a0, $s0, 0x10
/* CC40 8000C040 0C003094 */  jal        func_8000C250
/* CC44 8000C044 00042403 */   sra       $a0, $a0, 0x10
/* CC48 8000C048 08003035 */  j          .L8000C0D4
/* CC4C 8000C04C 24100001 */   addiu     $s0, $zero, 1
.L8000C050:
/* CC50 8000C050 2A020002 */  slti       $v0, $s0, 2
/* CC54 8000C054 5440001F */  bnel       $v0, $zero, .L8000C0D4
/* CC58 8000C058 24100001 */   addiu     $s0, $zero, 1
/* CC5C 8000C05C 3C01800D */  lui        $at, %hi(D_800CDAF8)
/* CC60 8000C060 AC20DAF8 */  sw         $zero, %lo(D_800CDAF8)($at)
/* CC64 8000C064 3C01800D */  lui        $at, %hi(D_800CDAFE)
/* CC68 8000C068 A420DAFE */  sh         $zero, %lo(D_800CDAFE)($at)
/* CC6C 8000C06C 3C02800D */  lui        $v0, %hi(D_800CDB02)
/* CC70 8000C070 8442DB02 */  lh         $v0, %lo(D_800CDB02)($v0)
/* CC74 8000C074 44820000 */  mtc1       $v0, $f0
/* CC78 8000C078 00000000 */  nop
/* CC7C 8000C07C 46800020 */  cvt.s.w    $f0, $f0
/* CC80 8000C080 44901000 */  mtc1       $s0, $f2
/* CC84 8000C084 00000000 */  nop
/* CC88 8000C088 468010A0 */  cvt.s.w    $f2, $f2
/* CC8C 8000C08C 46020003 */  div.s      $f0, $f0, $f2
/* CC90 8000C090 46000007 */  neg.s      $f0, $f0
/* CC94 8000C094 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* CC98 8000C098 E420DAF4 */  swc1       $f0, %lo(D_800CDAF4)($at)
/* CC9C 8000C09C 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* CCA0 8000C0A0 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* CCA4 8000C0A4 34420008 */  ori        $v0, $v0, 8
/* CCA8 8000C0A8 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* CCAC 8000C0AC AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
/* CCB0 8000C0B0 08003035 */  j          .L8000C0D4
/* CCB4 8000C0B4 24100001 */   addiu     $s0, $zero, 1
.L8000C0B8:
/* CCB8 8000C0B8 0C002B7F */  jal        func_8000ADFC
/* CCBC 8000C0BC 00042603 */   sra       $a0, $a0, 0x18
/* CCC0 8000C0C0 3C01800D */  lui        $at, %hi(D_800CDB00)
/* CCC4 8000C0C4 A422DB00 */  sh         $v0, %lo(D_800CDB00)($at)
.L8000C0C8:
/* CCC8 8000C0C8 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* CCCC 8000C0CC AC20DAF4 */  sw         $zero, %lo(D_800CDAF4)($at)
/* CCD0 8000C0D0 24100001 */  addiu      $s0, $zero, 1
.L8000C0D4:
/* CCD4 8000C0D4 12300009 */  beq        $s1, $s0, .L8000C0FC
/* CCD8 8000C0D8 24020001 */   addiu     $v0, $zero, 1
/* CCDC 8000C0DC 0C003051 */  jal        func_8000C144
/* CCE0 8000C0E0 00000000 */   nop
/* CCE4 8000C0E4 14500005 */  bne        $v0, $s0, .L8000C0FC
/* CCE8 8000C0E8 24020001 */   addiu     $v0, $zero, 1
/* CCEC 8000C0EC 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* CCF0 8000C0F0 0C0229E8 */  jal        func_8008A7A0
/* CCF4 8000C0F4 8C84DAD4 */   lw        $a0, %lo(D_800CDAD4)($a0)
/* CCF8 8000C0F8 24020001 */  addiu      $v0, $zero, 1
.L8000C0FC:
/* CCFC 8000C0FC 3C01800D */  lui        $at, %hi(D_800CDAEC)
/* CD00 8000C100 AC22DAEC */  sw         $v0, %lo(D_800CDAEC)($at)
/* CD04 8000C104 3C01800D */  lui        $at, %hi(D_800CDAFC)
/* CD08 8000C108 A432DAFC */  sh         $s2, %lo(D_800CDAFC)($at)
/* CD0C 8000C10C 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* CD10 8000C110 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* CD14 8000C114 34420001 */  ori        $v0, $v0, 1
/* CD18 8000C118 2403FFEF */  addiu      $v1, $zero, -0x11
/* CD1C 8000C11C 00431024 */  and        $v0, $v0, $v1
/* CD20 8000C120 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* CD24 8000C124 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
/* CD28 8000C128 00001021 */  addu       $v0, $zero, $zero
.L8000C12C:
/* CD2C 8000C12C 8FBF001C */  lw         $ra, 0x1c($sp)
/* CD30 8000C130 8FB20018 */  lw         $s2, 0x18($sp)
/* CD34 8000C134 8FB10014 */  lw         $s1, 0x14($sp)
/* CD38 8000C138 8FB00010 */  lw         $s0, 0x10($sp)
/* CD3C 8000C13C 03E00008 */  jr         $ra
/* CD40 8000C140 27BD0020 */   addiu     $sp, $sp, 0x20
