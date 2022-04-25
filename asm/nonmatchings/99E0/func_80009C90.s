	.set noat
	.set noreorder

glabel func_80009C90
/* A890 80009C90 8C870050 */  lw         $a3, 0x50($a0)
/* A894 80009C94 00052400 */  sll        $a0, $a1, 0x10
/* A898 80009C98 30C6FFFF */  andi       $a2, $a2, 0xffff
/* A89C 80009C9C 00862025 */  or         $a0, $a0, $a2
/* A8A0 80009CA0 90E20057 */  lbu        $v0, 0x57($a3)
/* A8A4 80009CA4 24430001 */  addiu      $v1, $v0, 1
/* A8A8 80009CA8 A0E30057 */  sb         $v1, 0x57($a3)
/* A8AC 80009CAC 00021080 */  sll        $v0, $v0, 2
/* A8B0 80009CB0 00471021 */  addu       $v0, $v0, $a3
/* A8B4 80009CB4 AC44006C */  sw         $a0, 0x6c($v0)
/* A8B8 80009CB8 90E20057 */  lbu        $v0, 0x57($a3)
/* A8BC 80009CBC 2C420006 */  sltiu      $v0, $v0, 6
/* A8C0 80009CC0 50400001 */  beql       $v0, $zero, .L80009CC8
/* A8C4 80009CC4 A0E00057 */   sb        $zero, 0x57($a3)
.L80009CC8:
/* A8C8 80009CC8 00003021 */  addu       $a2, $zero, $zero
/* A8CC 80009CCC 00002021 */  addu       $a0, $zero, $zero
/* A8D0 80009CD0 00002821 */  addu       $a1, $zero, $zero
.L80009CD4:
/* A8D4 80009CD4 30A200FF */  andi       $v0, $a1, 0xff
/* A8D8 80009CD8 00021080 */  sll        $v0, $v0, 2
/* A8DC 80009CDC 00471021 */  addu       $v0, $v0, $a3
/* A8E0 80009CE0 8443006C */  lh         $v1, 0x6c($v0)
/* A8E4 80009CE4 9442006E */  lhu        $v0, 0x6e($v0)
/* A8E8 80009CE8 00463021 */  addu       $a2, $v0, $a2
/* A8EC 80009CEC 24A50001 */  addiu      $a1, $a1, 1
/* A8F0 80009CF0 30A200FF */  andi       $v0, $a1, 0xff
/* A8F4 80009CF4 2C420006 */  sltiu      $v0, $v0, 6
/* A8F8 80009CF8 1440FFF6 */  bnez       $v0, .L80009CD4
/* A8FC 80009CFC 00832021 */   addu      $a0, $a0, $v1
/* A900 80009D00 00042400 */  sll        $a0, $a0, 0x10
/* A904 80009D04 00041403 */  sra        $v0, $a0, 0x10
/* A908 80009D08 3C052AAA */  lui        $a1, 0x2aaa
/* A90C 80009D0C 34A5AAAB */  ori        $a1, $a1, 0xaaab
/* A910 80009D10 00450018 */  mult       $v0, $a1
/* A914 80009D14 000427C3 */  sra        $a0, $a0, 0x1f
/* A918 80009D18 00004010 */  mfhi       $t0
/* A91C 80009D1C 01042023 */  subu       $a0, $t0, $a0
/* A920 80009D20 00061400 */  sll        $v0, $a2, 0x10
/* A924 80009D24 00021C03 */  sra        $v1, $v0, 0x10
/* A928 80009D28 00650018 */  mult       $v1, $a1
/* A92C 80009D2C 000217C3 */  sra        $v0, $v0, 0x1f
/* A930 80009D30 00004010 */  mfhi       $t0
/* A934 80009D34 01021023 */  subu       $v0, $t0, $v0
/* A938 80009D38 00042400 */  sll        $a0, $a0, 0x10
/* A93C 80009D3C 3042FFFF */  andi       $v0, $v0, 0xffff
/* A940 80009D40 03E00008 */  jr         $ra
/* A944 80009D44 00821025 */   or        $v0, $a0, $v0
