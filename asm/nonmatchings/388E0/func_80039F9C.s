	.set noat
	.set noreorder

glabel func_80039F9C
/* 3AB9C 80039F9C 8482006C */  lh         $v0, 0x6c($a0)
/* 3ABA0 80039FA0 18400014 */  blez       $v0, .L80039FF4
/* 3ABA4 80039FA4 00002821 */   addu      $a1, $zero, $zero
/* 3ABA8 80039FA8 2406FFFF */  addiu      $a2, $zero, -1
/* 3ABAC 80039FAC 00051400 */  sll        $v0, $a1, 0x10
.L80039FB0:
/* 3ABB0 80039FB0 8C8300A4 */  lw         $v1, 0xa4($a0)
/* 3ABB4 80039FB4 00021303 */  sra        $v0, $v0, 0xc
/* 3ABB8 80039FB8 00431821 */  addu       $v1, $v0, $v1
/* 3ABBC 80039FBC 80620003 */  lb         $v0, 3($v1)
/* 3ABC0 80039FC0 10460005 */  beq        $v0, $a2, .L80039FD8
/* 3ABC4 80039FC4 24A20001 */   addiu     $v0, $a1, 1
/* 3ABC8 80039FC8 90620009 */  lbu        $v0, 9($v1)
/* 3ABCC 80039FCC 34420080 */  ori        $v0, $v0, 0x80
/* 3ABD0 80039FD0 A0620009 */  sb         $v0, 9($v1)
/* 3ABD4 80039FD4 24A20001 */  addiu      $v0, $a1, 1
.L80039FD8:
/* 3ABD8 80039FD8 00402821 */  addu       $a1, $v0, $zero
/* 3ABDC 80039FDC 00021400 */  sll        $v0, $v0, 0x10
/* 3ABE0 80039FE0 00021403 */  sra        $v0, $v0, 0x10
/* 3ABE4 80039FE4 8483006C */  lh         $v1, 0x6c($a0)
/* 3ABE8 80039FE8 0043102A */  slt        $v0, $v0, $v1
/* 3ABEC 80039FEC 1440FFF0 */  bnez       $v0, .L80039FB0
/* 3ABF0 80039FF0 00051400 */   sll       $v0, $a1, 0x10
.L80039FF4:
/* 3ABF4 80039FF4 03E00008 */  jr         $ra
/* 3ABF8 80039FF8 00000000 */   nop
