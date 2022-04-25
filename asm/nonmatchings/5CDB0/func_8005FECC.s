	.set noat
	.set noreorder

glabel func_8005FECC
/* 60ACC 8005FECC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 60AD0 8005FED0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 60AD4 8005FED4 AFB10024 */  sw         $s1, 0x24($sp)
/* 60AD8 8005FED8 AFB00020 */  sw         $s0, 0x20($sp)
/* 60ADC 8005FEDC 3C01800F */  lui        $at, %hi(D_800F64F8)
/* 60AE0 8005FEE0 A02064F8 */  sb         $zero, %lo(D_800F64F8)($at)
/* 60AE4 8005FEE4 3C02800F */  lui        $v0, %hi(D_800ED550)
/* 60AE8 8005FEE8 8442D550 */  lh         $v0, %lo(D_800ED550)($v0)
/* 60AEC 8005FEEC 18400015 */  blez       $v0, .L8005FF44
/* 60AF0 8005FEF0 00008021 */   addu      $s0, $zero, $zero
.L8005FEF4:
/* 60AF4 8005FEF4 3C02800C */  lui        $v0, %hi(D_800C5984)
/* 60AF8 8005FEF8 8C425984 */  lw         $v0, %lo(D_800C5984)($v0)
/* 60AFC 8005FEFC 00101880 */  sll        $v1, $s0, 2
/* 60B00 8005FF00 00701821 */  addu       $v1, $v1, $s0
/* 60B04 8005FF04 00031880 */  sll        $v1, $v1, 2
/* 60B08 8005FF08 00701821 */  addu       $v1, $v1, $s0
/* 60B0C 8005FF0C 00031880 */  sll        $v1, $v1, 2
/* 60B10 8005FF10 00622021 */  addu       $a0, $v1, $v0
/* 60B14 8005FF14 94820000 */  lhu        $v0, ($a0)
/* 60B18 8005FF18 30420081 */  andi       $v0, $v0, 0x81
/* 60B1C 8005FF1C 54400004 */  bnel       $v0, $zero, .L8005FF30
/* 60B20 8005FF20 26100001 */   addiu     $s0, $s0, 1
/* 60B24 8005FF24 0C017632 */  jal        func_8005D8C8
/* 60B28 8005FF28 24050040 */   addiu     $a1, $zero, 0x40
/* 60B2C 8005FF2C 26100001 */  addiu      $s0, $s0, 1
.L8005FF30:
/* 60B30 8005FF30 3C02800F */  lui        $v0, %hi(D_800ED550)
/* 60B34 8005FF34 8442D550 */  lh         $v0, %lo(D_800ED550)($v0)
/* 60B38 8005FF38 0202102A */  slt        $v0, $s0, $v0
/* 60B3C 8005FF3C 1440FFED */  bnez       $v0, .L8005FEF4
/* 60B40 8005FF40 00000000 */   nop
.L8005FF44:
/* 60B44 8005FF44 3C02800C */  lui        $v0, %hi(D_800C5988)
/* 60B48 8005FF48 84425988 */  lh         $v0, %lo(D_800C5988)($v0)
/* 60B4C 8005FF4C 1840001E */  blez       $v0, .L8005FFC8
/* 60B50 8005FF50 00008021 */   addu      $s0, $zero, $zero
.L8005FF54:
/* 60B54 8005FF54 3C02800C */  lui        $v0, %hi(D_800C5990)
/* 60B58 8005FF58 8C425990 */  lw         $v0, %lo(D_800C5990)($v0)
/* 60B5C 8005FF5C 00101840 */  sll        $v1, $s0, 1
/* 60B60 8005FF60 00701821 */  addu       $v1, $v1, $s0
/* 60B64 8005FF64 00038880 */  sll        $s1, $v1, 2
/* 60B68 8005FF68 02221821 */  addu       $v1, $s1, $v0
/* 60B6C 8005FF6C 94620000 */  lhu        $v0, ($v1)
/* 60B70 8005FF70 30420081 */  andi       $v0, $v0, 0x81
/* 60B74 8005FF74 5440000F */  bnel       $v0, $zero, .L8005FFB4
/* 60B78 8005FF78 26100001 */   addiu     $s0, $s0, 1
/* 60B7C 8005FF7C 8C640004 */  lw         $a0, 4($v1)
/* 60B80 8005FF80 0C01764B */  jal        func_8005D92C
/* 60B84 8005FF84 24050040 */   addiu     $a1, $zero, 0x40
/* 60B88 8005FF88 3C02800C */  lui        $v0, %hi(D_800C5990)
/* 60B8C 8005FF8C 8C425990 */  lw         $v0, %lo(D_800C5990)($v0)
/* 60B90 8005FF90 02221821 */  addu       $v1, $s1, $v0
/* 60B94 8005FF94 94620000 */  lhu        $v0, ($v1)
/* 60B98 8005FF98 30420010 */  andi       $v0, $v0, 0x10
/* 60B9C 8005FF9C 14400005 */  bnez       $v0, .L8005FFB4
/* 60BA0 8005FFA0 26100001 */   addiu     $s0, $s0, 1
/* 60BA4 8005FFA4 8C630004 */  lw         $v1, 4($v1)
/* 60BA8 8005FFA8 9462001E */  lhu        $v0, 0x1e($v1)
/* 60BAC 8005FFAC 3042FFFE */  andi       $v0, $v0, 0xfffe
/* 60BB0 8005FFB0 A462001E */  sh         $v0, 0x1e($v1)
.L8005FFB4:
/* 60BB4 8005FFB4 3C02800C */  lui        $v0, %hi(D_800C5988)
/* 60BB8 8005FFB8 84425988 */  lh         $v0, %lo(D_800C5988)($v0)
/* 60BBC 8005FFBC 0202102A */  slt        $v0, $s0, $v0
/* 60BC0 8005FFC0 1440FFE4 */  bnez       $v0, .L8005FF54
/* 60BC4 8005FFC4 00000000 */   nop
.L8005FFC8:
/* 60BC8 8005FFC8 00008021 */  addu       $s0, $zero, $zero
/* 60BCC 8005FFCC 00102400 */  sll        $a0, $s0, 0x10
.L8005FFD0:
/* 60BD0 8005FFD0 0C01B343 */  jal        func_8006CD0C
/* 60BD4 8005FFD4 00042403 */   sra       $a0, $a0, 0x10
/* 60BD8 8005FFD8 26100001 */  addiu      $s0, $s0, 1
/* 60BDC 8005FFDC 2A020004 */  slti       $v0, $s0, 4
/* 60BE0 8005FFE0 1440FFFB */  bnez       $v0, .L8005FFD0
/* 60BE4 8005FFE4 00102400 */   sll       $a0, $s0, 0x10
/* 60BE8 8005FFE8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 60BEC 8005FFEC 8FB10024 */  lw         $s1, 0x24($sp)
/* 60BF0 8005FFF0 8FB00020 */  lw         $s0, 0x20($sp)
/* 60BF4 8005FFF4 03E00008 */  jr         $ra
/* 60BF8 8005FFF8 27BD0030 */   addiu     $sp, $sp, 0x30
