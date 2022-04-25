	.set noat
	.set noreorder

glabel func_8006EB90
/* 6F790 8006EB90 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6F794 8006EB94 AFBF0028 */  sw         $ra, 0x28($sp)
/* 6F798 8006EB98 AFB50024 */  sw         $s5, 0x24($sp)
/* 6F79C 8006EB9C AFB40020 */  sw         $s4, 0x20($sp)
/* 6F7A0 8006EBA0 AFB3001C */  sw         $s3, 0x1c($sp)
/* 6F7A4 8006EBA4 AFB20018 */  sw         $s2, 0x18($sp)
/* 6F7A8 8006EBA8 AFB10014 */  sw         $s1, 0x14($sp)
/* 6F7AC 8006EBAC AFB00010 */  sw         $s0, 0x10($sp)
/* 6F7B0 8006EBB0 00808821 */  addu       $s1, $a0, $zero
/* 6F7B4 8006EBB4 9222000B */  lbu        $v0, 0xb($s1)
/* 6F7B8 8006EBB8 9223000C */  lbu        $v1, 0xc($s1)
/* 6F7BC 8006EBBC 00431021 */  addu       $v0, $v0, $v1
/* 6F7C0 8006EBC0 A222000B */  sb         $v0, 0xb($s1)
/* 6F7C4 8006EBC4 9223000B */  lbu        $v1, 0xb($s1)
/* 6F7C8 8006EBC8 92220008 */  lbu        $v0, 8($s1)
/* 6F7CC 8006EBCC 0043102B */  sltu       $v0, $v0, $v1
/* 6F7D0 8006EBD0 1040007D */  beqz       $v0, .L8006EDC8
/* 6F7D4 8006EBD4 24140001 */   addiu     $s4, $zero, 1
/* 6F7D8 8006EBD8 00141400 */  sll        $v0, $s4, 0x10
.L8006EBDC:
/* 6F7DC 8006EBDC 00029403 */  sra        $s2, $v0, 0x10
/* 6F7E0 8006EBE0 00121080 */  sll        $v0, $s2, 2
/* 6F7E4 8006EBE4 00519821 */  addu       $s3, $v0, $s1
/* 6F7E8 8006EBE8 8E6400C0 */  lw         $a0, 0xc0($s3)
/* 6F7EC 8006EBEC 1080003D */  beqz       $a0, .L8006ECE4
/* 6F7F0 8006EBF0 26820001 */   addiu     $v0, $s4, 1
/* 6F7F4 8006EBF4 0080A821 */  addu       $s5, $a0, $zero
/* 6F7F8 8006EBF8 86240044 */  lh         $a0, 0x44($s1)
/* 6F7FC 8006EBFC 0C019D7D */  jal        func_800675F4
/* 6F800 8006EC00 02402821 */   addu      $a1, $s2, $zero
/* 6F804 8006EC04 00408021 */  addu       $s0, $v0, $zero
/* 6F808 8006EC08 8624001C */  lh         $a0, 0x1c($s1)
/* 6F80C 8006EC0C 8622001E */  lh         $v0, 0x1e($s1)
/* 6F810 8006EC10 00820018 */  mult       $a0, $v0
/* 6F814 8006EC14 00002012 */  mflo       $a0
/* 6F818 8006EC18 000417C2 */  srl        $v0, $a0, 0x1f
/* 6F81C 8006EC1C 00822021 */  addu       $a0, $a0, $v0
/* 6F820 8006EC20 0C008D9A */  jal        func_80023668
/* 6F824 8006EC24 00042043 */   sra       $a0, $a0, 1
/* 6F828 8006EC28 8E03004C */  lw         $v1, 0x4c($s0)
/* 6F82C 8006EC2C 8C640000 */  lw         $a0, ($v1)
/* 6F830 8006EC30 00121840 */  sll        $v1, $s2, 1
/* 6F834 8006EC34 00721821 */  addu       $v1, $v1, $s2
/* 6F838 8006EC38 00031880 */  sll        $v1, $v1, 2
/* 6F83C 8006EC3C 00641821 */  addu       $v1, $v1, $a0
/* 6F840 8006EC40 AE6200C0 */  sw         $v0, 0xc0($s3)
/* 6F844 8006EC44 AC620000 */  sw         $v0, ($v1)
/* 6F848 8006EC48 00408021 */  addu       $s0, $v0, $zero
/* 6F84C 8006EC4C 8626001C */  lh         $a2, 0x1c($s1)
/* 6F850 8006EC50 8622001E */  lh         $v0, 0x1e($s1)
/* 6F854 8006EC54 00C20018 */  mult       $a2, $v0
/* 6F858 8006EC58 00003012 */  mflo       $a2
/* 6F85C 8006EC5C 000617C2 */  srl        $v0, $a2, 0x1f
/* 6F860 8006EC60 00C23021 */  addu       $a2, $a2, $v0
/* 6F864 8006EC64 02002021 */  addu       $a0, $s0, $zero
/* 6F868 8006EC68 00002821 */  addu       $a1, $zero, $zero
/* 6F86C 8006EC6C 0C026DDC */  jal        func_8009B770
/* 6F870 8006EC70 00063043 */   sra       $a2, $a2, 1
/* 6F874 8006EC74 8626001C */  lh         $a2, 0x1c($s1)
/* 6F878 8006EC78 92240008 */  lbu        $a0, 8($s1)
/* 6F87C 8006EC7C 9222000A */  lbu        $v0, 0xa($s1)
/* 6F880 8006EC80 00822021 */  addu       $a0, $a0, $v0
/* 6F884 8006EC84 86250026 */  lh         $a1, 0x26($s1)
/* 6F888 8006EC88 00852021 */  addu       $a0, $a0, $a1
/* 6F88C 8006EC8C 00C40018 */  mult       $a2, $a0
/* 6F890 8006EC90 00002012 */  mflo       $a0
/* 6F894 8006EC94 000417C2 */  srl        $v0, $a0, 0x1f
/* 6F898 8006EC98 00822021 */  addu       $a0, $a0, $v0
/* 6F89C 8006EC9C 00042043 */  sra        $a0, $a0, 1
/* 6F8A0 8006ECA0 00C50018 */  mult       $a2, $a1
/* 6F8A4 8006ECA4 00002812 */  mflo       $a1
/* 6F8A8 8006ECA8 000517C2 */  srl        $v0, $a1, 0x1f
/* 6F8AC 8006ECAC 00A22821 */  addu       $a1, $a1, $v0
/* 6F8B0 8006ECB0 00052843 */  sra        $a1, $a1, 1
/* 6F8B4 8006ECB4 8622002E */  lh         $v0, 0x2e($s1)
/* 6F8B8 8006ECB8 00C20018 */  mult       $a2, $v0
/* 6F8BC 8006ECBC 00003012 */  mflo       $a2
/* 6F8C0 8006ECC0 000617C2 */  srl        $v0, $a2, 0x1f
/* 6F8C4 8006ECC4 00C23021 */  addu       $a2, $a2, $v0
/* 6F8C8 8006ECC8 02A42021 */  addu       $a0, $s5, $a0
/* 6F8CC 8006ECCC 02052821 */  addu       $a1, $s0, $a1
/* 6F8D0 8006ECD0 0C008E8E */  jal        func_80023A38
/* 6F8D4 8006ECD4 00063043 */   sra       $a2, $a2, 1
/* 6F8D8 8006ECD8 0C008E22 */  jal        func_80023888
/* 6F8DC 8006ECDC 02A02021 */   addu      $a0, $s5, $zero
/* 6F8E0 8006ECE0 26820001 */  addiu      $v0, $s4, 1
.L8006ECE4:
/* 6F8E4 8006ECE4 0040A021 */  addu       $s4, $v0, $zero
/* 6F8E8 8006ECE8 00021400 */  sll        $v0, $v0, 0x10
/* 6F8EC 8006ECEC 00021403 */  sra        $v0, $v0, 0x10
/* 6F8F0 8006ECF0 2842000A */  slti       $v0, $v0, 0xa
/* 6F8F4 8006ECF4 5440FFB9 */  bnel       $v0, $zero, .L8006EBDC
/* 6F8F8 8006ECF8 00141400 */   sll       $v0, $s4, 0x10
/* 6F8FC 8006ECFC 8E2400E8 */  lw         $a0, 0xe8($s1)
/* 6F900 8006ED00 1080002F */  beqz       $a0, .L8006EDC0
/* 6F904 8006ED04 0080A821 */   addu      $s5, $a0, $zero
/* 6F908 8006ED08 86240044 */  lh         $a0, 0x44($s1)
/* 6F90C 8006ED0C 0C019D7D */  jal        func_800675F4
/* 6F910 8006ED10 2405000A */   addiu     $a1, $zero, 0xa
/* 6F914 8006ED14 00408021 */  addu       $s0, $v0, $zero
/* 6F918 8006ED18 8622001C */  lh         $v0, 0x1c($s1)
/* 6F91C 8006ED1C 8624001E */  lh         $a0, 0x1e($s1)
/* 6F920 8006ED20 00440018 */  mult       $v0, $a0
/* 6F924 8006ED24 00002012 */  mflo       $a0
/* 6F928 8006ED28 0C008D9A */  jal        func_80023668
/* 6F92C 8006ED2C 00000000 */   nop
/* 6F930 8006ED30 8E03004C */  lw         $v1, 0x4c($s0)
/* 6F934 8006ED34 8C630000 */  lw         $v1, ($v1)
/* 6F938 8006ED38 AE2200E8 */  sw         $v0, 0xe8($s1)
/* 6F93C 8006ED3C AC620000 */  sw         $v0, ($v1)
/* 6F940 8006ED40 00408021 */  addu       $s0, $v0, $zero
/* 6F944 8006ED44 8622001C */  lh         $v0, 0x1c($s1)
/* 6F948 8006ED48 8626001E */  lh         $a2, 0x1e($s1)
/* 6F94C 8006ED4C 02002021 */  addu       $a0, $s0, $zero
/* 6F950 8006ED50 00460018 */  mult       $v0, $a2
/* 6F954 8006ED54 00003012 */  mflo       $a2
/* 6F958 8006ED58 00000000 */  nop
/* 6F95C 8006ED5C 00000000 */  nop
/* 6F960 8006ED60 0C026DDC */  jal        func_8009B770
/* 6F964 8006ED64 00002821 */   addu      $a1, $zero, $zero
/* 6F968 8006ED68 8626001C */  lh         $a2, 0x1c($s1)
/* 6F96C 8006ED6C 92240008 */  lbu        $a0, 8($s1)
/* 6F970 8006ED70 9222000A */  lbu        $v0, 0xa($s1)
/* 6F974 8006ED74 00822021 */  addu       $a0, $a0, $v0
/* 6F978 8006ED78 86250026 */  lh         $a1, 0x26($s1)
/* 6F97C 8006ED7C 00852021 */  addu       $a0, $a0, $a1
/* 6F980 8006ED80 00C40018 */  mult       $a2, $a0
/* 6F984 8006ED84 00002012 */  mflo       $a0
/* 6F988 8006ED88 00000000 */  nop
/* 6F98C 8006ED8C 00000000 */  nop
/* 6F990 8006ED90 00C50018 */  mult       $a2, $a1
/* 6F994 8006ED94 00002812 */  mflo       $a1
/* 6F998 8006ED98 8622002E */  lh         $v0, 0x2e($s1)
/* 6F99C 8006ED9C 02A42021 */  addu       $a0, $s5, $a0
/* 6F9A0 8006EDA0 00C20018 */  mult       $a2, $v0
/* 6F9A4 8006EDA4 00003012 */  mflo       $a2
/* 6F9A8 8006EDA8 00000000 */  nop
/* 6F9AC 8006EDAC 00000000 */  nop
/* 6F9B0 8006EDB0 0C008E8E */  jal        func_80023A38
/* 6F9B4 8006EDB4 02052821 */   addu      $a1, $s0, $a1
/* 6F9B8 8006EDB8 0C008E22 */  jal        func_80023888
/* 6F9BC 8006EDBC 02A02021 */   addu      $a0, $s5, $zero
.L8006EDC0:
/* 6F9C0 8006EDC0 0801BBA5 */  j          .L8006EE94
/* 6F9C4 8006EDC4 00001021 */   addu      $v0, $zero, $zero
.L8006EDC8:
/* 6F9C8 8006EDC8 00141400 */  sll        $v0, $s4, 0x10
.L8006EDCC:
/* 6F9CC 8006EDCC 00028403 */  sra        $s0, $v0, 0x10
/* 6F9D0 8006EDD0 00101080 */  sll        $v0, $s0, 2
/* 6F9D4 8006EDD4 00519021 */  addu       $s2, $v0, $s1
/* 6F9D8 8006EDD8 8E4200C0 */  lw         $v0, 0xc0($s2)
/* 6F9DC 8006EDDC 10400017 */  beqz       $v0, .L8006EE3C
/* 6F9E0 8006EDE0 26820001 */   addiu     $v0, $s4, 1
/* 6F9E4 8006EDE4 86240044 */  lh         $a0, 0x44($s1)
/* 6F9E8 8006EDE8 0C019D7D */  jal        func_800675F4
/* 6F9EC 8006EDEC 02002821 */   addu      $a1, $s0, $zero
/* 6F9F0 8006EDF0 8C42004C */  lw         $v0, 0x4c($v0)
/* 6F9F4 8006EDF4 8C420000 */  lw         $v0, ($v0)
/* 6F9F8 8006EDF8 00102040 */  sll        $a0, $s0, 1
/* 6F9FC 8006EDFC 00902021 */  addu       $a0, $a0, $s0
/* 6FA00 8006EE00 00042080 */  sll        $a0, $a0, 2
/* 6FA04 8006EE04 00822021 */  addu       $a0, $a0, $v0
/* 6FA08 8006EE08 9622001C */  lhu        $v0, 0x1c($s1)
/* 6FA0C 8006EE0C 00021400 */  sll        $v0, $v0, 0x10
/* 6FA10 8006EE10 00021C03 */  sra        $v1, $v0, 0x10
/* 6FA14 8006EE14 000217C2 */  srl        $v0, $v0, 0x1f
/* 6FA18 8006EE18 00621821 */  addu       $v1, $v1, $v0
/* 6FA1C 8006EE1C 00031843 */  sra        $v1, $v1, 1
/* 6FA20 8006EE20 9222000B */  lbu        $v0, 0xb($s1)
/* 6FA24 8006EE24 00620018 */  mult       $v1, $v0
/* 6FA28 8006EE28 00001812 */  mflo       $v1
/* 6FA2C 8006EE2C 8E4200C0 */  lw         $v0, 0xc0($s2)
/* 6FA30 8006EE30 00621821 */  addu       $v1, $v1, $v0
/* 6FA34 8006EE34 AC830000 */  sw         $v1, ($a0)
/* 6FA38 8006EE38 26820001 */  addiu      $v0, $s4, 1
.L8006EE3C:
/* 6FA3C 8006EE3C 0040A021 */  addu       $s4, $v0, $zero
/* 6FA40 8006EE40 00021400 */  sll        $v0, $v0, 0x10
/* 6FA44 8006EE44 00021403 */  sra        $v0, $v0, 0x10
/* 6FA48 8006EE48 2842000A */  slti       $v0, $v0, 0xa
/* 6FA4C 8006EE4C 1440FFDF */  bnez       $v0, .L8006EDCC
/* 6FA50 8006EE50 00141400 */   sll       $v0, $s4, 0x10
/* 6FA54 8006EE54 8E2200E8 */  lw         $v0, 0xe8($s1)
/* 6FA58 8006EE58 1040000E */  beqz       $v0, .L8006EE94
/* 6FA5C 8006EE5C 24020001 */   addiu     $v0, $zero, 1
/* 6FA60 8006EE60 86240044 */  lh         $a0, 0x44($s1)
/* 6FA64 8006EE64 0C019D7D */  jal        func_800675F4
/* 6FA68 8006EE68 2405000A */   addiu     $a1, $zero, 0xa
/* 6FA6C 8006EE6C 8C42004C */  lw         $v0, 0x4c($v0)
/* 6FA70 8006EE70 8C440000 */  lw         $a0, ($v0)
/* 6FA74 8006EE74 8622001C */  lh         $v0, 0x1c($s1)
/* 6FA78 8006EE78 9223000B */  lbu        $v1, 0xb($s1)
/* 6FA7C 8006EE7C 00430018 */  mult       $v0, $v1
/* 6FA80 8006EE80 00001012 */  mflo       $v0
/* 6FA84 8006EE84 8E2300E8 */  lw         $v1, 0xe8($s1)
/* 6FA88 8006EE88 00431021 */  addu       $v0, $v0, $v1
/* 6FA8C 8006EE8C AC820000 */  sw         $v0, ($a0)
/* 6FA90 8006EE90 24020001 */  addiu      $v0, $zero, 1
.L8006EE94:
/* 6FA94 8006EE94 8FBF0028 */  lw         $ra, 0x28($sp)
/* 6FA98 8006EE98 8FB50024 */  lw         $s5, 0x24($sp)
/* 6FA9C 8006EE9C 8FB40020 */  lw         $s4, 0x20($sp)
/* 6FAA0 8006EEA0 8FB3001C */  lw         $s3, 0x1c($sp)
/* 6FAA4 8006EEA4 8FB20018 */  lw         $s2, 0x18($sp)
/* 6FAA8 8006EEA8 8FB10014 */  lw         $s1, 0x14($sp)
/* 6FAAC 8006EEAC 8FB00010 */  lw         $s0, 0x10($sp)
/* 6FAB0 8006EEB0 03E00008 */  jr         $ra
/* 6FAB4 8006EEB4 27BD0030 */   addiu     $sp, $sp, 0x30
