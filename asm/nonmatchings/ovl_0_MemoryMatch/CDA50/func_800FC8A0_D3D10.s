	.set noat
	.set noreorder

glabel func_800FC8A0_D3D10
/* D3D10 800FC8A0 00805021 */  addu       $t2, $a0, $zero
/* D3D14 800FC8A4 3C02800F */  lui        $v0, %hi(D_800F37DA)
/* D3D18 800FC8A8 904237DA */  lbu        $v0, %lo(D_800F37DA)($v0)
/* D3D1C 800FC8AC 1040004B */  beqz       $v0, .L800FC9DC
/* D3D20 800FC8B0 00004821 */   addu      $t1, $zero, $zero
/* D3D24 800FC8B4 000A1400 */  sll        $v0, $t2, 0x10
/* D3D28 800FC8B8 00021403 */  sra        $v0, $v0, 0x10
/* D3D2C 800FC8BC 3C04800F */  lui        $a0, %hi(D_800F2B7C)
/* D3D30 800FC8C0 8C842B7C */  lw         $a0, %lo(D_800F2B7C)($a0)
/* D3D34 800FC8C4 00021840 */  sll        $v1, $v0, 1
/* D3D38 800FC8C8 00621821 */  addu       $v1, $v1, $v0
/* D3D3C 800FC8CC 00031980 */  sll        $v1, $v1, 6
/* D3D40 800FC8D0 00646021 */  addu       $t4, $v1, $a0
/* D3D44 800FC8D4 00006821 */  addu       $t5, $zero, $zero
/* D3D48 800FC8D8 3C0B800F */  lui        $t3, %hi(D_800F37DA)
/* D3D4C 800FC8DC 916B37DA */  lbu        $t3, %lo(D_800F37DA)($t3)
.L800FC8E0:
/* D3D50 800FC8E0 8D82006C */  lw         $v0, 0x6c($t4)
/* D3D54 800FC8E4 00091C00 */  sll        $v1, $t1, 0x10
/* D3D58 800FC8E8 00031B83 */  sra        $v1, $v1, 0xe
/* D3D5C 800FC8EC 00621821 */  addu       $v1, $v1, $v0
/* D3D60 800FC8F0 8C670008 */  lw         $a3, 8($v1)
/* D3D64 800FC8F4 84420072 */  lh         $v0, 0x72($v0)
/* D3D68 800FC8F8 01A2102A */  slt        $v0, $t5, $v0
/* D3D6C 800FC8FC 10400030 */  beqz       $v0, .L800FC9C0
/* D3D70 800FC900 00004021 */   addu      $t0, $zero, $zero
/* D3D74 800FC904 000A1400 */  sll        $v0, $t2, 0x10
/* D3D78 800FC908 00021403 */  sra        $v0, $v0, 0x10
/* D3D7C 800FC90C 3C04800F */  lui        $a0, %hi(D_800F2B7C)
/* D3D80 800FC910 8C842B7C */  lw         $a0, %lo(D_800F2B7C)($a0)
/* D3D84 800FC914 00021840 */  sll        $v1, $v0, 1
/* D3D88 800FC918 00621821 */  addu       $v1, $v1, $v0
/* D3D8C 800FC91C 00031980 */  sll        $v1, $v1, 6
/* D3D90 800FC920 00642021 */  addu       $a0, $v1, $a0
.L800FC924:
/* D3D94 800FC924 31020002 */  andi       $v0, $t0, 2
/* D3D98 800FC928 1440000D */  bnez       $v0, .L800FC960
/* D3D9C 800FC92C 00000000 */   nop
/* D3DA0 800FC930 C4A00000 */  lwc1       $f0, ($a1)
/* D3DA4 800FC934 4600008D */  trunc.w.s  $f2, $f0
/* D3DA8 800FC938 44021000 */  mfc1       $v0, $f2
/* D3DAC 800FC93C 00000000 */  nop
/* D3DB0 800FC940 A4E20000 */  sh         $v0, ($a3)
/* D3DB4 800FC944 C4A00004 */  lwc1       $f0, 4($a1)
/* D3DB8 800FC948 4600008D */  trunc.w.s  $f2, $f0
/* D3DBC 800FC94C 44021000 */  mfc1       $v0, $f2
/* D3DC0 800FC950 00000000 */  nop
/* D3DC4 800FC954 A4E20002 */  sh         $v0, 2($a3)
/* D3DC8 800FC958 0803F263 */  j          .L800FC98C
/* D3DCC 800FC95C C4A00008 */   lwc1      $f0, 8($a1)
.L800FC960:
/* D3DD0 800FC960 C4C00000 */  lwc1       $f0, ($a2)
/* D3DD4 800FC964 4600008D */  trunc.w.s  $f2, $f0
/* D3DD8 800FC968 44021000 */  mfc1       $v0, $f2
/* D3DDC 800FC96C 00000000 */  nop
/* D3DE0 800FC970 A4E20000 */  sh         $v0, ($a3)
/* D3DE4 800FC974 C4C00004 */  lwc1       $f0, 4($a2)
/* D3DE8 800FC978 4600008D */  trunc.w.s  $f2, $f0
/* D3DEC 800FC97C 44021000 */  mfc1       $v0, $f2
/* D3DF0 800FC980 00000000 */  nop
/* D3DF4 800FC984 A4E20002 */  sh         $v0, 2($a3)
/* D3DF8 800FC988 C4C00008 */  lwc1       $f0, 8($a2)
.L800FC98C:
/* D3DFC 800FC98C 4600008D */  trunc.w.s  $f2, $f0
/* D3E00 800FC990 44021000 */  mfc1       $v0, $f2
/* D3E04 800FC994 00000000 */  nop
/* D3E08 800FC998 A4E20004 */  sh         $v0, 4($a3)
/* D3E0C 800FC99C 25020001 */  addiu      $v0, $t0, 1
/* D3E10 800FC9A0 00404021 */  addu       $t0, $v0, $zero
/* D3E14 800FC9A4 8C83006C */  lw         $v1, 0x6c($a0)
/* D3E18 800FC9A8 00021400 */  sll        $v0, $v0, 0x10
/* D3E1C 800FC9AC 00021403 */  sra        $v0, $v0, 0x10
/* D3E20 800FC9B0 84630072 */  lh         $v1, 0x72($v1)
/* D3E24 800FC9B4 0043102A */  slt        $v0, $v0, $v1
/* D3E28 800FC9B8 1440FFDA */  bnez       $v0, .L800FC924
/* D3E2C 800FC9BC 24E70010 */   addiu     $a3, $a3, 0x10
.L800FC9C0:
/* D3E30 800FC9C0 25220001 */  addiu      $v0, $t1, 1
/* D3E34 800FC9C4 00404821 */  addu       $t1, $v0, $zero
/* D3E38 800FC9C8 00021400 */  sll        $v0, $v0, 0x10
/* D3E3C 800FC9CC 00021403 */  sra        $v0, $v0, 0x10
/* D3E40 800FC9D0 004B102A */  slt        $v0, $v0, $t3
/* D3E44 800FC9D4 1440FFC2 */  bnez       $v0, .L800FC8E0
/* D3E48 800FC9D8 00000000 */   nop
.L800FC9DC:
/* D3E4C 800FC9DC 03E00008 */  jr         $ra
/* D3E50 800FC9E0 00000000 */   nop
