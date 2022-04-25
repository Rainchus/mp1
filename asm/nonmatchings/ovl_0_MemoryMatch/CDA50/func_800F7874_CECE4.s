	.set noat
	.set noreorder

glabel func_800F7874_CECE4
/* CECE4 800F7874 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CECE8 800F7878 AFBF0014 */  sw         $ra, 0x14($sp)
/* CECEC 800F787C AFB00010 */  sw         $s0, 0x10($sp)
/* CECF0 800F7880 0C03DE5B */  jal        func_800F796C_CEDDC
/* CECF4 800F7884 00808021 */   addu      $s0, $a0, $zero
/* CECF8 800F7888 0C03E45E */  jal        func_800F9178_D05E8
/* CECFC 800F788C 00000000 */   nop
/* CED00 800F7890 3C038010 */  lui        $v1, %hi(D_800FD878)
/* CED04 800F7894 8463D878 */  lh         $v1, %lo(D_800FD878)($v1)
/* CED08 800F7898 10600005 */  beqz       $v1, .L800F78B0
/* CED0C 800F789C 24020001 */   addiu     $v0, $zero, 1
/* CED10 800F78A0 10620017 */  beq        $v1, $v0, .L800F7900
/* CED14 800F78A4 00000000 */   nop
/* CED18 800F78A8 0803DE47 */  j          .L800F791C
/* CED1C 800F78AC 00000000 */   nop
.L800F78B0:
/* CED20 800F78B0 0C01D733 */  jal        func_80075CCC
/* CED24 800F78B4 24040002 */   addiu     $a0, $zero, 2
/* CED28 800F78B8 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CED2C 800F78BC 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CED30 800F78C0 28420002 */  slti       $v0, $v0, 2
/* CED34 800F78C4 10400020 */  beqz       $v0, .L800F7948
/* CED38 800F78C8 00000000 */   nop
/* CED3C 800F78CC 3C028010 */  lui        $v0, %hi(D_800FE30C)
/* CED40 800F78D0 8442E30C */  lh         $v0, %lo(D_800FE30C)($v0)
/* CED44 800F78D4 00021840 */  sll        $v1, $v0, 1
/* CED48 800F78D8 00621821 */  addu       $v1, $v1, $v0
/* CED4C 800F78DC 00031900 */  sll        $v1, $v1, 4
/* CED50 800F78E0 3C02800F */  lui        $v0, %hi(D_800F32BA)
/* CED54 800F78E4 00431021 */  addu       $v0, $v0, $v1
/* CED58 800F78E8 944232BA */  lhu        $v0, %lo(D_800F32BA)($v0)
/* CED5C 800F78EC 24420002 */  addiu      $v0, $v0, 2
/* CED60 800F78F0 3C01800F */  lui        $at, %hi(D_800F32BA)
/* CED64 800F78F4 00230821 */  addu       $at, $at, $v1
/* CED68 800F78F8 0803DE52 */  j          .L800F7948
/* CED6C 800F78FC A42232BA */   sh        $v0, %lo(D_800F32BA)($at)
.L800F7900:
/* CED70 800F7900 0C01D7F8 */  jal        func_80075FE0
/* CED74 800F7904 00000000 */   nop
/* CED78 800F7908 24030002 */  addiu      $v1, $zero, 2
/* CED7C 800F790C 1043000E */  beq        $v0, $v1, .L800F7948
/* CED80 800F7910 00000000 */   nop
/* CED84 800F7914 0803DE57 */  j          .L800F795C
/* CED88 800F7918 00000000 */   nop
.L800F791C:
/* CED8C 800F791C 0C01D85D */  jal        func_80076174
/* CED90 800F7920 00000000 */   nop
/* CED94 800F7924 1440000D */  bnez       $v0, .L800F795C
/* CED98 800F7928 00002021 */   addu      $a0, $zero, $zero
/* CED9C 800F792C 0C01C9AB */  jal        func_800726AC
/* CEDA0 800F7930 24050014 */   addiu     $a1, $zero, 0x14
/* CEDA4 800F7934 0C0180E6 */  jal        func_80060398
/* CEDA8 800F7938 24040028 */   addiu     $a0, $zero, 0x28
/* CEDAC 800F793C 3C02800F */  lui        $v0, %hi(func_800F7318_CE788)
/* CEDB0 800F7940 24427318 */  addiu      $v0, $v0, %lo(func_800F7318_CE788)
/* CEDB4 800F7944 AE020014 */  sw         $v0, 0x14($s0)
.L800F7948:
/* CEDB8 800F7948 3C028010 */  lui        $v0, %hi(D_800FD878)
/* CEDBC 800F794C 9442D878 */  lhu        $v0, %lo(D_800FD878)($v0)
/* CEDC0 800F7950 24420001 */  addiu      $v0, $v0, 1
/* CEDC4 800F7954 3C018010 */  lui        $at, %hi(D_800FD878)
/* CEDC8 800F7958 A422D878 */  sh         $v0, %lo(D_800FD878)($at)
.L800F795C:
/* CEDCC 800F795C 8FBF0014 */  lw         $ra, 0x14($sp)
/* CEDD0 800F7960 8FB00010 */  lw         $s0, 0x10($sp)
/* CEDD4 800F7964 03E00008 */  jr         $ra
/* CEDD8 800F7968 27BD0018 */   addiu     $sp, $sp, 0x18
