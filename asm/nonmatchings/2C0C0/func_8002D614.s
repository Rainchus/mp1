	.set noat
	.set noreorder

glabel func_8002D614
/* 2E214 8002D614 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 2E218 8002D618 AFBF0074 */  sw         $ra, 0x74($sp)
/* 2E21C 8002D61C AFBE0070 */  sw         $fp, 0x70($sp)
/* 2E220 8002D620 AFB7006C */  sw         $s7, 0x6c($sp)
/* 2E224 8002D624 AFB60068 */  sw         $s6, 0x68($sp)
/* 2E228 8002D628 AFB50064 */  sw         $s5, 0x64($sp)
/* 2E22C 8002D62C AFB40060 */  sw         $s4, 0x60($sp)
/* 2E230 8002D630 AFB3005C */  sw         $s3, 0x5c($sp)
/* 2E234 8002D634 AFB20058 */  sw         $s2, 0x58($sp)
/* 2E238 8002D638 AFB10054 */  sw         $s1, 0x54($sp)
/* 2E23C 8002D63C AFB00050 */  sw         $s0, 0x50($sp)
/* 2E240 8002D640 AFA50024 */  sw         $a1, 0x24($sp)
/* 2E244 8002D644 00C08021 */  addu       $s0, $a2, $zero
/* 2E248 8002D648 A7A4001E */  sh         $a0, 0x1e($sp)
/* 2E24C 8002D64C 00002021 */  addu       $a0, $zero, $zero
/* 2E250 8002D650 00002821 */  addu       $a1, $zero, $zero
/* 2E254 8002D654 0C01848A */  jal        func_80061228
/* 2E258 8002D658 240600E6 */   addiu     $a2, $zero, 0xe6
/* 2E25C 8002D65C A7A2002E */  sh         $v0, 0x2e($sp)
/* 2E260 8002D660 3C17800F */  lui        $s7, %hi(D_800F37DC)
/* 2E264 8002D664 8EF737DC */  lw         $s7, %lo(D_800F37DC)($s7)
/* 2E268 8002D668 12000006 */  beqz       $s0, .L8002D684
/* 2E26C 8002D66C 26E20008 */   addiu     $v0, $s7, 8
/* 2E270 8002D670 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E274 8002D674 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E278 8002D678 3C02DE00 */  lui        $v0, 0xde00
/* 2E27C 8002D67C AEE20000 */  sw         $v0, ($s7)
/* 2E280 8002D680 AEF00004 */  sw         $s0, 4($s7)
.L8002D684:
/* 2E284 8002D684 3C02800F */  lui        $v0, %hi(D_800EE754)
/* 2E288 8002D688 9042E754 */  lbu        $v0, %lo(D_800EE754)($v0)
/* 2E28C 8002D68C 0002F02B */  sltu       $fp, $zero, $v0
/* 2E290 8002D690 97A9001E */  lhu        $t1, 0x1e($sp)
/* 2E294 8002D694 00092400 */  sll        $a0, $t1, 0x10
/* 2E298 8002D698 0C008C36 */  jal        func_800230D8
/* 2E29C 8002D69C 00042403 */   sra       $a0, $a0, 0x10
/* 2E2A0 8002D6A0 3C02800F */  lui        $v0, %hi(D_800ECB28)
/* 2E2A4 8002D6A4 8C42CB28 */  lw         $v0, %lo(D_800ECB28)($v0)
/* 2E2A8 8002D6A8 90490000 */  lbu        $t1, ($v0)
/* 2E2AC 8002D6AC A3A9003F */  sb         $t1, 0x3f($sp)
/* 2E2B0 8002D6B0 90490001 */  lbu        $t1, 1($v0)
/* 2E2B4 8002D6B4 A3A90047 */  sb         $t1, 0x47($sp)
/* 2E2B8 8002D6B8 90420002 */  lbu        $v0, 2($v0)
/* 2E2BC 8002D6BC A3A2004F */  sb         $v0, 0x4f($sp)
/* 2E2C0 8002D6C0 0000B021 */  addu       $s6, $zero, $zero
/* 2E2C4 8002D6C4 A7A00036 */  sh         $zero, 0x36($sp)
/* 2E2C8 8002D6C8 00161400 */  sll        $v0, $s6, 0x10
.L8002D6CC:
/* 2E2CC 8002D6CC 000213C3 */  sra        $v0, $v0, 0xf
/* 2E2D0 8002D6D0 3C09800F */  lui        $t1, %hi(D_800F6538)
/* 2E2D4 8002D6D4 25296538 */  addiu      $t1, $t1, %lo(D_800F6538)
/* 2E2D8 8002D6D8 00491021 */  addu       $v0, $v0, $t1
/* 2E2DC 8002D6DC 84420000 */  lh         $v0, ($v0)
/* 2E2E0 8002D6E0 24090002 */  addiu      $t1, $zero, 2
/* 2E2E4 8002D6E4 504900FE */  beql       $v0, $t1, .L8002DAE0
/* 2E2E8 8002D6E8 26C20001 */   addiu     $v0, $s6, 1
/* 2E2EC 8002D6EC 13C00017 */  beqz       $fp, .L8002D74C
/* 2E2F0 8002D6F0 02E02021 */   addu      $a0, $s7, $zero
/* 2E2F4 8002D6F4 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 2E2F8 8002D6F8 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 2E2FC 8002D6FC 24620008 */  addiu      $v0, $v1, 8
/* 2E300 8002D700 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E304 8002D704 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E308 8002D708 3C02E900 */  lui        $v0, 0xe900
/* 2E30C 8002D70C AC620000 */  sw         $v0, ($v1)
/* 2E310 8002D710 AC600004 */  sw         $zero, 4($v1)
/* 2E314 8002D714 24620010 */  addiu      $v0, $v1, 0x10
/* 2E318 8002D718 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E31C 8002D71C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E320 8002D720 3C02DF00 */  lui        $v0, 0xdf00
/* 2E324 8002D724 AC620008 */  sw         $v0, 8($v1)
/* 2E328 8002D728 AC60000C */  sw         $zero, 0xc($v1)
/* 2E32C 8002D72C 3C05800F */  lui        $a1, %hi(D_800EE754)
/* 2E330 8002D730 90A5E754 */  lbu        $a1, %lo(D_800EE754)($a1)
/* 2E334 8002D734 AFA00010 */  sw         $zero, 0x10($sp)
/* 2E338 8002D738 00003021 */  addu       $a2, $zero, $zero
/* 2E33C 8002D73C 0C006AB1 */  jal        func_8001AAC4
/* 2E340 8002D740 00003821 */   addu      $a3, $zero, $zero
/* 2E344 8002D744 3C17800F */  lui        $s7, %hi(D_800F37DC)
/* 2E348 8002D748 8EF737DC */  lw         $s7, %lo(D_800F37DC)($s7)
.L8002D74C:
/* 2E34C 8002D74C 97A9001E */  lhu        $t1, 0x1e($sp)
/* 2E350 8002D750 00092400 */  sll        $a0, $t1, 0x10
/* 2E354 8002D754 3C05800F */  lui        $a1, %hi(D_800F37DC)
/* 2E358 8002D758 24A537DC */  addiu      $a1, $a1, %lo(D_800F37DC)
/* 2E35C 8002D75C 0C0075F7 */  jal        func_8001D7DC
/* 2E360 8002D760 00042403 */   sra       $a0, $a0, 0x10
/* 2E364 8002D764 97A90036 */  lhu        $t1, 0x36($sp)
/* 2E368 8002D768 25290001 */  addiu      $t1, $t1, 1
/* 2E36C 8002D76C A7A90036 */  sh         $t1, 0x36($sp)
/* 2E370 8002D770 241E0001 */  addiu      $fp, $zero, 1
/* 2E374 8002D774 3C01800F */  lui        $at, %hi(D_800EE754)
/* 2E378 8002D778 A036E754 */  sb         $s6, %lo(D_800EE754)($at)
/* 2E37C 8002D77C 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2E380 8002D780 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 2E384 8002D784 24820008 */  addiu      $v0, $a0, 8
/* 2E388 8002D788 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E38C 8002D78C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E390 8002D790 3C02DE00 */  lui        $v0, 0xde00
/* 2E394 8002D794 AC820000 */  sw         $v0, ($a0)
/* 2E398 8002D798 8FA90024 */  lw         $t1, 0x24($sp)
/* 2E39C 8002D79C AC890004 */  sw         $t1, 4($a0)
/* 2E3A0 8002D7A0 24020000 */  addiu      $v0, $zero, 0
/* 2E3A4 8002D7A4 2403FFFF */  addiu      $v1, $zero, -1
/* 2E3A8 8002D7A8 3C01800F */  lui        $at, %hi(D_800F0A60)
/* 2E3AC 8002D7AC AC220A60 */  sw         $v0, %lo(D_800F0A60)($at)
/* 2E3B0 8002D7B0 3C01800F */  lui        $at, %hi(D_800F0A64)
/* 2E3B4 8002D7B4 AC230A64 */  sw         $v1, %lo(D_800F0A64)($at)
/* 2E3B8 8002D7B8 3C01800F */  lui        $at, %hi(D_800F37B0)
/* 2E3BC 8002D7BC AC2237B0 */  sw         $v0, %lo(D_800F37B0)($at)
/* 2E3C0 8002D7C0 3C01800F */  lui        $at, %hi(D_800F37B4)
/* 2E3C4 8002D7C4 AC2337B4 */  sw         $v1, %lo(D_800F37B4)($at)
/* 2E3C8 8002D7C8 2402FFFF */  addiu      $v0, $zero, -1
/* 2E3CC 8002D7CC 3C01800F */  lui        $at, %hi(D_800F375C)
/* 2E3D0 8002D7D0 AC22375C */  sw         $v0, %lo(D_800F375C)($at)
/* 2E3D4 8002D7D4 3C01800F */  lui        $at, %hi(D_800F328C)
/* 2E3D8 8002D7D8 AC20328C */  sw         $zero, %lo(D_800F328C)($at)
/* 2E3DC 8002D7DC 24820010 */  addiu      $v0, $a0, 0x10
/* 2E3E0 8002D7E0 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E3E4 8002D7E4 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E3E8 8002D7E8 3C02DB02 */  lui        $v0, 0xdb02
/* 2E3EC 8002D7EC AC820008 */  sw         $v0, 8($a0)
/* 2E3F0 8002D7F0 3C07800F */  lui        $a3, %hi(D_800EE9A0)
/* 2E3F4 8002D7F4 24E7E9A0 */  addiu      $a3, $a3, %lo(D_800EE9A0)
/* 2E3F8 8002D7F8 3C03800F */  lui        $v1, %hi(D_800EE9A0)
/* 2E3FC 8002D7FC 8463E9A0 */  lh         $v1, %lo(D_800EE9A0)($v1)
/* 2E400 8002D800 00031040 */  sll        $v0, $v1, 1
/* 2E404 8002D804 00431021 */  addu       $v0, $v0, $v1
/* 2E408 8002D808 000210C0 */  sll        $v0, $v0, 3
/* 2E40C 8002D80C AC82000C */  sw         $v0, 0xc($a0)
/* 2E410 8002D810 3C02800F */  lui        $v0, %hi(D_800EE9A0)
/* 2E414 8002D814 8442E9A0 */  lh         $v0, %lo(D_800EE9A0)($v0)
/* 2E418 8002D818 24420001 */  addiu      $v0, $v0, 1
/* 2E41C 8002D81C 03C2102A */  slt        $v0, $fp, $v0
/* 2E420 8002D820 1040001F */  beqz       $v0, .L8002D8A0
/* 2E424 8002D824 24050001 */   addiu     $a1, $zero, 1
/* 2E428 8002D828 3C06800F */  lui        $a2, %hi(D_800ECB28)
/* 2E42C 8002D82C 8CC6CB28 */  lw         $a2, %lo(D_800ECB28)($a2)
.L8002D830:
/* 2E430 8002D830 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2E434 8002D834 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 2E438 8002D838 24820008 */  addiu      $v0, $a0, 8
/* 2E43C 8002D83C 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E440 8002D840 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E444 8002D844 00051C00 */  sll        $v1, $a1, 0x10
/* 2E448 8002D848 00031C03 */  sra        $v1, $v1, 0x10
/* 2E44C 8002D84C 00031040 */  sll        $v0, $v1, 1
/* 2E450 8002D850 00431021 */  addu       $v0, $v0, $v1
/* 2E454 8002D854 24420003 */  addiu      $v0, $v0, 3
/* 2E458 8002D858 304200FF */  andi       $v0, $v0, 0xff
/* 2E45C 8002D85C 00021200 */  sll        $v0, $v0, 8
/* 2E460 8002D860 3C09DC08 */  lui        $t1, 0xdc08
/* 2E464 8002D864 3529000A */  ori        $t1, $t1, 0xa
/* 2E468 8002D868 00491025 */  or         $v0, $v0, $t1
/* 2E46C 8002D86C AC820000 */  sw         $v0, ($a0)
/* 2E470 8002D870 00031900 */  sll        $v1, $v1, 4
/* 2E474 8002D874 00661821 */  addu       $v1, $v1, $a2
/* 2E478 8002D878 AC830004 */  sw         $v1, 4($a0)
/* 2E47C 8002D87C 24A30001 */  addiu      $v1, $a1, 1
/* 2E480 8002D880 00602821 */  addu       $a1, $v1, $zero
/* 2E484 8002D884 00031C00 */  sll        $v1, $v1, 0x10
/* 2E488 8002D888 00031C03 */  sra        $v1, $v1, 0x10
/* 2E48C 8002D88C 84E20000 */  lh         $v0, ($a3)
/* 2E490 8002D890 24420001 */  addiu      $v0, $v0, 1
/* 2E494 8002D894 0062182A */  slt        $v1, $v1, $v0
/* 2E498 8002D898 1460FFE5 */  bnez       $v1, .L8002D830
/* 2E49C 8002D89C 00000000 */   nop
.L8002D8A0:
/* 2E4A0 8002D8A0 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2E4A4 8002D8A4 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 2E4A8 8002D8A8 24820008 */  addiu      $v0, $a0, 8
/* 2E4AC 8002D8AC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E4B0 8002D8B0 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E4B4 8002D8B4 3C03800F */  lui        $v1, %hi(D_800EE9A0)
/* 2E4B8 8002D8B8 8463E9A0 */  lh         $v1, %lo(D_800EE9A0)($v1)
/* 2E4BC 8002D8BC 24630001 */  addiu      $v1, $v1, 1
/* 2E4C0 8002D8C0 00031040 */  sll        $v0, $v1, 1
/* 2E4C4 8002D8C4 00431021 */  addu       $v0, $v0, $v1
/* 2E4C8 8002D8C8 24420003 */  addiu      $v0, $v0, 3
/* 2E4CC 8002D8CC 304200FF */  andi       $v0, $v0, 0xff
/* 2E4D0 8002D8D0 00021200 */  sll        $v0, $v0, 8
/* 2E4D4 8002D8D4 3C09DC08 */  lui        $t1, 0xdc08
/* 2E4D8 8002D8D8 3529000A */  ori        $t1, $t1, 0xa
/* 2E4DC 8002D8DC 00491025 */  or         $v0, $v0, $t1
/* 2E4E0 8002D8E0 AC820000 */  sw         $v0, ($a0)
/* 2E4E4 8002D8E4 3C02800F */  lui        $v0, %hi(D_800ECB28)
/* 2E4E8 8002D8E8 8C42CB28 */  lw         $v0, %lo(D_800ECB28)($v0)
/* 2E4EC 8002D8EC AC820004 */  sw         $v0, 4($a0)
/* 2E4F0 8002D8F0 240200FF */  addiu      $v0, $zero, 0xff
/* 2E4F4 8002D8F4 3C01800F */  lui        $at, %hi(D_800ED6D8)
/* 2E4F8 8002D8F8 A022D6D8 */  sb         $v0, %lo(D_800ED6D8)($at)
/* 2E4FC 8002D8FC 3C01800F */  lui        $at, %hi(D_800F3962)
/* 2E500 8002D900 A0223962 */  sb         $v0, %lo(D_800F3962)($at)
/* 2E504 8002D904 3C01800F */  lui        $at, %hi(D_800F3710)
/* 2E508 8002D908 A0223710 */  sb         $v0, %lo(D_800F3710)($at)
/* 2E50C 8002D90C 0C00C6ED */  jal        func_80031BB4
/* 2E510 8002D910 24150002 */   addiu     $s5, $zero, 2
/* 2E514 8002D914 00161C00 */  sll        $v1, $s6, 0x10
/* 2E518 8002D918 00602021 */  addu       $a0, $v1, $zero
/* 2E51C 8002D91C 00031C03 */  sra        $v1, $v1, 0x10
/* 2E520 8002D920 00031080 */  sll        $v0, $v1, 2
/* 2E524 8002D924 3C09800F */  lui        $t1, %hi(D_800ED0D8)
/* 2E528 8002D928 2529D0D8 */  addiu      $t1, $t1, %lo(D_800ED0D8)
/* 2E52C 8002D92C 00491021 */  addu       $v0, $v0, $t1
/* 2E530 8002D930 8C420000 */  lw         $v0, ($v0)
/* 2E534 8002D934 90450057 */  lbu        $a1, 0x57($v0)
/* 2E538 8002D938 00031840 */  sll        $v1, $v1, 1
/* 2E53C 8002D93C 3C09800F */  lui        $t1, %hi(D_800F6538)
/* 2E540 8002D940 25296538 */  addiu      $t1, $t1, %lo(D_800F6538)
/* 2E544 8002D944 00691821 */  addu       $v1, $v1, $t1
/* 2E548 8002D948 84620000 */  lh         $v0, ($v1)
/* 2E54C 8002D94C 24090002 */  addiu      $t1, $zero, 2
/* 2E550 8002D950 0122102A */  slt        $v0, $t1, $v0
/* 2E554 8002D954 10400062 */  beqz       $v0, .L8002DAE0
/* 2E558 8002D958 26C20001 */   addiu     $v0, $s6, 1
.L8002D95C:
/* 2E55C 8002D95C 0080A021 */  addu       $s4, $a0, $zero
/* 2E560 8002D960 00149C03 */  sra        $s3, $s4, 0x10
/* 2E564 8002D964 00139080 */  sll        $s2, $s3, 2
/* 2E568 8002D968 3C09800F */  lui        $t1, %hi(D_800ED0D8)
/* 2E56C 8002D96C 2529D0D8 */  addiu      $t1, $t1, %lo(D_800ED0D8)
/* 2E570 8002D970 02499021 */  addu       $s2, $s2, $t1
/* 2E574 8002D974 00A01021 */  addu       $v0, $a1, $zero
/* 2E578 8002D978 00028040 */  sll        $s0, $v0, 1
/* 2E57C 8002D97C 02028021 */  addu       $s0, $s0, $v0
/* 2E580 8002D980 001080C0 */  sll        $s0, $s0, 3
/* 2E584 8002D984 02028023 */  subu       $s0, $s0, $v0
/* 2E588 8002D988 00108080 */  sll        $s0, $s0, 2
/* 2E58C 8002D98C 8E420000 */  lw         $v0, ($s2)
/* 2E590 8002D990 02028021 */  addu       $s0, $s0, $v0
/* 2E594 8002D994 93A2003F */  lbu        $v0, 0x3f($sp)
/* 2E598 8002D998 3C01800F */  lui        $at, %hi(D_800F3760)
/* 2E59C 8002D99C A4223760 */  sh         $v0, %lo(D_800F3760)($at)
/* 2E5A0 8002D9A0 93A20047 */  lbu        $v0, 0x47($sp)
/* 2E5A4 8002D9A4 3C01800F */  lui        $at, %hi(D_800F37D0)
/* 2E5A8 8002D9A8 A42237D0 */  sh         $v0, %lo(D_800F37D0)($at)
/* 2E5AC 8002D9AC 93A2004F */  lbu        $v0, 0x4f($sp)
/* 2E5B0 8002D9B0 3C01800F */  lui        $at, %hi(D_800EDEB2)
/* 2E5B4 8002D9B4 A422DEB2 */  sh         $v0, %lo(D_800EDEB2)($at)
/* 2E5B8 8002D9B8 3C01800F */  lui        $at, %hi(D_800EDEC8)
/* 2E5BC 8002D9BC A420DEC8 */  sh         $zero, %lo(D_800EDEC8)($at)
/* 2E5C0 8002D9C0 3C01800F */  lui        $at, %hi(D_800EE732)
/* 2E5C4 8002D9C4 A420E732 */  sh         $zero, %lo(D_800EE732)($at)
/* 2E5C8 8002D9C8 3C01800F */  lui        $at, %hi(D_800EE322)
/* 2E5CC 8002D9CC A420E322 */  sh         $zero, %lo(D_800EE322)($at)
/* 2E5D0 8002D9D0 3C05800F */  lui        $a1, %hi(D_800EE9A0)
/* 2E5D4 8002D9D4 94A5E9A0 */  lhu        $a1, %lo(D_800EE9A0)($a1)
/* 2E5D8 8002D9D8 24A50001 */  addiu      $a1, $a1, 1
/* 2E5DC 8002D9DC 00052C00 */  sll        $a1, $a1, 0x10
/* 2E5E0 8002D9E0 3C03800F */  lui        $v1, %hi(D_800F3760)
/* 2E5E4 8002D9E4 94633760 */  lhu        $v1, %lo(D_800F3760)($v1)
/* 2E5E8 8002D9E8 00031E00 */  sll        $v1, $v1, 0x18
/* 2E5EC 8002D9EC 3C02800F */  lui        $v0, %hi(D_800F37D0)
/* 2E5F0 8002D9F0 944237D0 */  lhu        $v0, %lo(D_800F37D0)($v0)
/* 2E5F4 8002D9F4 00021400 */  sll        $v0, $v0, 0x10
/* 2E5F8 8002D9F8 00621821 */  addu       $v1, $v1, $v0
/* 2E5FC 8002D9FC 3C06800F */  lui        $a2, %hi(D_800EDEB2)
/* 2E600 8002DA00 94C6DEB2 */  lhu        $a2, %lo(D_800EDEB2)($a2)
/* 2E604 8002DA04 00063200 */  sll        $a2, $a2, 8
/* 2E608 8002DA08 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2E60C 8002DA0C 248437DC */  addiu      $a0, $a0, %lo(D_800F37DC)
/* 2E610 8002DA10 00052C03 */  sra        $a1, $a1, 0x10
/* 2E614 8002DA14 0C00CFEC */  jal        func_80033FB0
/* 2E618 8002DA18 00663021 */   addu      $a2, $v1, $a2
/* 2E61C 8002DA1C 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2E620 8002DA20 248437DC */  addiu      $a0, $a0, %lo(D_800F37DC)
/* 2E624 8002DA24 24050001 */  addiu      $a1, $zero, 1
/* 2E628 8002DA28 0C00CFEC */  jal        func_80033FB0
/* 2E62C 8002DA2C 00003021 */   addu      $a2, $zero, $zero
/* 2E630 8002DA30 9604004E */  lhu        $a0, 0x4e($s0)
/* 2E634 8002DA34 0C00C634 */  jal        func_800318D0
/* 2E638 8002DA38 00000000 */   nop
/* 2E63C 8002DA3C 3C11800F */  lui        $s1, %hi(D_800F37DC)
/* 2E640 8002DA40 8E3137DC */  lw         $s1, %lo(D_800F37DC)($s1)
/* 2E644 8002DA44 26220008 */  addiu      $v0, $s1, 8
/* 2E648 8002DA48 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E64C 8002DA4C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E650 8002DA50 3C02DA38 */  lui        $v0, 0xda38
/* 2E654 8002DA54 34420003 */  ori        $v0, $v0, 3
/* 2E658 8002DA58 AE220000 */  sw         $v0, ($s1)
/* 2E65C 8002DA5C 0C02248C */  jal        func_80089230
/* 2E660 8002DA60 8E040044 */   lw        $a0, 0x44($s0)
/* 2E664 8002DA64 AE220004 */  sw         $v0, 4($s1)
/* 2E668 8002DA68 8E020050 */  lw         $v0, 0x50($s0)
/* 2E66C 8002DA6C 3C01800F */  lui        $at, %hi(D_800ECB14)
/* 2E670 8002DA70 AC22CB14 */  sw         $v0, %lo(D_800ECB14)($at)
/* 2E674 8002DA74 8E040048 */  lw         $a0, 0x48($s0)
/* 2E678 8002DA78 0C00B37B */  jal        func_8002CDEC
/* 2E67C 8002DA7C 86050054 */   lh        $a1, 0x54($s0)
/* 2E680 8002DA80 92050057 */  lbu        $a1, 0x57($s0)
/* 2E684 8002DA84 00A01821 */  addu       $v1, $a1, $zero
/* 2E688 8002DA88 8E440000 */  lw         $a0, ($s2)
/* 2E68C 8002DA8C 00031040 */  sll        $v0, $v1, 1
/* 2E690 8002DA90 00431021 */  addu       $v0, $v0, $v1
/* 2E694 8002DA94 000210C0 */  sll        $v0, $v0, 3
/* 2E698 8002DA98 00431023 */  subu       $v0, $v0, $v1
/* 2E69C 8002DA9C 00021080 */  sll        $v0, $v0, 2
/* 2E6A0 8002DAA0 00441021 */  addu       $v0, $v0, $a0
/* 2E6A4 8002DAA4 90420057 */  lbu        $v0, 0x57($v0)
/* 2E6A8 8002DAA8 1040000C */  beqz       $v0, .L8002DADC
/* 2E6AC 8002DAAC 26A20001 */   addiu     $v0, $s5, 1
/* 2E6B0 8002DAB0 0040A821 */  addu       $s5, $v0, $zero
/* 2E6B4 8002DAB4 00131840 */  sll        $v1, $s3, 1
/* 2E6B8 8002DAB8 3C09800F */  lui        $t1, %hi(D_800F6538)
/* 2E6BC 8002DABC 25296538 */  addiu      $t1, $t1, %lo(D_800F6538)
/* 2E6C0 8002DAC0 00691821 */  addu       $v1, $v1, $t1
/* 2E6C4 8002DAC4 00021400 */  sll        $v0, $v0, 0x10
/* 2E6C8 8002DAC8 00021403 */  sra        $v0, $v0, 0x10
/* 2E6CC 8002DACC 84630000 */  lh         $v1, ($v1)
/* 2E6D0 8002DAD0 0043102A */  slt        $v0, $v0, $v1
/* 2E6D4 8002DAD4 1440FFA1 */  bnez       $v0, .L8002D95C
/* 2E6D8 8002DAD8 02802021 */   addu      $a0, $s4, $zero
.L8002DADC:
/* 2E6DC 8002DADC 26C20001 */  addiu      $v0, $s6, 1
.L8002DAE0:
/* 2E6E0 8002DAE0 0040B021 */  addu       $s6, $v0, $zero
/* 2E6E4 8002DAE4 00021400 */  sll        $v0, $v0, 0x10
/* 2E6E8 8002DAE8 00021403 */  sra        $v0, $v0, 0x10
/* 2E6EC 8002DAEC 28420008 */  slti       $v0, $v0, 8
/* 2E6F0 8002DAF0 1440FEF6 */  bnez       $v0, .L8002D6CC
/* 2E6F4 8002DAF4 00161400 */   sll       $v0, $s6, 0x10
/* 2E6F8 8002DAF8 97A90036 */  lhu        $t1, 0x36($sp)
/* 2E6FC 8002DAFC 00091400 */  sll        $v0, $t1, 0x10
/* 2E700 8002DB00 1440004F */  bnez       $v0, .L8002DC40
/* 2E704 8002DB04 00000000 */   nop
/* 2E708 8002DB08 3C05800F */  lui        $a1, %hi(D_800F37DC)
/* 2E70C 8002DB0C 8CA537DC */  lw         $a1, %lo(D_800F37DC)($a1)
/* 2E710 8002DB10 24A20008 */  addiu      $v0, $a1, 8
/* 2E714 8002DB14 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E718 8002DB18 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E71C 8002DB1C 3C02DE00 */  lui        $v0, 0xde00
/* 2E720 8002DB20 ACA20000 */  sw         $v0, ($a1)
/* 2E724 8002DB24 8FA90024 */  lw         $t1, 0x24($sp)
/* 2E728 8002DB28 ACA90004 */  sw         $t1, 4($a1)
/* 2E72C 8002DB2C 24A20010 */  addiu      $v0, $a1, 0x10
/* 2E730 8002DB30 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E734 8002DB34 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E738 8002DB38 3C02DB02 */  lui        $v0, 0xdb02
/* 2E73C 8002DB3C ACA20008 */  sw         $v0, 8($a1)
/* 2E740 8002DB40 3C04800F */  lui        $a0, %hi(D_800EE9A0)
/* 2E744 8002DB44 2484E9A0 */  addiu      $a0, $a0, %lo(D_800EE9A0)
/* 2E748 8002DB48 00803821 */  addu       $a3, $a0, $zero
/* 2E74C 8002DB4C 84830000 */  lh         $v1, ($a0)
/* 2E750 8002DB50 00031040 */  sll        $v0, $v1, 1
/* 2E754 8002DB54 00431021 */  addu       $v0, $v0, $v1
/* 2E758 8002DB58 000210C0 */  sll        $v0, $v0, 3
/* 2E75C 8002DB5C ACA2000C */  sw         $v0, 0xc($a1)
/* 2E760 8002DB60 24030001 */  addiu      $v1, $zero, 1
/* 2E764 8002DB64 84820000 */  lh         $v0, ($a0)
/* 2E768 8002DB68 24420001 */  addiu      $v0, $v0, 1
/* 2E76C 8002DB6C 0062182A */  slt        $v1, $v1, $v0
/* 2E770 8002DB70 1060001F */  beqz       $v1, .L8002DBF0
/* 2E774 8002DB74 24050001 */   addiu     $a1, $zero, 1
/* 2E778 8002DB78 3C08DC08 */  lui        $t0, 0xdc08
/* 2E77C 8002DB7C 3508000A */  ori        $t0, $t0, 0xa
/* 2E780 8002DB80 3C06800F */  lui        $a2, %hi(D_800ECB28)
/* 2E784 8002DB84 8CC6CB28 */  lw         $a2, %lo(D_800ECB28)($a2)
.L8002DB88:
/* 2E788 8002DB88 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2E78C 8002DB8C 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 2E790 8002DB90 24820008 */  addiu      $v0, $a0, 8
/* 2E794 8002DB94 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E798 8002DB98 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E79C 8002DB9C 00051C00 */  sll        $v1, $a1, 0x10
/* 2E7A0 8002DBA0 00031C03 */  sra        $v1, $v1, 0x10
/* 2E7A4 8002DBA4 00031040 */  sll        $v0, $v1, 1
/* 2E7A8 8002DBA8 00431021 */  addu       $v0, $v0, $v1
/* 2E7AC 8002DBAC 24420003 */  addiu      $v0, $v0, 3
/* 2E7B0 8002DBB0 304200FF */  andi       $v0, $v0, 0xff
/* 2E7B4 8002DBB4 00021200 */  sll        $v0, $v0, 8
/* 2E7B8 8002DBB8 00481025 */  or         $v0, $v0, $t0
/* 2E7BC 8002DBBC AC820000 */  sw         $v0, ($a0)
/* 2E7C0 8002DBC0 00031900 */  sll        $v1, $v1, 4
/* 2E7C4 8002DBC4 00661821 */  addu       $v1, $v1, $a2
/* 2E7C8 8002DBC8 AC830004 */  sw         $v1, 4($a0)
/* 2E7CC 8002DBCC 24A30001 */  addiu      $v1, $a1, 1
/* 2E7D0 8002DBD0 00602821 */  addu       $a1, $v1, $zero
/* 2E7D4 8002DBD4 00031C00 */  sll        $v1, $v1, 0x10
/* 2E7D8 8002DBD8 00031C03 */  sra        $v1, $v1, 0x10
/* 2E7DC 8002DBDC 84E20000 */  lh         $v0, ($a3)
/* 2E7E0 8002DBE0 24420001 */  addiu      $v0, $v0, 1
/* 2E7E4 8002DBE4 0062182A */  slt        $v1, $v1, $v0
/* 2E7E8 8002DBE8 1460FFE7 */  bnez       $v1, .L8002DB88
/* 2E7EC 8002DBEC 00000000 */   nop
.L8002DBF0:
/* 2E7F0 8002DBF0 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2E7F4 8002DBF4 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 2E7F8 8002DBF8 24820008 */  addiu      $v0, $a0, 8
/* 2E7FC 8002DBFC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2E800 8002DC00 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2E804 8002DC04 3C03800F */  lui        $v1, %hi(D_800EE9A0)
/* 2E808 8002DC08 8463E9A0 */  lh         $v1, %lo(D_800EE9A0)($v1)
/* 2E80C 8002DC0C 24630001 */  addiu      $v1, $v1, 1
/* 2E810 8002DC10 00031040 */  sll        $v0, $v1, 1
/* 2E814 8002DC14 00431021 */  addu       $v0, $v0, $v1
/* 2E818 8002DC18 24420003 */  addiu      $v0, $v0, 3
/* 2E81C 8002DC1C 304200FF */  andi       $v0, $v0, 0xff
/* 2E820 8002DC20 00021200 */  sll        $v0, $v0, 8
/* 2E824 8002DC24 3C03DC08 */  lui        $v1, 0xdc08
/* 2E828 8002DC28 3463000A */  ori        $v1, $v1, 0xa
/* 2E82C 8002DC2C 00431025 */  or         $v0, $v0, $v1
/* 2E830 8002DC30 AC820000 */  sw         $v0, ($a0)
/* 2E834 8002DC34 3C02800F */  lui        $v0, %hi(D_800ECB28)
/* 2E838 8002DC38 8C42CB28 */  lw         $v0, %lo(D_800ECB28)($v0)
/* 2E83C 8002DC3C AC820004 */  sw         $v0, 4($a0)
.L8002DC40:
/* 2E840 8002DC40 97A9002E */  lhu        $t1, 0x2e($sp)
/* 2E844 8002DC44 00092400 */  sll        $a0, $t1, 0x10
/* 2E848 8002DC48 0C018499 */  jal        func_80061264
/* 2E84C 8002DC4C 00042403 */   sra       $a0, $a0, 0x10
/* 2E850 8002DC50 02E01021 */  addu       $v0, $s7, $zero
/* 2E854 8002DC54 8FBF0074 */  lw         $ra, 0x74($sp)
/* 2E858 8002DC58 8FBE0070 */  lw         $fp, 0x70($sp)
/* 2E85C 8002DC5C 8FB7006C */  lw         $s7, 0x6c($sp)
/* 2E860 8002DC60 8FB60068 */  lw         $s6, 0x68($sp)
/* 2E864 8002DC64 8FB50064 */  lw         $s5, 0x64($sp)
/* 2E868 8002DC68 8FB40060 */  lw         $s4, 0x60($sp)
/* 2E86C 8002DC6C 8FB3005C */  lw         $s3, 0x5c($sp)
/* 2E870 8002DC70 8FB20058 */  lw         $s2, 0x58($sp)
/* 2E874 8002DC74 8FB10054 */  lw         $s1, 0x54($sp)
/* 2E878 8002DC78 8FB00050 */  lw         $s0, 0x50($sp)
/* 2E87C 8002DC7C 03E00008 */  jr         $ra
/* 2E880 8002DC80 27BD0078 */   addiu     $sp, $sp, 0x78
