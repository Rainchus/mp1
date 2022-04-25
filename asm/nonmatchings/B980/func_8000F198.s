	.set noat
	.set noreorder

glabel func_8000F198
/* FD98 8000F198 3C03800D */  lui        $v1, %hi(D_800CEAF0)
/* FD9C 8000F19C 8C63EAF0 */  lw         $v1, %lo(D_800CEAF0)($v1)
/* FDA0 8000F1A0 10600022 */  beqz       $v1, .L8000F22C
/* FDA4 8000F1A4 27BDFFF8 */   addiu     $sp, $sp, -8
/* FDA8 8000F1A8 18600020 */  blez       $v1, .L8000F22C
/* FDAC 8000F1AC 00002821 */   addu      $a1, $zero, $zero
/* FDB0 8000F1B0 3C09800D */  lui        $t1, %hi(D_800CEAE4)
/* FDB4 8000F1B4 8D29EAE4 */  lw         $t1, %lo(D_800CEAE4)($t1)
/* FDB8 8000F1B8 00041400 */  sll        $v0, $a0, 0x10
/* FDBC 8000F1BC 00023403 */  sra        $a2, $v0, 0x10
/* FDC0 8000F1C0 3C03800D */  lui        $v1, %hi(D_800CEA94)
/* FDC4 8000F1C4 8C63EA94 */  lw         $v1, %lo(D_800CEA94)($v1)
/* FDC8 8000F1C8 00061040 */  sll        $v0, $a2, 1
/* FDCC 8000F1CC 00461021 */  addu       $v0, $v0, $a2
/* FDD0 8000F1D0 00021080 */  sll        $v0, $v0, 2
/* FDD4 8000F1D4 00461023 */  subu       $v0, $v0, $a2
/* FDD8 8000F1D8 00021080 */  sll        $v0, $v0, 2
/* FDDC 8000F1DC 00434021 */  addu       $t0, $v0, $v1
/* FDE0 8000F1E0 240AFFFF */  addiu      $t2, $zero, -1
/* FDE4 8000F1E4 3C07800D */  lui        $a3, %hi(D_800CEAF0)
/* FDE8 8000F1E8 8CE7EAF0 */  lw         $a3, %lo(D_800CEAF0)($a3)
/* FDEC 8000F1EC 00051040 */  sll        $v0, $a1, 1
.L8000F1F0:
/* FDF0 8000F1F0 00451021 */  addu       $v0, $v0, $a1
/* FDF4 8000F1F4 00021080 */  sll        $v0, $v0, 2
/* FDF8 8000F1F8 00492021 */  addu       $a0, $v0, $t1
/* FDFC 8000F1FC 84830000 */  lh         $v1, ($a0)
/* FE00 8000F200 85020014 */  lh         $v0, 0x14($t0)
/* FE04 8000F204 14620006 */  bne        $v1, $v0, .L8000F220
/* FE08 8000F208 24A50001 */   addiu     $a1, $a1, 1
/* FE0C 8000F20C 84820002 */  lh         $v0, 2($a0)
/* FE10 8000F210 14460004 */  bne        $v0, $a2, .L8000F224
/* FE14 8000F214 00A7102A */   slt       $v0, $a1, $a3
/* FE18 8000F218 08003C8B */  j          .L8000F22C
/* FE1C 8000F21C A48A0000 */   sh        $t2, ($a0)
.L8000F220:
/* FE20 8000F220 00A7102A */  slt        $v0, $a1, $a3
.L8000F224:
/* FE24 8000F224 1440FFF2 */  bnez       $v0, .L8000F1F0
/* FE28 8000F228 00051040 */   sll       $v0, $a1, 1
.L8000F22C:
/* FE2C 8000F22C 27BD0008 */  addiu      $sp, $sp, 8
/* FE30 8000F230 03E00008 */  jr         $ra
/* FE34 8000F234 00000000 */   nop
