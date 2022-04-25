	.set noat
	.set noreorder

glabel func_8006BB08
/* 6C708 8006BB08 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6C70C 8006BB0C AFBF0028 */  sw         $ra, 0x28($sp)
/* 6C710 8006BB10 AFB30024 */  sw         $s3, 0x24($sp)
/* 6C714 8006BB14 AFB20020 */  sw         $s2, 0x20($sp)
/* 6C718 8006BB18 AFB1001C */  sw         $s1, 0x1c($sp)
/* 6C71C 8006BB1C AFB00018 */  sw         $s0, 0x18($sp)
/* 6C720 8006BB20 00809021 */  addu       $s2, $a0, $zero
/* 6C724 8006BB24 00A09821 */  addu       $s3, $a1, $zero
/* 6C728 8006BB28 8E420040 */  lw         $v0, 0x40($s2)
/* 6C72C 8006BB2C 84420000 */  lh         $v0, ($v0)
/* 6C730 8006BB30 0440003A */  bltz       $v0, .L8006BC1C
/* 6C734 8006BB34 00408821 */   addu      $s1, $v0, $zero
/* 6C738 8006BB38 3263FFFF */  andi       $v1, $s3, 0xffff
/* 6C73C 8006BB3C 10600005 */  beqz       $v1, .L8006BB54
/* 6C740 8006BB40 24020004 */   addiu     $v0, $zero, 4
/* 6C744 8006BB44 10620009 */  beq        $v1, $v0, .L8006BB6C
/* 6C748 8006BB48 2410000A */   addiu     $s0, $zero, 0xa
/* 6C74C 8006BB4C 0801AEED */  j          .L8006BBB4
/* 6C750 8006BB50 00112400 */   sll       $a0, $s1, 0x10
.L8006BB54:
/* 6C754 8006BB54 00112400 */  sll        $a0, $s1, 0x10
/* 6C758 8006BB58 00042403 */  sra        $a0, $a0, 0x10
/* 6C75C 8006BB5C 0C00972A */  jal        func_80025CA8
/* 6C760 8006BB60 00002821 */   addu      $a1, $zero, $zero
/* 6C764 8006BB64 0801AEED */  j          .L8006BBB4
/* 6C768 8006BB68 00112400 */   sll       $a0, $s1, 0x10
.L8006BB6C:
/* 6C76C 8006BB6C 8E420050 */  lw         $v0, 0x50($s2)
/* 6C770 8006BB70 24430024 */  addiu      $v1, $v0, 0x24
.L8006BB74:
/* 6C774 8006BB74 A4600018 */  sh         $zero, 0x18($v1)
/* 6C778 8006BB78 2602FFFF */  addiu      $v0, $s0, -1
/* 6C77C 8006BB7C 00408021 */  addu       $s0, $v0, $zero
/* 6C780 8006BB80 00021400 */  sll        $v0, $v0, 0x10
/* 6C784 8006BB84 1440FFFB */  bnez       $v0, .L8006BB74
/* 6C788 8006BB88 2463001C */   addiu     $v1, $v1, 0x1c
/* 6C78C 8006BB8C 8E420050 */  lw         $v0, 0x50($s2)
/* 6C790 8006BB90 2443013C */  addiu      $v1, $v0, 0x13c
/* 6C794 8006BB94 2410000A */  addiu      $s0, $zero, 0xa
.L8006BB98:
/* 6C798 8006BB98 A4600018 */  sh         $zero, 0x18($v1)
/* 6C79C 8006BB9C 2602FFFF */  addiu      $v0, $s0, -1
/* 6C7A0 8006BBA0 00408021 */  addu       $s0, $v0, $zero
/* 6C7A4 8006BBA4 00021400 */  sll        $v0, $v0, 0x10
/* 6C7A8 8006BBA8 1440FFFB */  bnez       $v0, .L8006BB98
/* 6C7AC 8006BBAC 2463001C */   addiu     $v1, $v1, 0x1c
/* 6C7B0 8006BBB0 00112400 */  sll        $a0, $s1, 0x10
.L8006BBB4:
/* 6C7B4 8006BBB4 3270FFFF */  andi       $s0, $s3, 0xffff
/* 6C7B8 8006BBB8 00042403 */  sra        $a0, $a0, 0x10
/* 6C7BC 8006BBBC 24050004 */  addiu      $a1, $zero, 4
/* 6C7C0 8006BBC0 0C00963B */  jal        func_800258EC
/* 6C7C4 8006BBC4 02003021 */   addu      $a2, $s0, $zero
/* 6C7C8 8006BBC8 8E420040 */  lw         $v0, 0x40($s2)
/* 6C7CC 8006BBCC 84440002 */  lh         $a0, 2($v0)
/* 6C7D0 8006BBD0 24050004 */  addiu      $a1, $zero, 4
/* 6C7D4 8006BBD4 0C00963B */  jal        func_800258EC
/* 6C7D8 8006BBD8 02003021 */   addu      $a2, $s0, $zero
/* 6C7DC 8006BBDC 24100002 */  addiu      $s0, $zero, 2
/* 6C7E0 8006BBE0 00101400 */  sll        $v0, $s0, 0x10
.L8006BBE4:
/* 6C7E4 8006BBE4 8E430040 */  lw         $v1, 0x40($s2)
/* 6C7E8 8006BBE8 000213C3 */  sra        $v0, $v0, 0xf
/* 6C7EC 8006BBEC 00431021 */  addu       $v0, $v0, $v1
/* 6C7F0 8006BBF0 84440000 */  lh         $a0, ($v0)
/* 6C7F4 8006BBF4 24050004 */  addiu      $a1, $zero, 4
/* 6C7F8 8006BBF8 0C00963B */  jal        func_800258EC
/* 6C7FC 8006BBFC 24060004 */   addiu     $a2, $zero, 4
/* 6C800 8006BC00 26020001 */  addiu      $v0, $s0, 1
/* 6C804 8006BC04 00408021 */  addu       $s0, $v0, $zero
/* 6C808 8006BC08 00021400 */  sll        $v0, $v0, 0x10
/* 6C80C 8006BC0C 00021403 */  sra        $v0, $v0, 0x10
/* 6C810 8006BC10 28420017 */  slti       $v0, $v0, 0x17
/* 6C814 8006BC14 1440FFF3 */  bnez       $v0, .L8006BBE4
/* 6C818 8006BC18 00101400 */   sll       $v0, $s0, 0x10
.L8006BC1C:
/* 6C81C 8006BC1C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 6C820 8006BC20 8FB30024 */  lw         $s3, 0x24($sp)
/* 6C824 8006BC24 8FB20020 */  lw         $s2, 0x20($sp)
/* 6C828 8006BC28 8FB1001C */  lw         $s1, 0x1c($sp)
/* 6C82C 8006BC2C 8FB00018 */  lw         $s0, 0x18($sp)
/* 6C830 8006BC30 03E00008 */  jr         $ra
/* 6C834 8006BC34 27BD0030 */   addiu     $sp, $sp, 0x30
