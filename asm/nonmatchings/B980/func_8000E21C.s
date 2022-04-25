	.set noat
	.set noreorder

glabel func_8000E21C
/* EE1C 8000E21C 27BDFFF8 */  addiu      $sp, $sp, -8
/* EE20 8000E220 00003821 */  addu       $a3, $zero, $zero
/* EE24 8000E224 00004021 */  addu       $t0, $zero, $zero
/* EE28 8000E228 84820002 */  lh         $v0, 2($a0)
/* EE2C 8000E22C 18400024 */  blez       $v0, .L8000E2C0
/* EE30 8000E230 00401821 */   addu      $v1, $v0, $zero
/* EE34 8000E234 00005021 */  addu       $t2, $zero, $zero
/* EE38 8000E238 00031400 */  sll        $v0, $v1, 0x10
/* EE3C 8000E23C 00024C03 */  sra        $t1, $v0, 0x10
/* EE40 8000E240 00081400 */  sll        $v0, $t0, 0x10
.L8000E244:
/* EE44 8000E244 00021383 */  sra        $v0, $v0, 0xe
/* EE48 8000E248 00441021 */  addu       $v0, $v0, $a0
/* EE4C 8000E24C 8C460004 */  lw         $a2, 4($v0)
/* EE50 8000E250 94C20000 */  lhu        $v0, ($a2)
/* EE54 8000E254 00021400 */  sll        $v0, $v0, 0x10
/* EE58 8000E258 00401821 */  addu       $v1, $v0, $zero
/* EE5C 8000E25C 00021403 */  sra        $v0, $v0, 0x10
/* EE60 8000E260 0142102A */  slt        $v0, $t2, $v0
/* EE64 8000E264 1040000F */  beqz       $v0, .L8000E2A4
/* EE68 8000E268 00002821 */   addu      $a1, $zero, $zero
/* EE6C 8000E26C 00031C03 */  sra        $v1, $v1, 0x10
/* EE70 8000E270 00051400 */  sll        $v0, $a1, 0x10
.L8000E274:
/* EE74 8000E274 00021383 */  sra        $v0, $v0, 0xe
/* EE78 8000E278 00461021 */  addu       $v0, $v0, $a2
/* EE7C 8000E27C 8C42000C */  lw         $v0, 0xc($v0)
/* EE80 8000E280 9442000E */  lhu        $v0, 0xe($v0)
/* EE84 8000E284 00473821 */  addu       $a3, $v0, $a3
/* EE88 8000E288 24A20001 */  addiu      $v0, $a1, 1
/* EE8C 8000E28C 00402821 */  addu       $a1, $v0, $zero
/* EE90 8000E290 00021400 */  sll        $v0, $v0, 0x10
/* EE94 8000E294 00021403 */  sra        $v0, $v0, 0x10
/* EE98 8000E298 0043102A */  slt        $v0, $v0, $v1
/* EE9C 8000E29C 1440FFF5 */  bnez       $v0, .L8000E274
/* EEA0 8000E2A0 00051400 */   sll       $v0, $a1, 0x10
.L8000E2A4:
/* EEA4 8000E2A4 25020001 */  addiu      $v0, $t0, 1
/* EEA8 8000E2A8 00404021 */  addu       $t0, $v0, $zero
/* EEAC 8000E2AC 00021400 */  sll        $v0, $v0, 0x10
/* EEB0 8000E2B0 00021403 */  sra        $v0, $v0, 0x10
/* EEB4 8000E2B4 0049102A */  slt        $v0, $v0, $t1
/* EEB8 8000E2B8 1440FFE2 */  bnez       $v0, .L8000E244
/* EEBC 8000E2BC 00081400 */   sll       $v0, $t0, 0x10
.L8000E2C0:
/* EEC0 8000E2C0 00071400 */  sll        $v0, $a3, 0x10
/* EEC4 8000E2C4 00021403 */  sra        $v0, $v0, 0x10
/* EEC8 8000E2C8 03E00008 */  jr         $ra
/* EECC 8000E2CC 27BD0008 */   addiu     $sp, $sp, 8
