	.set noat
	.set noreorder

glabel func_800F65E0_14E940
/* 14E940 800F65E0 27BDFF50 */  addiu      $sp, $sp, -0xb0
/* 14E944 800F65E4 AFBF00AC */  sw         $ra, 0xac($sp)
/* 14E948 800F65E8 AFB000A8 */  sw         $s0, 0xa8($sp)
/* 14E94C 800F65EC 0C00A424 */  jal        func_80029090
/* 14E950 800F65F0 24040032 */   addiu     $a0, $zero, 0x32
/* 14E954 800F65F4 3C04800F */  lui        $a0, %hi(D_800EDEC0)
/* 14E958 800F65F8 2484DEC0 */  addiu      $a0, $a0, %lo(D_800EDEC0)
/* 14E95C 800F65FC 0C00AB7C */  jal        func_8002ADF0
/* 14E960 800F6600 24050040 */   addiu     $a1, $zero, 0x40
/* 14E964 800F6604 0C00779C */  jal        func_8001DE70
/* 14E968 800F6608 24040020 */   addiu     $a0, $zero, 0x20
/* 14E96C 800F660C 24040032 */  addiu      $a0, $zero, 0x32
/* 14E970 800F6610 0C0173CC */  jal        func_8005CF30
/* 14E974 800F6614 00002821 */   addu      $a1, $zero, $zero
/* 14E978 800F6618 0C018022 */  jal        func_80060088
/* 14E97C 800F661C 00000000 */   nop
/* 14E980 800F6620 0C00250B */  jal        func_8000942C
/* 14E984 800F6624 00000000 */   nop
/* 14E988 800F6628 3C028006 */  lui        $v0, %hi(func_8005EB1C)
/* 14E98C 800F662C 2442EB1C */  addiu      $v0, $v0, %lo(func_8005EB1C)
/* 14E990 800F6630 AFA20010 */  sw         $v0, 0x10($sp)
/* 14E994 800F6634 24047FDA */  addiu      $a0, $zero, 0x7fda
/* 14E998 800F6638 00002821 */  addu       $a1, $zero, $zero
/* 14E99C 800F663C 00003021 */  addu       $a2, $zero, $zero
/* 14E9A0 800F6640 0C0174E1 */  jal        func_8005D384
/* 14E9A4 800F6644 2407FFFF */   addiu     $a3, $zero, -1
/* 14E9A8 800F6648 00402021 */  addu       $a0, $v0, $zero
/* 14E9AC 800F664C 0C01762E */  jal        func_8005D8B8
/* 14E9B0 800F6650 240500A0 */   addiu     $a1, $zero, 0xa0
/* 14E9B4 800F6654 0C005E28 */  jal        func_800178A0
/* 14E9B8 800F6658 24040001 */   addiu     $a0, $zero, 1
/* 14E9BC 800F665C 0C005E3A */  jal        func_800178E8
/* 14E9C0 800F6660 00000000 */   nop
/* 14E9C4 800F6664 305000FF */  andi       $s0, $v0, 0xff
/* 14E9C8 800F6668 3C014370 */  lui        $at, 0x4370
/* 14E9CC 800F666C 44810000 */  mtc1       $at, $f0
/* 14E9D0 800F6670 00000000 */  nop
/* 14E9D4 800F6674 E7A00010 */  swc1       $f0, 0x10($sp)
/* 14E9D8 800F6678 02002021 */  addu       $a0, $s0, $zero
/* 14E9DC 800F667C 00002821 */  addu       $a1, $zero, $zero
/* 14E9E0 800F6680 3C0743A0 */  lui        $a3, 0x43a0
/* 14E9E4 800F6684 0C005D98 */  jal        func_80017660
/* 14E9E8 800F6688 00A03021 */   addu      $a2, $a1, $zero
/* 14E9EC 800F668C 3C014420 */  lui        $at, 0x4420
/* 14E9F0 800F6690 44812000 */  mtc1       $at, $f4
/* 14E9F4 800F6694 00000000 */  nop
/* 14E9F8 800F6698 E7A40010 */  swc1       $f4, 0x10($sp)
/* 14E9FC 800F669C 3C0143F0 */  lui        $at, 0x43f0
/* 14EA00 800F66A0 44811000 */  mtc1       $at, $f2
/* 14EA04 800F66A4 00000000 */  nop
/* 14EA08 800F66A8 E7A20014 */  swc1       $f2, 0x14($sp)
/* 14EA0C 800F66AC 3C0143FF */  lui        $at, 0x43ff
/* 14EA10 800F66B0 34218000 */  ori        $at, $at, 0x8000
/* 14EA14 800F66B4 44810000 */  mtc1       $at, $f0
/* 14EA18 800F66B8 00000000 */  nop
/* 14EA1C 800F66BC E7A00018 */  swc1       $f0, 0x18($sp)
/* 14EA20 800F66C0 44052000 */  mfc1       $a1, $f4
/* 14EA24 800F66C4 44061000 */  mfc1       $a2, $f2
/* 14EA28 800F66C8 44070000 */  mfc1       $a3, $f0
/* 14EA2C 800F66CC 00000000 */  nop
/* 14EA30 800F66D0 0C005DB1 */  jal        func_800176C4
/* 14EA34 800F66D4 02002021 */   addu      $a0, $s0, $zero
/* 14EA38 800F66D8 3C0541A0 */  lui        $a1, 0x41a0
/* 14EA3C 800F66DC 3C06451C */  lui        $a2, 0x451c
/* 14EA40 800F66E0 34C64000 */  ori        $a2, $a2, 0x4000
/* 14EA44 800F66E4 3C0745BB */  lui        $a3, 0x45bb
/* 14EA48 800F66E8 34E78000 */  ori        $a3, $a3, 0x8000
/* 14EA4C 800F66EC 0C007525 */  jal        func_8001D494
/* 14EA50 800F66F0 00002021 */   addu      $a0, $zero, $zero
/* 14EA54 800F66F4 3C01800F */  lui        $at, %hi(D_800EE984)
/* 14EA58 800F66F8 A420E984 */  sh         $zero, %lo(D_800EE984)($at)
/* 14EA5C 800F66FC 3C01800F */  lui        $at, %hi(D_800F2BC0)
/* 14EA60 800F6700 A4202BC0 */  sh         $zero, %lo(D_800F2BC0)($at)
/* 14EA64 800F6704 3C01800F */  lui        $at, %hi(D_800ED440)
/* 14EA68 800F6708 0C03DB42 */  jal        func_800F6D08_14F068
/* 14EA6C 800F670C A420D440 */   sh        $zero, %lo(D_800ED440)($at)
/* 14EA70 800F6710 3C04800F */  lui        $a0, %hi(D_800ED440)
/* 14EA74 800F6714 0C00242E */  jal        func_800090B8
/* 14EA78 800F6718 9484D440 */   lhu       $a0, %lo(D_800ED440)($a0)
/* 14EA7C 800F671C 3C028010 */  lui        $v0, %hi(func_800F9208_151568)
/* 14EA80 800F6720 24429208 */  addiu      $v0, $v0, %lo(func_800F9208_151568)
/* 14EA84 800F6724 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EA88 800F6728 24040001 */  addiu      $a0, $zero, 1
/* 14EA8C 800F672C 24050001 */  addiu      $a1, $zero, 1
/* 14EA90 800F6730 00003021 */  addu       $a2, $zero, $zero
/* 14EA94 800F6734 0C0174E1 */  jal        func_8005D384
/* 14EA98 800F6738 2407FFFF */   addiu     $a3, $zero, -1
/* 14EA9C 800F673C 3C03800F */  lui        $v1, %hi(D_800ED440)
/* 14EAA0 800F6740 9463D440 */  lhu        $v1, %lo(D_800ED440)($v1)
/* 14EAA4 800F6744 24640001 */  addiu      $a0, $v1, 1
/* 14EAA8 800F6748 3C01800F */  lui        $at, %hi(D_800ED440)
/* 14EAAC 800F674C A424D440 */  sh         $a0, %lo(D_800ED440)($at)
/* 14EAB0 800F6750 00031880 */  sll        $v1, $v1, 2
/* 14EAB4 800F6754 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 14EAB8 800F6758 00230821 */  addu       $at, $at, $v1
/* 14EABC 800F675C AC222AF8 */  sw         $v0, %lo(D_800F2AF8)($at)
/* 14EAC0 800F6760 3C028010 */  lui        $v0, %hi(func_800FA49C_1527FC)
/* 14EAC4 800F6764 2442A49C */  addiu      $v0, $v0, %lo(func_800FA49C_1527FC)
/* 14EAC8 800F6768 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EACC 800F676C 24040004 */  addiu      $a0, $zero, 4
/* 14EAD0 800F6770 24050002 */  addiu      $a1, $zero, 2
/* 14EAD4 800F6774 00003021 */  addu       $a2, $zero, $zero
/* 14EAD8 800F6778 0C0174E1 */  jal        func_8005D384
/* 14EADC 800F677C 2407FFFF */   addiu     $a3, $zero, -1
/* 14EAE0 800F6780 3C03800F */  lui        $v1, %hi(D_800ED440)
/* 14EAE4 800F6784 9463D440 */  lhu        $v1, %lo(D_800ED440)($v1)
/* 14EAE8 800F6788 24640001 */  addiu      $a0, $v1, 1
/* 14EAEC 800F678C 3C01800F */  lui        $at, %hi(D_800ED440)
/* 14EAF0 800F6790 A424D440 */  sh         $a0, %lo(D_800ED440)($at)
/* 14EAF4 800F6794 00031880 */  sll        $v1, $v1, 2
/* 14EAF8 800F6798 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 14EAFC 800F679C 00230821 */  addu       $at, $at, $v1
/* 14EB00 800F67A0 AC222AF8 */  sw         $v0, %lo(D_800F2AF8)($at)
/* 14EB04 800F67A4 3C028010 */  lui        $v0, %hi(func_800FA500_152860)
/* 14EB08 800F67A8 2442A500 */  addiu      $v0, $v0, %lo(func_800FA500_152860)
/* 14EB0C 800F67AC AFA20010 */  sw         $v0, 0x10($sp)
/* 14EB10 800F67B0 24040004 */  addiu      $a0, $zero, 4
/* 14EB14 800F67B4 24050002 */  addiu      $a1, $zero, 2
/* 14EB18 800F67B8 00003021 */  addu       $a2, $zero, $zero
/* 14EB1C 800F67BC 0C0174E1 */  jal        func_8005D384
/* 14EB20 800F67C0 2407FFFF */   addiu     $a3, $zero, -1
/* 14EB24 800F67C4 3C03800F */  lui        $v1, %hi(D_800ED440)
/* 14EB28 800F67C8 9463D440 */  lhu        $v1, %lo(D_800ED440)($v1)
/* 14EB2C 800F67CC 24640001 */  addiu      $a0, $v1, 1
/* 14EB30 800F67D0 3C01800F */  lui        $at, %hi(D_800ED440)
/* 14EB34 800F67D4 A424D440 */  sh         $a0, %lo(D_800ED440)($at)
/* 14EB38 800F67D8 00031880 */  sll        $v1, $v1, 2
/* 14EB3C 800F67DC 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 14EB40 800F67E0 00230821 */  addu       $at, $at, $v1
/* 14EB44 800F67E4 AC222AF8 */  sw         $v0, %lo(D_800F2AF8)($at)
/* 14EB48 800F67E8 3C028010 */  lui        $v0, %hi(func_800FA554_1528B4)
/* 14EB4C 800F67EC 2442A554 */  addiu      $v0, $v0, %lo(func_800FA554_1528B4)
/* 14EB50 800F67F0 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EB54 800F67F4 24040004 */  addiu      $a0, $zero, 4
/* 14EB58 800F67F8 24050002 */  addiu      $a1, $zero, 2
/* 14EB5C 800F67FC 00003021 */  addu       $a2, $zero, $zero
/* 14EB60 800F6800 0C0174E1 */  jal        func_8005D384
/* 14EB64 800F6804 2407FFFF */   addiu     $a3, $zero, -1
/* 14EB68 800F6808 3C03800F */  lui        $v1, %hi(D_800ED440)
/* 14EB6C 800F680C 9463D440 */  lhu        $v1, %lo(D_800ED440)($v1)
/* 14EB70 800F6810 24640001 */  addiu      $a0, $v1, 1
/* 14EB74 800F6814 3C01800F */  lui        $at, %hi(D_800ED440)
/* 14EB78 800F6818 A424D440 */  sh         $a0, %lo(D_800ED440)($at)
/* 14EB7C 800F681C 00031880 */  sll        $v1, $v1, 2
/* 14EB80 800F6820 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 14EB84 800F6824 00230821 */  addu       $at, $at, $v1
/* 14EB88 800F6828 AC222AF8 */  sw         $v0, %lo(D_800F2AF8)($at)
/* 14EB8C 800F682C 3C028010 */  lui        $v0, %hi(func_800FA5A8_152908)
/* 14EB90 800F6830 2442A5A8 */  addiu      $v0, $v0, %lo(func_800FA5A8_152908)
/* 14EB94 800F6834 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EB98 800F6838 24040004 */  addiu      $a0, $zero, 4
/* 14EB9C 800F683C 24050002 */  addiu      $a1, $zero, 2
/* 14EBA0 800F6840 00003021 */  addu       $a2, $zero, $zero
/* 14EBA4 800F6844 0C0174E1 */  jal        func_8005D384
/* 14EBA8 800F6848 2407FFFF */   addiu     $a3, $zero, -1
/* 14EBAC 800F684C 3C03800F */  lui        $v1, %hi(D_800ED440)
/* 14EBB0 800F6850 9463D440 */  lhu        $v1, %lo(D_800ED440)($v1)
/* 14EBB4 800F6854 24640001 */  addiu      $a0, $v1, 1
/* 14EBB8 800F6858 3C01800F */  lui        $at, %hi(D_800ED440)
/* 14EBBC 800F685C A424D440 */  sh         $a0, %lo(D_800ED440)($at)
/* 14EBC0 800F6860 00031880 */  sll        $v1, $v1, 2
/* 14EBC4 800F6864 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 14EBC8 800F6868 00230821 */  addu       $at, $at, $v1
/* 14EBCC 800F686C AC222AF8 */  sw         $v0, %lo(D_800F2AF8)($at)
/* 14EBD0 800F6870 3C028010 */  lui        $v0, %hi(func_800FA5FC_15295C)
/* 14EBD4 800F6874 2442A5FC */  addiu      $v0, $v0, %lo(func_800FA5FC_15295C)
/* 14EBD8 800F6878 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EBDC 800F687C 24040004 */  addiu      $a0, $zero, 4
/* 14EBE0 800F6880 24050002 */  addiu      $a1, $zero, 2
/* 14EBE4 800F6884 00003021 */  addu       $a2, $zero, $zero
/* 14EBE8 800F6888 0C0174E1 */  jal        func_8005D384
/* 14EBEC 800F688C 2407FFFF */   addiu     $a3, $zero, -1
/* 14EBF0 800F6890 3C03800F */  lui        $v1, %hi(D_800ED440)
/* 14EBF4 800F6894 9463D440 */  lhu        $v1, %lo(D_800ED440)($v1)
/* 14EBF8 800F6898 24640001 */  addiu      $a0, $v1, 1
/* 14EBFC 800F689C 3C01800F */  lui        $at, %hi(D_800ED440)
/* 14EC00 800F68A0 A424D440 */  sh         $a0, %lo(D_800ED440)($at)
/* 14EC04 800F68A4 00031880 */  sll        $v1, $v1, 2
/* 14EC08 800F68A8 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 14EC0C 800F68AC 00230821 */  addu       $at, $at, $v1
/* 14EC10 800F68B0 AC222AF8 */  sw         $v0, %lo(D_800F2AF8)($at)
/* 14EC14 800F68B4 3C028010 */  lui        $v0, %hi(func_800FA65C_1529BC)
/* 14EC18 800F68B8 2442A65C */  addiu      $v0, $v0, %lo(func_800FA65C_1529BC)
/* 14EC1C 800F68BC AFA20010 */  sw         $v0, 0x10($sp)
/* 14EC20 800F68C0 24040004 */  addiu      $a0, $zero, 4
/* 14EC24 800F68C4 24050002 */  addiu      $a1, $zero, 2
/* 14EC28 800F68C8 00003021 */  addu       $a2, $zero, $zero
/* 14EC2C 800F68CC 0C0174E1 */  jal        func_8005D384
/* 14EC30 800F68D0 2407FFFF */   addiu     $a3, $zero, -1
/* 14EC34 800F68D4 3C03800F */  lui        $v1, %hi(D_800ED440)
/* 14EC38 800F68D8 9463D440 */  lhu        $v1, %lo(D_800ED440)($v1)
/* 14EC3C 800F68DC 24640001 */  addiu      $a0, $v1, 1
/* 14EC40 800F68E0 3C01800F */  lui        $at, %hi(D_800ED440)
/* 14EC44 800F68E4 A424D440 */  sh         $a0, %lo(D_800ED440)($at)
/* 14EC48 800F68E8 00031880 */  sll        $v1, $v1, 2
/* 14EC4C 800F68EC 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 14EC50 800F68F0 00230821 */  addu       $at, $at, $v1
/* 14EC54 800F68F4 AC222AF8 */  sw         $v0, %lo(D_800F2AF8)($at)
/* 14EC58 800F68F8 3C028010 */  lui        $v0, %hi(func_800FA6B0_152A10)
/* 14EC5C 800F68FC 2442A6B0 */  addiu      $v0, $v0, %lo(func_800FA6B0_152A10)
/* 14EC60 800F6900 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EC64 800F6904 24040004 */  addiu      $a0, $zero, 4
/* 14EC68 800F6908 24050002 */  addiu      $a1, $zero, 2
/* 14EC6C 800F690C 00003021 */  addu       $a2, $zero, $zero
/* 14EC70 800F6910 0C0174E1 */  jal        func_8005D384
/* 14EC74 800F6914 2407FFFF */   addiu     $a3, $zero, -1
/* 14EC78 800F6918 3C03800F */  lui        $v1, %hi(D_800ED440)
/* 14EC7C 800F691C 9463D440 */  lhu        $v1, %lo(D_800ED440)($v1)
/* 14EC80 800F6920 24640001 */  addiu      $a0, $v1, 1
/* 14EC84 800F6924 3C01800F */  lui        $at, %hi(D_800ED440)
/* 14EC88 800F6928 A424D440 */  sh         $a0, %lo(D_800ED440)($at)
/* 14EC8C 800F692C 00031880 */  sll        $v1, $v1, 2
/* 14EC90 800F6930 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 14EC94 800F6934 00230821 */  addu       $at, $at, $v1
/* 14EC98 800F6938 AC222AF8 */  sw         $v0, %lo(D_800F2AF8)($at)
/* 14EC9C 800F693C 3C028010 */  lui        $v0, %hi(func_800FA704_152A64)
/* 14ECA0 800F6940 2442A704 */  addiu      $v0, $v0, %lo(func_800FA704_152A64)
/* 14ECA4 800F6944 AFA20010 */  sw         $v0, 0x10($sp)
/* 14ECA8 800F6948 24040004 */  addiu      $a0, $zero, 4
/* 14ECAC 800F694C 24050002 */  addiu      $a1, $zero, 2
/* 14ECB0 800F6950 00003021 */  addu       $a2, $zero, $zero
/* 14ECB4 800F6954 0C0174E1 */  jal        func_8005D384
/* 14ECB8 800F6958 2407FFFF */   addiu     $a3, $zero, -1
/* 14ECBC 800F695C 3C03800F */  lui        $v1, %hi(D_800ED440)
/* 14ECC0 800F6960 9463D440 */  lhu        $v1, %lo(D_800ED440)($v1)
/* 14ECC4 800F6964 24640001 */  addiu      $a0, $v1, 1
/* 14ECC8 800F6968 3C01800F */  lui        $at, %hi(D_800ED440)
/* 14ECCC 800F696C A424D440 */  sh         $a0, %lo(D_800ED440)($at)
/* 14ECD0 800F6970 00031880 */  sll        $v1, $v1, 2
/* 14ECD4 800F6974 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 14ECD8 800F6978 00230821 */  addu       $at, $at, $v1
/* 14ECDC 800F697C AC222AF8 */  sw         $v0, %lo(D_800F2AF8)($at)
/* 14ECE0 800F6980 3C028010 */  lui        $v0, %hi(func_800FA758_152AB8)
/* 14ECE4 800F6984 2442A758 */  addiu      $v0, $v0, %lo(func_800FA758_152AB8)
/* 14ECE8 800F6988 AFA20010 */  sw         $v0, 0x10($sp)
/* 14ECEC 800F698C 24040004 */  addiu      $a0, $zero, 4
/* 14ECF0 800F6990 24050002 */  addiu      $a1, $zero, 2
/* 14ECF4 800F6994 00003021 */  addu       $a2, $zero, $zero
/* 14ECF8 800F6998 0C0174E1 */  jal        func_8005D384
/* 14ECFC 800F699C 2407FFFF */   addiu     $a3, $zero, -1
/* 14ED00 800F69A0 3C03800F */  lui        $v1, %hi(D_800ED440)
/* 14ED04 800F69A4 9463D440 */  lhu        $v1, %lo(D_800ED440)($v1)
/* 14ED08 800F69A8 24640001 */  addiu      $a0, $v1, 1
/* 14ED0C 800F69AC 3C01800F */  lui        $at, %hi(D_800ED440)
/* 14ED10 800F69B0 A424D440 */  sh         $a0, %lo(D_800ED440)($at)
/* 14ED14 800F69B4 00031880 */  sll        $v1, $v1, 2
/* 14ED18 800F69B8 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 14ED1C 800F69BC 00230821 */  addu       $at, $at, $v1
/* 14ED20 800F69C0 0C03DB87 */  jal        func_800F6E1C_14F17C
/* 14ED24 800F69C4 AC222AF8 */   sw        $v0, %lo(D_800F2AF8)($at)
/* 14ED28 800F69C8 0C002540 */  jal        func_80009500
/* 14ED2C 800F69CC 00000000 */   nop
/* 14ED30 800F69D0 3C028010 */  lui        $v0, %hi(func_800F9FB8_152318)
/* 14ED34 800F69D4 24429FB8 */  addiu      $v0, $v0, %lo(func_800F9FB8_152318)
/* 14ED38 800F69D8 AFA20010 */  sw         $v0, 0x10($sp)
/* 14ED3C 800F69DC 24040002 */  addiu      $a0, $zero, 2
/* 14ED40 800F69E0 2405000A */  addiu      $a1, $zero, 0xa
/* 14ED44 800F69E4 24060032 */  addiu      $a2, $zero, 0x32
/* 14ED48 800F69E8 0C0174E1 */  jal        func_8005D384
/* 14ED4C 800F69EC 2407FFFF */   addiu     $a3, $zero, -1
/* 14ED50 800F69F0 3C03800F */  lui        $v1, %hi(D_800F2BC0)
/* 14ED54 800F69F4 94632BC0 */  lhu        $v1, %lo(D_800F2BC0)($v1)
/* 14ED58 800F69F8 24640001 */  addiu      $a0, $v1, 1
/* 14ED5C 800F69FC 3C01800F */  lui        $at, %hi(D_800F2BC0)
/* 14ED60 800F6A00 A4242BC0 */  sh         $a0, %lo(D_800F2BC0)($at)
/* 14ED64 800F6A04 00031880 */  sll        $v1, $v1, 2
/* 14ED68 800F6A08 3C01800F */  lui        $at, %hi(D_800F3FB0)
/* 14ED6C 800F6A0C 00230821 */  addu       $at, $at, $v1
/* 14ED70 800F6A10 AC223FB0 */  sw         $v0, %lo(D_800F3FB0)($at)
/* 14ED74 800F6A14 3C028010 */  lui        $v0, %hi(func_800FA068_1523C8)
/* 14ED78 800F6A18 2442A068 */  addiu      $v0, $v0, %lo(func_800FA068_1523C8)
/* 14ED7C 800F6A1C AFA20010 */  sw         $v0, 0x10($sp)
/* 14ED80 800F6A20 24040002 */  addiu      $a0, $zero, 2
/* 14ED84 800F6A24 2405000A */  addiu      $a1, $zero, 0xa
/* 14ED88 800F6A28 24060032 */  addiu      $a2, $zero, 0x32
/* 14ED8C 800F6A2C 0C0174E1 */  jal        func_8005D384
/* 14ED90 800F6A30 2407FFFF */   addiu     $a3, $zero, -1
/* 14ED94 800F6A34 3C03800F */  lui        $v1, %hi(D_800F2BC0)
/* 14ED98 800F6A38 94632BC0 */  lhu        $v1, %lo(D_800F2BC0)($v1)
/* 14ED9C 800F6A3C 24640001 */  addiu      $a0, $v1, 1
/* 14EDA0 800F6A40 3C01800F */  lui        $at, %hi(D_800F2BC0)
/* 14EDA4 800F6A44 A4242BC0 */  sh         $a0, %lo(D_800F2BC0)($at)
/* 14EDA8 800F6A48 00031880 */  sll        $v1, $v1, 2
/* 14EDAC 800F6A4C 3C01800F */  lui        $at, %hi(D_800F3FB0)
/* 14EDB0 800F6A50 00230821 */  addu       $at, $at, $v1
/* 14EDB4 800F6A54 AC223FB0 */  sw         $v0, %lo(D_800F3FB0)($at)
/* 14EDB8 800F6A58 3C028010 */  lui        $v0, %hi(func_800FA118_152478)
/* 14EDBC 800F6A5C 2442A118 */  addiu      $v0, $v0, %lo(func_800FA118_152478)
/* 14EDC0 800F6A60 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EDC4 800F6A64 24040002 */  addiu      $a0, $zero, 2
/* 14EDC8 800F6A68 2405000A */  addiu      $a1, $zero, 0xa
/* 14EDCC 800F6A6C 24060032 */  addiu      $a2, $zero, 0x32
/* 14EDD0 800F6A70 0C0174E1 */  jal        func_8005D384
/* 14EDD4 800F6A74 2407FFFF */   addiu     $a3, $zero, -1
/* 14EDD8 800F6A78 3C03800F */  lui        $v1, %hi(D_800F2BC0)
/* 14EDDC 800F6A7C 94632BC0 */  lhu        $v1, %lo(D_800F2BC0)($v1)
/* 14EDE0 800F6A80 24640001 */  addiu      $a0, $v1, 1
/* 14EDE4 800F6A84 3C01800F */  lui        $at, %hi(D_800F2BC0)
/* 14EDE8 800F6A88 A4242BC0 */  sh         $a0, %lo(D_800F2BC0)($at)
/* 14EDEC 800F6A8C 00031880 */  sll        $v1, $v1, 2
/* 14EDF0 800F6A90 3C01800F */  lui        $at, %hi(D_800F3FB0)
/* 14EDF4 800F6A94 00230821 */  addu       $at, $at, $v1
/* 14EDF8 800F6A98 AC223FB0 */  sw         $v0, %lo(D_800F3FB0)($at)
/* 14EDFC 800F6A9C 3C028010 */  lui        $v0, %hi(func_800FA1C8_152528)
/* 14EE00 800F6AA0 2442A1C8 */  addiu      $v0, $v0, %lo(func_800FA1C8_152528)
/* 14EE04 800F6AA4 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EE08 800F6AA8 24040002 */  addiu      $a0, $zero, 2
/* 14EE0C 800F6AAC 2405000A */  addiu      $a1, $zero, 0xa
/* 14EE10 800F6AB0 24060032 */  addiu      $a2, $zero, 0x32
/* 14EE14 800F6AB4 0C0174E1 */  jal        func_8005D384
/* 14EE18 800F6AB8 2407FFFF */   addiu     $a3, $zero, -1
/* 14EE1C 800F6ABC 3C03800F */  lui        $v1, %hi(D_800F2BC0)
/* 14EE20 800F6AC0 94632BC0 */  lhu        $v1, %lo(D_800F2BC0)($v1)
/* 14EE24 800F6AC4 24640001 */  addiu      $a0, $v1, 1
/* 14EE28 800F6AC8 3C01800F */  lui        $at, %hi(D_800F2BC0)
/* 14EE2C 800F6ACC A4242BC0 */  sh         $a0, %lo(D_800F2BC0)($at)
/* 14EE30 800F6AD0 00031880 */  sll        $v1, $v1, 2
/* 14EE34 800F6AD4 3C01800F */  lui        $at, %hi(D_800F3FB0)
/* 14EE38 800F6AD8 00230821 */  addu       $at, $at, $v1
/* 14EE3C 800F6ADC AC223FB0 */  sw         $v0, %lo(D_800F3FB0)($at)
/* 14EE40 800F6AE0 3C028010 */  lui        $v0, %hi(func_800FA278_1525D8)
/* 14EE44 800F6AE4 2442A278 */  addiu      $v0, $v0, %lo(func_800FA278_1525D8)
/* 14EE48 800F6AE8 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EE4C 800F6AEC 24040003 */  addiu      $a0, $zero, 3
/* 14EE50 800F6AF0 24050004 */  addiu      $a1, $zero, 4
/* 14EE54 800F6AF4 00003021 */  addu       $a2, $zero, $zero
/* 14EE58 800F6AF8 0C0174E1 */  jal        func_8005D384
/* 14EE5C 800F6AFC 2407FFFF */   addiu     $a3, $zero, -1
/* 14EE60 800F6B00 3C03800F */  lui        $v1, %hi(D_800EE984)
/* 14EE64 800F6B04 9463E984 */  lhu        $v1, %lo(D_800EE984)($v1)
/* 14EE68 800F6B08 24640001 */  addiu      $a0, $v1, 1
/* 14EE6C 800F6B0C 3C01800F */  lui        $at, %hi(D_800EE984)
/* 14EE70 800F6B10 A424E984 */  sh         $a0, %lo(D_800EE984)($at)
/* 14EE74 800F6B14 00031880 */  sll        $v1, $v1, 2
/* 14EE78 800F6B18 3C01800F */  lui        $at, %hi(D_800EDE70)
/* 14EE7C 800F6B1C 00230821 */  addu       $at, $at, $v1
/* 14EE80 800F6B20 AC22DE70 */  sw         $v0, %lo(D_800EDE70)($at)
/* 14EE84 800F6B24 3C028010 */  lui        $v0, %hi(func_800FA2D0_152630)
/* 14EE88 800F6B28 2442A2D0 */  addiu      $v0, $v0, %lo(func_800FA2D0_152630)
/* 14EE8C 800F6B2C AFA20010 */  sw         $v0, 0x10($sp)
/* 14EE90 800F6B30 24040003 */  addiu      $a0, $zero, 3
/* 14EE94 800F6B34 24050004 */  addiu      $a1, $zero, 4
/* 14EE98 800F6B38 00003021 */  addu       $a2, $zero, $zero
/* 14EE9C 800F6B3C 0C0174E1 */  jal        func_8005D384
/* 14EEA0 800F6B40 2407FFFF */   addiu     $a3, $zero, -1
/* 14EEA4 800F6B44 3C03800F */  lui        $v1, %hi(D_800EE984)
/* 14EEA8 800F6B48 9463E984 */  lhu        $v1, %lo(D_800EE984)($v1)
/* 14EEAC 800F6B4C 24640001 */  addiu      $a0, $v1, 1
/* 14EEB0 800F6B50 3C01800F */  lui        $at, %hi(D_800EE984)
/* 14EEB4 800F6B54 A424E984 */  sh         $a0, %lo(D_800EE984)($at)
/* 14EEB8 800F6B58 00031880 */  sll        $v1, $v1, 2
/* 14EEBC 800F6B5C 3C01800F */  lui        $at, %hi(D_800EDE70)
/* 14EEC0 800F6B60 00230821 */  addu       $at, $at, $v1
/* 14EEC4 800F6B64 AC22DE70 */  sw         $v0, %lo(D_800EDE70)($at)
/* 14EEC8 800F6B68 3C028010 */  lui        $v0, %hi(func_800FA32C_15268C)
/* 14EECC 800F6B6C 2442A32C */  addiu      $v0, $v0, %lo(func_800FA32C_15268C)
/* 14EED0 800F6B70 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EED4 800F6B74 24040003 */  addiu      $a0, $zero, 3
/* 14EED8 800F6B78 24050004 */  addiu      $a1, $zero, 4
/* 14EEDC 800F6B7C 00003021 */  addu       $a2, $zero, $zero
/* 14EEE0 800F6B80 0C0174E1 */  jal        func_8005D384
/* 14EEE4 800F6B84 2407FFFF */   addiu     $a3, $zero, -1
/* 14EEE8 800F6B88 3C03800F */  lui        $v1, %hi(D_800EE984)
/* 14EEEC 800F6B8C 9463E984 */  lhu        $v1, %lo(D_800EE984)($v1)
/* 14EEF0 800F6B90 24640001 */  addiu      $a0, $v1, 1
/* 14EEF4 800F6B94 3C01800F */  lui        $at, %hi(D_800EE984)
/* 14EEF8 800F6B98 A424E984 */  sh         $a0, %lo(D_800EE984)($at)
/* 14EEFC 800F6B9C 00031880 */  sll        $v1, $v1, 2
/* 14EF00 800F6BA0 3C01800F */  lui        $at, %hi(D_800EDE70)
/* 14EF04 800F6BA4 00230821 */  addu       $at, $at, $v1
/* 14EF08 800F6BA8 AC22DE70 */  sw         $v0, %lo(D_800EDE70)($at)
/* 14EF0C 800F6BAC 3C028010 */  lui        $v0, %hi(func_800FA388_1526E8)
/* 14EF10 800F6BB0 2442A388 */  addiu      $v0, $v0, %lo(func_800FA388_1526E8)
/* 14EF14 800F6BB4 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EF18 800F6BB8 24040003 */  addiu      $a0, $zero, 3
/* 14EF1C 800F6BBC 24050004 */  addiu      $a1, $zero, 4
/* 14EF20 800F6BC0 00003021 */  addu       $a2, $zero, $zero
/* 14EF24 800F6BC4 0C0174E1 */  jal        func_8005D384
/* 14EF28 800F6BC8 2407FFFF */   addiu     $a3, $zero, -1
/* 14EF2C 800F6BCC 3C03800F */  lui        $v1, %hi(D_800EE984)
/* 14EF30 800F6BD0 9463E984 */  lhu        $v1, %lo(D_800EE984)($v1)
/* 14EF34 800F6BD4 24640001 */  addiu      $a0, $v1, 1
/* 14EF38 800F6BD8 3C01800F */  lui        $at, %hi(D_800EE984)
/* 14EF3C 800F6BDC A424E984 */  sh         $a0, %lo(D_800EE984)($at)
/* 14EF40 800F6BE0 00031880 */  sll        $v1, $v1, 2
/* 14EF44 800F6BE4 3C01800F */  lui        $at, %hi(D_800EDE70)
/* 14EF48 800F6BE8 00230821 */  addu       $at, $at, $v1
/* 14EF4C 800F6BEC AC22DE70 */  sw         $v0, %lo(D_800EDE70)($at)
/* 14EF50 800F6BF0 3C028010 */  lui        $v0, %hi(func_800FA3E4_152744)
/* 14EF54 800F6BF4 2442A3E4 */  addiu      $v0, $v0, %lo(func_800FA3E4_152744)
/* 14EF58 800F6BF8 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EF5C 800F6BFC 24040003 */  addiu      $a0, $zero, 3
/* 14EF60 800F6C00 24050004 */  addiu      $a1, $zero, 4
/* 14EF64 800F6C04 00003021 */  addu       $a2, $zero, $zero
/* 14EF68 800F6C08 0C0174E1 */  jal        func_8005D384
/* 14EF6C 800F6C0C 2407FFFF */   addiu     $a3, $zero, -1
/* 14EF70 800F6C10 3C03800F */  lui        $v1, %hi(D_800EE984)
/* 14EF74 800F6C14 9463E984 */  lhu        $v1, %lo(D_800EE984)($v1)
/* 14EF78 800F6C18 24640001 */  addiu      $a0, $v1, 1
/* 14EF7C 800F6C1C 3C01800F */  lui        $at, %hi(D_800EE984)
/* 14EF80 800F6C20 A424E984 */  sh         $a0, %lo(D_800EE984)($at)
/* 14EF84 800F6C24 00031880 */  sll        $v1, $v1, 2
/* 14EF88 800F6C28 3C01800F */  lui        $at, %hi(D_800EDE70)
/* 14EF8C 800F6C2C 00230821 */  addu       $at, $at, $v1
/* 14EF90 800F6C30 AC22DE70 */  sw         $v0, %lo(D_800EDE70)($at)
/* 14EF94 800F6C34 3C028010 */  lui        $v0, %hi(func_800FA440_1527A0)
/* 14EF98 800F6C38 2442A440 */  addiu      $v0, $v0, %lo(func_800FA440_1527A0)
/* 14EF9C 800F6C3C AFA20010 */  sw         $v0, 0x10($sp)
/* 14EFA0 800F6C40 24040003 */  addiu      $a0, $zero, 3
/* 14EFA4 800F6C44 24050004 */  addiu      $a1, $zero, 4
/* 14EFA8 800F6C48 00003021 */  addu       $a2, $zero, $zero
/* 14EFAC 800F6C4C 0C0174E1 */  jal        func_8005D384
/* 14EFB0 800F6C50 2407FFFF */   addiu     $a3, $zero, -1
/* 14EFB4 800F6C54 3C03800F */  lui        $v1, %hi(D_800EE984)
/* 14EFB8 800F6C58 9463E984 */  lhu        $v1, %lo(D_800EE984)($v1)
/* 14EFBC 800F6C5C 24640001 */  addiu      $a0, $v1, 1
/* 14EFC0 800F6C60 3C01800F */  lui        $at, %hi(D_800EE984)
/* 14EFC4 800F6C64 A424E984 */  sh         $a0, %lo(D_800EE984)($at)
/* 14EFC8 800F6C68 00031880 */  sll        $v1, $v1, 2
/* 14EFCC 800F6C6C 3C01800F */  lui        $at, %hi(D_800EDE70)
/* 14EFD0 800F6C70 00230821 */  addu       $at, $at, $v1
/* 14EFD4 800F6C74 AC22DE70 */  sw         $v0, %lo(D_800EDE70)($at)
/* 14EFD8 800F6C78 3C02800F */  lui        $v0, %hi(func_800F6CB4_14F014)
/* 14EFDC 800F6C7C 24426CB4 */  addiu      $v0, $v0, %lo(func_800F6CB4_14F014)
/* 14EFE0 800F6C80 AFA20010 */  sw         $v0, 0x10($sp)
/* 14EFE4 800F6C84 24040001 */  addiu      $a0, $zero, 1
/* 14EFE8 800F6C88 00002821 */  addu       $a1, $zero, $zero
/* 14EFEC 800F6C8C 00003021 */  addu       $a2, $zero, $zero
/* 14EFF0 800F6C90 0C0174E1 */  jal        func_8005D384
/* 14EFF4 800F6C94 2407FFFF */   addiu     $a3, $zero, -1
/* 14EFF8 800F6C98 00002021 */  addu       $a0, $zero, $zero
/* 14EFFC 800F6C9C 0C01C991 */  jal        func_80072644
/* 14F000 800F6CA0 24050010 */   addiu     $a1, $zero, 0x10
/* 14F004 800F6CA4 8FBF00AC */  lw         $ra, 0xac($sp)
/* 14F008 800F6CA8 8FB000A8 */  lw         $s0, 0xa8($sp)
/* 14F00C 800F6CAC 03E00008 */  jr         $ra
/* 14F010 800F6CB0 27BD00B0 */   addiu     $sp, $sp, 0xb0
