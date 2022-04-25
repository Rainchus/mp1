	.set noat
	.set noreorder

glabel func_8001CBD8
/* 1D7D8 8001CBD8 8C84005C */  lw         $a0, 0x5c($a0)
/* 1D7DC 8001CBDC 90880008 */  lbu        $t0, 8($a0)
/* 1D7E0 8001CBE0 00081A00 */  sll        $v1, $t0, 8
/* 1D7E4 8001CBE4 90820009 */  lbu        $v0, 9($a0)
/* 1D7E8 8001CBE8 00431021 */  addu       $v0, $v0, $v1
/* 1D7EC 8001CBEC 00404021 */  addu       $t0, $v0, $zero
/* 1D7F0 8001CBF0 00021400 */  sll        $v0, $v0, 0x10
/* 1D7F4 8001CBF4 54400004 */  bnel       $v0, $zero, .L8001CC08
/* 1D7F8 8001CBF8 2484000A */   addiu     $a0, $a0, 0xa
/* 1D7FC 8001CBFC A0A00000 */  sb         $zero, ($a1)
/* 1D800 8001CC00 0800733E */  j          .L8001CCF8
/* 1D804 8001CC04 00001021 */   addu      $v0, $zero, $zero
.L8001CC08:
/* 1D808 8001CC08 00081400 */  sll        $v0, $t0, 0x10
/* 1D80C 8001CC0C 00021403 */  sra        $v0, $v0, 0x10
/* 1D810 8001CC10 00823821 */  addu       $a3, $a0, $v0
/* 1D814 8001CC14 00004821 */  addu       $t1, $zero, $zero
/* 1D818 8001CC18 00061400 */  sll        $v0, $a2, 0x10
/* 1D81C 8001CC1C 1840000B */  blez       $v0, .L8001CC4C
/* 1D820 8001CC20 00401821 */   addu      $v1, $v0, $zero
/* 1D824 8001CC24 00031C03 */  sra        $v1, $v1, 0x10
.L8001CC28:
/* 1D828 8001CC28 90820000 */  lbu        $v0, ($a0)
/* 1D82C 8001CC2C 00E23821 */  addu       $a3, $a3, $v0
/* 1D830 8001CC30 25220001 */  addiu      $v0, $t1, 1
/* 1D834 8001CC34 00404821 */  addu       $t1, $v0, $zero
/* 1D838 8001CC38 00021400 */  sll        $v0, $v0, 0x10
/* 1D83C 8001CC3C 00021403 */  sra        $v0, $v0, 0x10
/* 1D840 8001CC40 0043102A */  slt        $v0, $v0, $v1
/* 1D844 8001CC44 1440FFF8 */  bnez       $v0, .L8001CC28
/* 1D848 8001CC48 24840001 */   addiu     $a0, $a0, 1
.L8001CC4C:
/* 1D84C 8001CC4C 90820000 */  lbu        $v0, ($a0)
/* 1D850 8001CC50 00A03021 */  addu       $a2, $a1, $zero
/* 1D854 8001CC54 00004821 */  addu       $t1, $zero, $zero
/* 1D858 8001CC58 00004021 */  addu       $t0, $zero, $zero
/* 1D85C 8001CC5C 10400023 */  beqz       $v0, .L8001CCEC
/* 1D860 8001CC60 00002021 */   addu      $a0, $zero, $zero
/* 1D864 8001CC64 240B002F */  addiu      $t3, $zero, 0x2f
/* 1D868 8001CC68 00405021 */  addu       $t2, $v0, $zero
/* 1D86C 8001CC6C 00041400 */  sll        $v0, $a0, 0x10
.L8001CC70:
/* 1D870 8001CC70 00021403 */  sra        $v0, $v0, 0x10
/* 1D874 8001CC74 28420017 */  slti       $v0, $v0, 0x17
/* 1D878 8001CC78 5040001D */  beql       $v0, $zero, .L8001CCF0
/* 1D87C 8001CC7C A0C00000 */   sb        $zero, ($a2)
/* 1D880 8001CC80 90E20000 */  lbu        $v0, ($a3)
/* 1D884 8001CC84 144B0006 */  bne        $v0, $t3, .L8001CCA0
/* 1D888 8001CC88 00000000 */   nop
/* 1D88C 8001CC8C 00A03021 */  addu       $a2, $a1, $zero
/* 1D890 8001CC90 00004021 */  addu       $t0, $zero, $zero
/* 1D894 8001CC94 00002021 */  addu       $a0, $zero, $zero
/* 1D898 8001CC98 08007334 */  j          .L8001CCD0
/* 1D89C 8001CC9C 24E70001 */   addiu     $a3, $a3, 1
.L8001CCA0:
/* 1D8A0 8001CCA0 90E20000 */  lbu        $v0, ($a3)
/* 1D8A4 8001CCA4 A0C20000 */  sb         $v0, ($a2)
/* 1D8A8 8001CCA8 24E70001 */  addiu      $a3, $a3, 1
/* 1D8AC 8001CCAC 00041400 */  sll        $v0, $a0, 0x10
/* 1D8B0 8001CCB0 00021403 */  sra        $v0, $v0, 0x10
/* 1D8B4 8001CCB4 24420001 */  addiu      $v0, $v0, 1
/* 1D8B8 8001CCB8 90C30000 */  lbu        $v1, ($a2)
/* 1D8BC 8001CCBC 00430018 */  mult       $v0, $v1
/* 1D8C0 8001CCC0 00001012 */  mflo       $v0
/* 1D8C4 8001CCC4 01024021 */  addu       $t0, $t0, $v0
/* 1D8C8 8001CCC8 24C60001 */  addiu      $a2, $a2, 1
/* 1D8CC 8001CCCC 24840001 */  addiu      $a0, $a0, 1
.L8001CCD0:
/* 1D8D0 8001CCD0 25220001 */  addiu      $v0, $t1, 1
/* 1D8D4 8001CCD4 00404821 */  addu       $t1, $v0, $zero
/* 1D8D8 8001CCD8 00021400 */  sll        $v0, $v0, 0x10
/* 1D8DC 8001CCDC 00021403 */  sra        $v0, $v0, 0x10
/* 1D8E0 8001CCE0 004A102A */  slt        $v0, $v0, $t2
/* 1D8E4 8001CCE4 1440FFE2 */  bnez       $v0, .L8001CC70
/* 1D8E8 8001CCE8 00041400 */   sll       $v0, $a0, 0x10
.L8001CCEC:
/* 1D8EC 8001CCEC A0C00000 */  sb         $zero, ($a2)
.L8001CCF0:
/* 1D8F0 8001CCF0 00081400 */  sll        $v0, $t0, 0x10
/* 1D8F4 8001CCF4 00021403 */  sra        $v0, $v0, 0x10
.L8001CCF8:
/* 1D8F8 8001CCF8 03E00008 */  jr         $ra
/* 1D8FC 8001CCFC 00000000 */   nop
