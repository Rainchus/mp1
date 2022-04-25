	.set noat
	.set noreorder

glabel func_800FC5A4_D3A14
/* D3A14 800FC5A4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* D3A18 800FC5A8 AFBF002C */  sw         $ra, 0x2c($sp)
/* D3A1C 800FC5AC AFB20028 */  sw         $s2, 0x28($sp)
/* D3A20 800FC5B0 AFB10024 */  sw         $s1, 0x24($sp)
/* D3A24 800FC5B4 AFB00020 */  sw         $s0, 0x20($sp)
/* D3A28 800FC5B8 F7B40030 */  sdc1       $f20, 0x30($sp)
/* D3A2C 800FC5BC 00808821 */  addu       $s1, $a0, $zero
/* D3A30 800FC5C0 2404006C */  addiu      $a0, $zero, 0x6c
/* D3A34 800FC5C4 0C008DA1 */  jal        func_80023684
/* D3A38 800FC5C8 24057918 */   addiu     $a1, $zero, 0x7918
/* D3A3C 800FC5CC AE220050 */  sw         $v0, 0x50($s1)
/* D3A40 800FC5D0 00402021 */  addu       $a0, $v0, $zero
/* D3A44 800FC5D4 00002821 */  addu       $a1, $zero, $zero
/* D3A48 800FC5D8 0C026DDC */  jal        func_8009B770
/* D3A4C 800FC5DC 2406006C */   addiu     $a2, $zero, 0x6c
/* D3A50 800FC5E0 3C028010 */  lui        $v0, %hi(func_800FCD58_D41C8)
/* D3A54 800FC5E4 2442CD58 */  addiu      $v0, $v0, %lo(func_800FCD58_D41C8)
/* D3A58 800FC5E8 AE220014 */  sw         $v0, 0x14($s1)
/* D3A5C 800FC5EC 8E300050 */  lw         $s0, 0x50($s1)
/* D3A60 800FC5F0 3C028010 */  lui        $v0, %hi(D_800FE1E0)
/* D3A64 800FC5F4 8442E1E0 */  lh         $v0, %lo(D_800FE1E0)($v0)
/* D3A68 800FC5F8 00021080 */  sll        $v0, $v0, 2
/* D3A6C 800FC5FC 02202021 */  addu       $a0, $s1, $zero
/* D3A70 800FC600 3C058010 */  lui        $a1, %hi(D_800FD8B0)
/* D3A74 800FC604 00A22821 */  addu       $a1, $a1, $v0
/* D3A78 800FC608 8CA5D8B0 */  lw         $a1, %lo(D_800FD8B0)($a1)
/* D3A7C 800FC60C 2406068D */  addiu      $a2, $zero, 0x68d
/* D3A80 800FC610 0C00246F */  jal        func_800091BC
/* D3A84 800FC614 24070008 */   addiu     $a3, $zero, 8
/* D3A88 800FC618 3C028010 */  lui        $v0, %hi(D_800FE1E0)
/* D3A8C 800FC61C 8442E1E0 */  lh         $v0, %lo(D_800FE1E0)($v0)
/* D3A90 800FC620 00021080 */  sll        $v0, $v0, 2
/* D3A94 800FC624 02202021 */  addu       $a0, $s1, $zero
/* D3A98 800FC628 3C058010 */  lui        $a1, %hi(D_800FD8C0)
/* D3A9C 800FC62C 00A22821 */  addu       $a1, $a1, $v0
/* D3AA0 800FC630 8CA5D8C0 */  lw         $a1, %lo(D_800FD8C0)($a1)
/* D3AA4 800FC634 00A03021 */  addu       $a2, $a1, $zero
/* D3AA8 800FC638 0C002507 */  jal        func_8000941C
/* D3AAC 800FC63C 00A03821 */   addu      $a3, $a1, $zero
/* D3AB0 800FC640 8E220040 */  lw         $v0, 0x40($s1)
/* D3AB4 800FC644 84440000 */  lh         $a0, ($v0)
/* D3AB8 800FC648 0C008FF2 */  jal        func_80023FC8
/* D3ABC 800FC64C 00009021 */   addu      $s2, $zero, $zero
/* D3AC0 800FC650 8E230040 */  lw         $v1, 0x40($s1)
/* D3AC4 800FC654 A4620006 */  sh         $v0, 6($v1)
/* D3AC8 800FC658 8E230040 */  lw         $v1, 0x40($s1)
/* D3ACC 800FC65C 3C028010 */  lui        $v0, %hi(D_800FE1E0)
/* D3AD0 800FC660 8442E1E0 */  lh         $v0, %lo(D_800FE1E0)($v0)
/* D3AD4 800FC664 00021080 */  sll        $v0, $v0, 2
/* D3AD8 800FC668 84640006 */  lh         $a0, 6($v1)
/* D3ADC 800FC66C 3C058010 */  lui        $a1, %hi(D_800FD8C0)
/* D3AE0 800FC670 00A22821 */  addu       $a1, $a1, $v0
/* D3AE4 800FC674 8CA5D8C0 */  lw         $a1, %lo(D_800FD8C0)($a1)
/* D3AE8 800FC678 00A03021 */  addu       $a2, $a1, $zero
/* D3AEC 800FC67C 0C00960C */  jal        func_80025830
/* D3AF0 800FC680 00A03821 */   addu      $a3, $a1, $zero
/* D3AF4 800FC684 24040006 */  addiu      $a0, $zero, 6
/* D3AF8 800FC688 0C005D3D */  jal        func_800174F4
/* D3AFC 800FC68C 2405029D */   addiu     $a1, $zero, 0x29d
/* D3B00 800FC690 8E230040 */  lw         $v1, 0x40($s1)
/* D3B04 800FC694 A4620002 */  sh         $v0, 2($v1)
/* D3B08 800FC698 8E220040 */  lw         $v0, 0x40($s1)
/* D3B0C 800FC69C 0C008FF2 */  jal        func_80023FC8
/* D3B10 800FC6A0 84440002 */   lh        $a0, 2($v0)
/* D3B14 800FC6A4 8E230040 */  lw         $v1, 0x40($s1)
/* D3B18 800FC6A8 A4620008 */  sh         $v0, 8($v1)
/* D3B1C 800FC6AC 3C01C270 */  lui        $at, 0xc270
/* D3B20 800FC6B0 44810000 */  mtc1       $at, $f0
/* D3B24 800FC6B4 00000000 */  nop
/* D3B28 800FC6B8 E6200024 */  swc1       $f0, 0x24($s1)
/* D3B2C 800FC6BC 3C014334 */  lui        $at, 0x4334
/* D3B30 800FC6C0 44810000 */  mtc1       $at, $f0
/* D3B34 800FC6C4 00000000 */  nop
/* D3B38 800FC6C8 E6200028 */  swc1       $f0, 0x28($s1)
/* D3B3C 800FC6CC 240200FF */  addiu      $v0, $zero, 0xff
/* D3B40 800FC6D0 A222004C */  sb         $v0, 0x4c($s1)
/* D3B44 800FC6D4 3C028010 */  lui        $v0, %hi(D_800FE1E1)
/* D3B48 800FC6D8 9042E1E1 */  lbu        $v0, %lo(D_800FE1E1)($v0)
/* D3B4C 800FC6DC A222004F */  sb         $v0, 0x4f($s1)
/* D3B50 800FC6E0 3C040012 */  lui        $a0, 0x12
/* D3B54 800FC6E4 34840009 */  ori        $a0, $a0, 9
/* D3B58 800FC6E8 0C005D3D */  jal        func_800174F4
/* D3B5C 800FC6EC 2405029D */   addiu     $a1, $zero, 0x29d
/* D3B60 800FC6F0 8E230040 */  lw         $v1, 0x40($s1)
/* D3B64 800FC6F4 A4620004 */  sh         $v0, 4($v1)
/* D3B68 800FC6F8 3C040012 */  lui        $a0, 0x12
/* D3B6C 800FC6FC 34840009 */  ori        $a0, $a0, 9
/* D3B70 800FC700 0C005D3D */  jal        func_800174F4
/* D3B74 800FC704 2405029D */   addiu     $a1, $zero, 0x29d
/* D3B78 800FC708 8E230040 */  lw         $v1, 0x40($s1)
/* D3B7C 800FC70C A462000A */  sh         $v0, 0xa($v1)
/* D3B80 800FC710 8E220040 */  lw         $v0, 0x40($s1)
/* D3B84 800FC714 0C009810 */  jal        func_80026040
/* D3B88 800FC718 84440004 */   lh        $a0, 4($v0)
/* D3B8C 800FC71C 8E220040 */  lw         $v0, 0x40($s1)
/* D3B90 800FC720 0C009810 */  jal        func_80026040
/* D3B94 800FC724 8444000A */   lh        $a0, 0xa($v0)
/* D3B98 800FC728 8E220040 */  lw         $v0, 0x40($s1)
/* D3B9C 800FC72C 84440004 */  lh         $a0, 4($v0)
/* D3BA0 800FC730 00002821 */  addu       $a1, $zero, $zero
/* D3BA4 800FC734 00A03021 */  addu       $a2, $a1, $zero
/* D3BA8 800FC738 0C0095E6 */  jal        func_80025798
/* D3BAC 800FC73C 00A03821 */   addu      $a3, $a1, $zero
/* D3BB0 800FC740 8E220040 */  lw         $v0, 0x40($s1)
/* D3BB4 800FC744 8444000A */  lh         $a0, 0xa($v0)
/* D3BB8 800FC748 00002821 */  addu       $a1, $zero, $zero
/* D3BBC 800FC74C 00A03021 */  addu       $a2, $a1, $zero
/* D3BC0 800FC750 0C0095E6 */  jal        func_80025798
/* D3BC4 800FC754 00A03821 */   addu      $a3, $a1, $zero
/* D3BC8 800FC758 24020008 */  addiu      $v0, $zero, 8
/* D3BCC 800FC75C AFA20010 */  sw         $v0, 0x10($sp)
/* D3BD0 800FC760 02202021 */  addu       $a0, $s1, $zero
/* D3BD4 800FC764 24050006 */  addiu      $a1, $zero, 6
/* D3BD8 800FC768 2406002A */  addiu      $a2, $zero, 0x2a
/* D3BDC 800FC76C 0C0024D0 */  jal        func_80009340
/* D3BE0 800FC770 2407068D */   addiu     $a3, $zero, 0x68d
/* D3BE4 800FC774 92040027 */  lbu        $a0, 0x27($s0)
/* D3BE8 800FC778 0C0078BE */  jal        func_8001E2F8
/* D3BEC 800FC77C 240500FF */   addiu     $a1, $zero, 0xff
/* D3BF0 800FC780 92040027 */  lbu        $a0, 0x27($s0)
/* D3BF4 800FC784 240500FF */  addiu      $a1, $zero, 0xff
/* D3BF8 800FC788 240600FF */  addiu      $a2, $zero, 0xff
/* D3BFC 800FC78C 0C0078D8 */  jal        func_8001E360
/* D3C00 800FC790 240700BE */   addiu     $a3, $zero, 0xbe
/* D3C04 800FC794 24040008 */  addiu      $a0, $zero, 8
/* D3C08 800FC798 0C0193BD */  jal        func_80064EF4
/* D3C0C 800FC79C 00002821 */   addu      $a1, $zero, $zero
/* D3C10 800FC7A0 A222004E */  sb         $v0, 0x4e($s1)
/* D3C14 800FC7A4 3C013FCC */  lui        $at, 0x3fcc
/* D3C18 800FC7A8 3421CCCD */  ori        $at, $at, 0xcccd
/* D3C1C 800FC7AC 4481A000 */  mtc1       $at, $f20
/* D3C20 800FC7B0 00128400 */  sll        $s0, $s2, 0x10
.L800FC7B4:
/* D3C24 800FC7B4 00108403 */  sra        $s0, $s0, 0x10
/* D3C28 800FC7B8 9224004E */  lbu        $a0, 0x4e($s1)
/* D3C2C 800FC7BC 02002821 */  addu       $a1, $s0, $zero
/* D3C30 800FC7C0 0C019D20 */  jal        func_80067480
/* D3C34 800FC7C4 2406FFFF */   addiu     $a2, $zero, -1
/* D3C38 800FC7C8 9224004E */  lbu        $a0, 0x4e($s1)
/* D3C3C 800FC7CC 02002821 */  addu       $a1, $s0, $zero
/* D3C40 800FC7D0 0C019D2F */  jal        func_800674BC
/* D3C44 800FC7D4 3406903C */   ori       $a2, $zero, 0x903c
/* D3C48 800FC7D8 9224004E */  lbu        $a0, 0x4e($s1)
/* D3C4C 800FC7DC 02002821 */  addu       $a1, $s0, $zero
/* D3C50 800FC7E0 3C068010 */  lui        $a2, %hi(D_800FE1E4)
/* D3C54 800FC7E4 84C6E1E4 */  lh         $a2, %lo(D_800FE1E4)($a2)
/* D3C58 800FC7E8 0C019C82 */  jal        func_80067208
/* D3C5C 800FC7EC 00003821 */   addu      $a3, $zero, $zero
/* D3C60 800FC7F0 9224004E */  lbu        $a0, 0x4e($s1)
/* D3C64 800FC7F4 240200BE */  addiu      $v0, $zero, 0xbe
/* D3C68 800FC7F8 AFA20010 */  sw         $v0, 0x10($sp)
/* D3C6C 800FC7FC 02002821 */  addu       $a1, $s0, $zero
/* D3C70 800FC800 240600FF */  addiu      $a2, $zero, 0xff
/* D3C74 800FC804 0C019D3D */  jal        func_800674F4
/* D3C78 800FC808 240700FF */   addiu     $a3, $zero, 0xff
/* D3C7C 800FC80C 9224004E */  lbu        $a0, 0x4e($s1)
/* D3C80 800FC810 02002821 */  addu       $a1, $s0, $zero
/* D3C84 800FC814 0C019CAC */  jal        func_800672B0
/* D3C88 800FC818 24060001 */   addiu     $a2, $zero, 1
/* D3C8C 800FC81C 9224004E */  lbu        $a0, 0x4e($s1)
/* D3C90 800FC820 4406A000 */  mfc1       $a2, $f20
/* D3C94 800FC824 4407A000 */  mfc1       $a3, $f20
/* D3C98 800FC828 00000000 */  nop
/* D3C9C 800FC82C 0C019CD5 */  jal        func_80067354
/* D3CA0 800FC830 02002821 */   addu      $a1, $s0, $zero
/* D3CA4 800FC834 9224004E */  lbu        $a0, 0x4e($s1)
/* D3CA8 800FC838 02002821 */  addu       $a1, $s0, $zero
/* D3CAC 800FC83C 0C019CA1 */  jal        func_80067284
/* D3CB0 800FC840 00003021 */   addu      $a2, $zero, $zero
/* D3CB4 800FC844 9224004E */  lbu        $a0, 0x4e($s1)
/* D3CB8 800FC848 02002821 */  addu       $a1, $s0, $zero
/* D3CBC 800FC84C 0C019CE1 */  jal        func_80067384
/* D3CC0 800FC850 34069000 */   ori       $a2, $zero, 0x9000
/* D3CC4 800FC854 26420001 */  addiu      $v0, $s2, 1
/* D3CC8 800FC858 00409021 */  addu       $s2, $v0, $zero
/* D3CCC 800FC85C 00021400 */  sll        $v0, $v0, 0x10
/* D3CD0 800FC860 00021403 */  sra        $v0, $v0, 0x10
/* D3CD4 800FC864 28420008 */  slti       $v0, $v0, 8
/* D3CD8 800FC868 5440FFD2 */  bnel       $v0, $zero, .L800FC7B4
/* D3CDC 800FC86C 00128400 */   sll       $s0, $s2, 0x10
/* D3CE0 800FC870 3C028010 */  lui        $v0, %hi(D_800FE1E0)
/* D3CE4 800FC874 9442E1E0 */  lhu        $v0, %lo(D_800FE1E0)($v0)
/* D3CE8 800FC878 24420001 */  addiu      $v0, $v0, 1
/* D3CEC 800FC87C 3C018010 */  lui        $at, %hi(D_800FE1E0)
/* D3CF0 800FC880 A422E1E0 */  sh         $v0, %lo(D_800FE1E0)($at)
/* D3CF4 800FC884 8FBF002C */  lw         $ra, 0x2c($sp)
/* D3CF8 800FC888 8FB20028 */  lw         $s2, 0x28($sp)
/* D3CFC 800FC88C 8FB10024 */  lw         $s1, 0x24($sp)
/* D3D00 800FC890 8FB00020 */  lw         $s0, 0x20($sp)
/* D3D04 800FC894 D7B40030 */  ldc1       $f20, 0x30($sp)
/* D3D08 800FC898 03E00008 */  jr         $ra
/* D3D0C 800FC89C 27BD0038 */   addiu     $sp, $sp, 0x38
