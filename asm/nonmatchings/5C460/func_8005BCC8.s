	.set noat
	.set noreorder

glabel func_8005BCC8
/* 5C8C8 8005BCC8 27BDFFF8 */  addiu      $sp, $sp, -8
/* 5C8CC 8005BCCC 3C03800F */  lui        $v1, %hi(D_800F524A)
/* 5C8D0 8005BCD0 8063524A */  lb         $v1, %lo(D_800F524A)($v1)
/* 5C8D4 8005BCD4 28620004 */  slti       $v0, $v1, 4
/* 5C8D8 8005BCD8 1040000B */  beqz       $v0, .L8005BD08
/* 5C8DC 8005BCDC 00603021 */   addu      $a2, $v1, $zero
/* 5C8E0 8005BCE0 00031080 */  sll        $v0, $v1, 2
/* 5C8E4 8005BCE4 3C01800F */  lui        $at, %hi(D_800F33D8)
/* 5C8E8 8005BCE8 00220821 */  addu       $at, $at, $v0
/* 5C8EC 8005BCEC A42433D8 */  sh         $a0, %lo(D_800F33D8)($at)
/* 5C8F0 8005BCF0 3C01800F */  lui        $at, %hi(D_800F33DA)
/* 5C8F4 8005BCF4 00220821 */  addu       $at, $at, $v0
/* 5C8F8 8005BCF8 A42533DA */  sh         $a1, %lo(D_800F33DA)($at)
/* 5C8FC 8005BCFC 24C20001 */  addiu      $v0, $a2, 1
/* 5C900 8005BD00 3C01800F */  lui        $at, %hi(D_800F524A)
/* 5C904 8005BD04 A022524A */  sb         $v0, %lo(D_800F524A)($at)
.L8005BD08:
/* 5C908 8005BD08 03E00008 */  jr         $ra
/* 5C90C 8005BD0C 27BD0008 */   addiu     $sp, $sp, 8
