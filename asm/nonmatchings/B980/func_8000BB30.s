	.set noat
	.set noreorder

glabel func_8000BB30
/* C730 8000BB30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C734 8000BB34 AFBF001C */  sw         $ra, 0x1c($sp)
/* C738 8000BB38 AFB00018 */  sw         $s0, 0x18($sp)
/* C73C 8000BB3C F7B40020 */  sdc1       $f20, 0x20($sp)
/* C740 8000BB40 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* C744 8000BB44 0C02298C */  jal        func_8008A630
/* C748 8000BB48 8C84DAD4 */   lw        $a0, %lo(D_800CDAD4)($a0)
/* C74C 8000BB4C 00408021 */  addu       $s0, $v0, $zero
/* C750 8000BB50 24020001 */  addiu      $v0, $zero, 1
/* C754 8000BB54 12020005 */  beq        $s0, $v0, .L8000BB6C
/* C758 8000BB58 24020002 */   addiu     $v0, $zero, 2
/* C75C 8000BB5C 12020009 */  beq        $s0, $v0, .L8000BB84
/* C760 8000BB60 00000000 */   nop
/* C764 8000BB64 08002EE7 */  j          .L8000BB9C
/* C768 8000BB68 00000000 */   nop
.L8000BB6C:
/* C76C 8000BB6C 3C03800D */  lui        $v1, %hi(D_800CDAEC)
/* C770 8000BB70 8C63DAEC */  lw         $v1, %lo(D_800CDAEC)($v1)
/* C774 8000BB74 1062001C */  beq        $v1, $v0, .L8000BBE8
/* C778 8000BB78 24020001 */   addiu     $v0, $zero, 1
/* C77C 8000BB7C 08002EF8 */  j          .L8000BBE0
/* C780 8000BB80 00000000 */   nop
.L8000BB84:
/* C784 8000BB84 3C01800D */  lui        $at, %hi(D_800CDAEC)
/* C788 8000BB88 AC30DAEC */  sw         $s0, %lo(D_800CDAEC)($at)
/* C78C 8000BB8C 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* C790 8000BB90 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* C794 8000BB94 08002EF6 */  j          .L8000BBD8
/* C798 8000BB98 30420003 */   andi      $v0, $v0, 3
.L8000BB9C:
/* C79C 8000BB9C 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* C7A0 8000BBA0 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* C7A4 8000BBA4 30420001 */  andi       $v0, $v0, 1
/* C7A8 8000BBA8 10400006 */  beqz       $v0, .L8000BBC4
/* C7AC 8000BBAC 24020001 */   addiu     $v0, $zero, 1
/* C7B0 8000BBB0 3C01800D */  lui        $at, %hi(D_800CDAEC)
/* C7B4 8000BBB4 0C002E11 */  jal        func_8000B844
/* C7B8 8000BBB8 AC22DAEC */   sw        $v0, %lo(D_800CDAEC)($at)
/* C7BC 8000BBBC 08002EFA */  j          .L8000BBE8
/* C7C0 8000BBC0 00000000 */   nop
.L8000BBC4:
/* C7C4 8000BBC4 3C01800D */  lui        $at, %hi(D_800CDAEC)
/* C7C8 8000BBC8 AC20DAEC */  sw         $zero, %lo(D_800CDAEC)($at)
/* C7CC 8000BBCC 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* C7D0 8000BBD0 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* C7D4 8000BBD4 30420002 */  andi       $v0, $v0, 2
.L8000BBD8:
/* C7D8 8000BBD8 10400003 */  beqz       $v0, .L8000BBE8
/* C7DC 8000BBDC 24020001 */   addiu     $v0, $zero, 1
.L8000BBE0:
/* C7E0 8000BBE0 3C01800D */  lui        $at, %hi(D_800CDAEC)
/* C7E4 8000BBE4 AC22DAEC */  sw         $v0, %lo(D_800CDAEC)($at)
.L8000BBE8:
/* C7E8 8000BBE8 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* C7EC 8000BBEC 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* C7F0 8000BBF0 30420004 */  andi       $v0, $v0, 4
/* C7F4 8000BBF4 1040000F */  beqz       $v0, .L8000BC34
/* C7F8 8000BBF8 00000000 */   nop
/* C7FC 8000BBFC 1600000B */  bnez       $s0, .L8000BC2C
/* C800 8000BC00 24020001 */   addiu     $v0, $zero, 1
/* C804 8000BC04 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* C808 8000BC08 0C022990 */  jal        func_8008A640
/* C80C 8000BC0C 8C84DAD4 */   lw        $a0, %lo(D_800CDAD4)($a0)
/* C810 8000BC10 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* C814 8000BC14 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* C818 8000BC18 2403FFFB */  addiu      $v1, $zero, -5
/* C81C 8000BC1C 00431024 */  and        $v0, $v0, $v1
/* C820 8000BC20 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* C824 8000BC24 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
/* C828 8000BC28 24020001 */  addiu      $v0, $zero, 1
.L8000BC2C:
/* C82C 8000BC2C 3C01800D */  lui        $at, %hi(D_800CDAEC)
/* C830 8000BC30 AC22DAEC */  sw         $v0, %lo(D_800CDAEC)($at)
.L8000BC34:
/* C834 8000BC34 12000088 */  beqz       $s0, .L8000BE58
/* C838 8000BC38 00000000 */   nop
/* C83C 8000BC3C 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* C840 8000BC40 C422DAF4 */  lwc1       $f2, %lo(D_800CDAF4)($at)
/* C844 8000BC44 4480A000 */  mtc1       $zero, $f20
/* C848 8000BC48 00000000 */  nop
/* C84C 8000BC4C 4602A03C */  c.lt.s     $f20, $f2
/* C850 8000BC50 00000000 */  nop
/* C854 8000BC54 45000045 */  bc1f       .L8000BD6C
/* C858 8000BC58 00000000 */   nop
/* C85C 8000BC5C 3C01800D */  lui        $at, %hi(D_800CDAF8)
/* C860 8000BC60 C420DAF8 */  lwc1       $f0, %lo(D_800CDAF8)($at)
/* C864 8000BC64 46020000 */  add.s      $f0, $f0, $f2
/* C868 8000BC68 3C01800D */  lui        $at, %hi(D_800CDAF8)
/* C86C 8000BC6C E420DAF8 */  swc1       $f0, %lo(D_800CDAF8)($at)
/* C870 8000BC70 3C02800D */  lui        $v0, %hi(D_800CDB02)
/* C874 8000BC74 8442DB02 */  lh         $v0, %lo(D_800CDB02)($v0)
/* C878 8000BC78 44821000 */  mtc1       $v0, $f2
/* C87C 8000BC7C 00000000 */  nop
/* C880 8000BC80 468010A0 */  cvt.s.w    $f2, $f2
/* C884 8000BC84 4600103E */  c.le.s     $f2, $f0
/* C888 8000BC88 00000000 */  nop
/* C88C 8000BC8C 4500000A */  bc1f       .L8000BCB8
/* C890 8000BC90 00000000 */   nop
/* C894 8000BC94 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* C898 8000BC98 0C0229E8 */  jal        func_8008A7A0
/* C89C 8000BC9C 8C84DAD4 */   lw        $a0, %lo(D_800CDAD4)($a0)
/* C8A0 8000BCA0 24020002 */  addiu      $v0, $zero, 2
/* C8A4 8000BCA4 3C01800D */  lui        $at, %hi(D_800CDAEC)
/* C8A8 8000BCA8 AC22DAEC */  sw         $v0, %lo(D_800CDAEC)($at)
/* C8AC 8000BCAC 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* C8B0 8000BCB0 08002F59 */  j          .L8000BD64
/* C8B4 8000BCB4 E434DAF4 */   swc1      $f20, %lo(D_800CDAF4)($at)
.L8000BCB8:
/* C8B8 8000BCB8 3C01800D */  lui        $at, %hi(D_800CDAF8)
/* C8BC 8000BCBC C422DAF8 */  lwc1       $f2, %lo(D_800CDAF8)($at)
/* C8C0 8000BCC0 44800000 */  mtc1       $zero, $f0
/* C8C4 8000BCC4 00000000 */  nop
/* C8C8 8000BCC8 46001032 */  c.eq.s     $f2, $f0
/* C8CC 8000BCCC 00000000 */  nop
/* C8D0 8000BCD0 45010024 */  bc1t       .L8000BD64
/* C8D4 8000BCD4 00000000 */   nop
/* C8D8 8000BCD8 3C02800D */  lui        $v0, %hi(D_800CDB02)
/* C8DC 8000BCDC 8442DB02 */  lh         $v0, %lo(D_800CDB02)($v0)
/* C8E0 8000BCE0 44820000 */  mtc1       $v0, $f0
/* C8E4 8000BCE4 00000000 */  nop
/* C8E8 8000BCE8 46800020 */  cvt.s.w    $f0, $f0
/* C8EC 8000BCEC 46020001 */  sub.s      $f0, $f0, $f2
/* C8F0 8000BCF0 4600008D */  trunc.w.s  $f2, $f0
/* C8F4 8000BCF4 44021000 */  mfc1       $v0, $f2
/* C8F8 8000BCF8 00000000 */  nop
/* C8FC 8000BCFC 00408021 */  addu       $s0, $v0, $zero
/* C900 8000BD00 3C03800D */  lui        $v1, %hi(D_800CDAFE)
/* C904 8000BD04 8463DAFE */  lh         $v1, %lo(D_800CDAFE)($v1)
/* C908 8000BD08 00021400 */  sll        $v0, $v0, 0x10
/* C90C 8000BD0C 00022403 */  sra        $a0, $v0, 0x10
/* C910 8000BD10 10640014 */  beq        $v1, $a0, .L8000BD64
/* C914 8000BD14 3C038001 */   lui       $v1, 0x8001
/* C918 8000BD18 3C02800D */  lui        $v0, %hi(D_800CDB00)
/* C91C 8000BD1C 8442DB00 */  lh         $v0, %lo(D_800CDB00)($v0)
/* C920 8000BD20 00820018 */  mult       $a0, $v0
/* C924 8000BD24 00001012 */  mflo       $v0
/* C928 8000BD28 34630003 */  ori        $v1, $v1, 3
/* C92C 8000BD2C 00000000 */  nop
/* C930 8000BD30 00430018 */  mult       $v0, $v1
/* C934 8000BD34 00003010 */  mfhi       $a2
/* C938 8000BD38 00C22821 */  addu       $a1, $a2, $v0
/* C93C 8000BD3C 00052B83 */  sra        $a1, $a1, 0xe
/* C940 8000BD40 000217C3 */  sra        $v0, $v0, 0x1f
/* C944 8000BD44 00A22823 */  subu       $a1, $a1, $v0
/* C948 8000BD48 00052C00 */  sll        $a1, $a1, 0x10
/* C94C 8000BD4C 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* C950 8000BD50 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* C954 8000BD54 0C0229DC */  jal        func_8008A770
/* C958 8000BD58 00052C03 */   sra       $a1, $a1, 0x10
/* C95C 8000BD5C 3C01800D */  lui        $at, %hi(D_800CDAFE)
/* C960 8000BD60 A430DAFE */  sh         $s0, %lo(D_800CDAFE)($at)
.L8000BD64:
/* C964 8000BD64 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* C968 8000BD68 C422DAF4 */  lwc1       $f2, %lo(D_800CDAF4)($at)
.L8000BD6C:
/* C96C 8000BD6C 44802000 */  mtc1       $zero, $f4
/* C970 8000BD70 00000000 */  nop
/* C974 8000BD74 4604103C */  c.lt.s     $f2, $f4
/* C978 8000BD78 00000000 */  nop
/* C97C 8000BD7C 45000036 */  bc1f       .L8000BE58
/* C980 8000BD80 00000000 */   nop
/* C984 8000BD84 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* C988 8000BD88 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* C98C 8000BD8C 30420008 */  andi       $v0, $v0, 8
/* C990 8000BD90 14400031 */  bnez       $v0, .L8000BE58
/* C994 8000BD94 00000000 */   nop
/* C998 8000BD98 3C01800D */  lui        $at, %hi(D_800CDAF8)
/* C99C 8000BD9C C420DAF8 */  lwc1       $f0, %lo(D_800CDAF8)($at)
/* C9A0 8000BDA0 46020001 */  sub.s      $f0, $f0, $f2
/* C9A4 8000BDA4 3C01800D */  lui        $at, %hi(D_800CDAF8)
/* C9A8 8000BDA8 E420DAF8 */  swc1       $f0, %lo(D_800CDAF8)($at)
/* C9AC 8000BDAC 3C02800D */  lui        $v0, %hi(D_800CDB02)
/* C9B0 8000BDB0 8442DB02 */  lh         $v0, %lo(D_800CDB02)($v0)
/* C9B4 8000BDB4 44821000 */  mtc1       $v0, $f2
/* C9B8 8000BDB8 00000000 */  nop
/* C9BC 8000BDBC 468010A0 */  cvt.s.w    $f2, $f2
/* C9C0 8000BDC0 4600103E */  c.le.s     $f2, $f0
/* C9C4 8000BDC4 00000000 */  nop
/* C9C8 8000BDC8 00000000 */  nop
/* C9CC 8000BDCC 45000005 */  bc1f       .L8000BDE4
/* C9D0 8000BDD0 00401821 */   addu      $v1, $v0, $zero
/* C9D4 8000BDD4 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* C9D8 8000BDD8 E424DAF4 */  swc1       $f4, %lo(D_800CDAF4)($at)
/* C9DC 8000BDDC 08002F7D */  j          .L8000BDF4
/* C9E0 8000BDE0 00608021 */   addu      $s0, $v1, $zero
.L8000BDE4:
/* C9E4 8000BDE4 3C01800D */  lui        $at, %hi(D_800CDAF8)
/* C9E8 8000BDE8 C420DAF8 */  lwc1       $f0, %lo(D_800CDAF8)($at)
/* C9EC 8000BDEC 4600008D */  trunc.w.s  $f2, $f0
/* C9F0 8000BDF0 44101000 */  mfc1       $s0, $f2
.L8000BDF4:
/* C9F4 8000BDF4 3C03800D */  lui        $v1, %hi(D_800CDAFE)
/* C9F8 8000BDF8 8463DAFE */  lh         $v1, %lo(D_800CDAFE)($v1)
/* C9FC 8000BDFC 00101400 */  sll        $v0, $s0, 0x10
/* CA00 8000BE00 00022403 */  sra        $a0, $v0, 0x10
/* CA04 8000BE04 10640014 */  beq        $v1, $a0, .L8000BE58
/* CA08 8000BE08 3C038001 */   lui       $v1, 0x8001
/* CA0C 8000BE0C 3C02800D */  lui        $v0, %hi(D_800CDB00)
/* CA10 8000BE10 8442DB00 */  lh         $v0, %lo(D_800CDB00)($v0)
/* CA14 8000BE14 00820018 */  mult       $a0, $v0
/* CA18 8000BE18 00001012 */  mflo       $v0
/* CA1C 8000BE1C 34630003 */  ori        $v1, $v1, 3
/* CA20 8000BE20 00000000 */  nop
/* CA24 8000BE24 00430018 */  mult       $v0, $v1
/* CA28 8000BE28 00003010 */  mfhi       $a2
/* CA2C 8000BE2C 00C22821 */  addu       $a1, $a2, $v0
/* CA30 8000BE30 00052B83 */  sra        $a1, $a1, 0xe
/* CA34 8000BE34 000217C3 */  sra        $v0, $v0, 0x1f
/* CA38 8000BE38 00A22823 */  subu       $a1, $a1, $v0
/* CA3C 8000BE3C 00052C00 */  sll        $a1, $a1, 0x10
/* CA40 8000BE40 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* CA44 8000BE44 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* CA48 8000BE48 0C0229DC */  jal        func_8008A770
/* CA4C 8000BE4C 00052C03 */   sra       $a1, $a1, 0x10
/* CA50 8000BE50 3C01800D */  lui        $at, %hi(D_800CDAFE)
/* CA54 8000BE54 A430DAFE */  sh         $s0, %lo(D_800CDAFE)($at)
.L8000BE58:
/* CA58 8000BE58 8FBF001C */  lw         $ra, 0x1c($sp)
/* CA5C 8000BE5C 8FB00018 */  lw         $s0, 0x18($sp)
/* CA60 8000BE60 D7B40020 */  ldc1       $f20, 0x20($sp)
/* CA64 8000BE64 03E00008 */  jr         $ra
/* CA68 8000BE68 27BD0028 */   addiu     $sp, $sp, 0x28
