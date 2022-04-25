	.set noat
	.set noreorder

glabel func_800F8654_CFAC4
/* CFAC4 800F8654 3C02800F */  lui        $v0, %hi(D_800F3FB0)
/* CFAC8 800F8658 8C423FB0 */  lw         $v0, %lo(D_800F3FB0)($v0)
/* CFACC 800F865C 9043004C */  lbu        $v1, 0x4c($v0)
/* CFAD0 800F8660 000310C0 */  sll        $v0, $v1, 3
/* CFAD4 800F8664 00431023 */  subu       $v0, $v0, $v1
/* CFAD8 800F8668 00021080 */  sll        $v0, $v0, 2
/* CFADC 800F866C 3C038010 */  lui        $v1, %hi(D_800FE2CC)
/* CFAE0 800F8670 00621821 */  addu       $v1, $v1, $v0
/* CFAE4 800F8674 8463E2CC */  lh         $v1, %lo(D_800FE2CC)($v1)
/* CFAE8 800F8678 2402FFFF */  addiu      $v0, $zero, -1
/* CFAEC 800F867C 14620055 */  bne        $v1, $v0, .L800F87D4
/* CFAF0 800F8680 27BDFFE8 */   addiu     $sp, $sp, -0x18
/* CFAF4 800F8684 3C028010 */  lui        $v0, %hi(D_800FDE40)
/* CFAF8 800F8688 8442DE40 */  lh         $v0, %lo(D_800FDE40)($v0)
/* CFAFC 800F868C 28420002 */  slti       $v0, $v0, 2
/* CFB00 800F8690 14400036 */  bnez       $v0, .L800F876C
/* CFB04 800F8694 00000000 */   nop
/* CFB08 800F8698 3C028010 */  lui        $v0, %hi(D_800FDE42)
/* CFB0C 800F869C 2442DE42 */  addiu      $v0, $v0, %lo(D_800FDE42)
/* CFB10 800F86A0 84430000 */  lh         $v1, ($v0)
/* CFB14 800F86A4 84420002 */  lh         $v0, 2($v0)
/* CFB18 800F86A8 10620030 */  beq        $v1, $v0, .L800F876C
/* CFB1C 800F86AC 00000000 */   nop
/* CFB20 800F86B0 3C068010 */  lui        $a2, %hi(D_800FDE46)
/* CFB24 800F86B4 24C6DE46 */  addiu      $a2, $a2, %lo(D_800FDE46)
/* CFB28 800F86B8 84C20000 */  lh         $v0, ($a2)
/* CFB2C 800F86BC 00021080 */  sll        $v0, $v0, 2
/* CFB30 800F86C0 3C038010 */  lui        $v1, %hi(D_800FE2E8)
/* CFB34 800F86C4 2463E2E8 */  addiu      $v1, $v1, %lo(D_800FE2E8)
/* CFB38 800F86C8 3C058010 */  lui        $a1, %hi(D_800FE2E8)
/* CFB3C 800F86CC 00A22821 */  addu       $a1, $a1, $v0
/* CFB40 800F86D0 8CA5E2E8 */  lw         $a1, %lo(D_800FE2E8)($a1)
/* CFB44 800F86D4 90A4004E */  lbu        $a0, 0x4e($a1)
/* CFB48 800F86D8 24020001 */  addiu      $v0, $zero, 1
/* CFB4C 800F86DC 14820023 */  bne        $a0, $v0, .L800F876C
/* CFB50 800F86E0 00000000 */   nop
/* CFB54 800F86E4 84C20002 */  lh         $v0, 2($a2)
/* CFB58 800F86E8 00021080 */  sll        $v0, $v0, 2
/* CFB5C 800F86EC 00431021 */  addu       $v0, $v0, $v1
/* CFB60 800F86F0 8C430000 */  lw         $v1, ($v0)
/* CFB64 800F86F4 9062004E */  lbu        $v0, 0x4e($v1)
/* CFB68 800F86F8 1444001C */  bne        $v0, $a0, .L800F876C
/* CFB6C 800F86FC 24040005 */   addiu     $a0, $zero, 5
/* CFB70 800F8700 3C048010 */  lui        $a0, %hi(D_800FDE46)
/* CFB74 800F8704 2484DE46 */  addiu      $a0, $a0, %lo(D_800FDE46)
/* CFB78 800F8708 84820000 */  lh         $v0, ($a0)
/* CFB7C 800F870C 00021080 */  sll        $v0, $v0, 2
/* CFB80 800F8710 3C018010 */  lui        $at, %hi(D_800FE2E8)
/* CFB84 800F8714 00220821 */  addu       $at, $at, $v0
/* CFB88 800F8718 8C22E2E8 */  lw         $v0, %lo(D_800FE2E8)($at)
/* CFB8C 800F871C 24030003 */  addiu      $v1, $zero, 3
/* CFB90 800F8720 A043004E */  sb         $v1, 0x4e($v0)
/* CFB94 800F8724 84820002 */  lh         $v0, 2($a0)
/* CFB98 800F8728 00021080 */  sll        $v0, $v0, 2
/* CFB9C 800F872C 3C018010 */  lui        $at, %hi(D_800FE2E8)
/* CFBA0 800F8730 00220821 */  addu       $at, $at, $v0
/* CFBA4 800F8734 8C22E2E8 */  lw         $v0, %lo(D_800FE2E8)($at)
/* CFBA8 800F8738 A043004E */  sb         $v1, 0x4e($v0)
/* CFBAC 800F873C 3C018010 */  lui        $at, %hi(D_800FDE40)
/* CFBB0 800F8740 A420DE40 */  sh         $zero, %lo(D_800FDE40)($at)
/* CFBB4 800F8744 3C028010 */  lui        $v0, %hi(D_800FDE46)
/* CFBB8 800F8748 2442DE46 */  addiu      $v0, $v0, %lo(D_800FDE46)
/* CFBBC 800F874C 2403FFFF */  addiu      $v1, $zero, -1
/* CFBC0 800F8750 A4430002 */  sh         $v1, 2($v0)
/* CFBC4 800F8754 A4430000 */  sh         $v1, ($v0)
/* CFBC8 800F8758 3C028010 */  lui        $v0, %hi(D_800FDE42)
/* CFBCC 800F875C 2442DE42 */  addiu      $v0, $v0, %lo(D_800FDE42)
/* CFBD0 800F8760 A4400002 */  sh         $zero, 2($v0)
/* CFBD4 800F8764 0803E1F5 */  j          .L800F87D4
/* CFBD8 800F8768 A4400000 */   sh        $zero, ($v0)
.L800F876C:
/* CFBDC 800F876C 3C038010 */  lui        $v1, %hi(D_800FDE40)
/* CFBE0 800F8770 8463DE40 */  lh         $v1, %lo(D_800FDE40)($v1)
/* CFBE4 800F8774 24020001 */  addiu      $v0, $zero, 1
/* CFBE8 800F8778 14620016 */  bne        $v1, $v0, .L800F87D4
/* CFBEC 800F877C 3C0300FF */   lui       $v1, 0xff
/* CFBF0 800F8780 3C058010 */  lui        $a1, %hi(D_800FDE46)
/* CFBF4 800F8784 24A5DE46 */  addiu      $a1, $a1, %lo(D_800FDE46)
/* CFBF8 800F8788 84A20000 */  lh         $v0, ($a1)
/* CFBFC 800F878C 00021080 */  sll        $v0, $v0, 2
/* CFC00 800F8790 3C048010 */  lui        $a0, %hi(D_800FE2E8)
/* CFC04 800F8794 00822021 */  addu       $a0, $a0, $v0
/* CFC08 800F8798 8C84E2E8 */  lw         $a0, %lo(D_800FE2E8)($a0)
/* CFC0C 800F879C 8C82004C */  lw         $v0, 0x4c($a0)
/* CFC10 800F87A0 3463FF00 */  ori        $v1, $v1, 0xff00
/* CFC14 800F87A4 00431024 */  and        $v0, $v0, $v1
/* CFC18 800F87A8 3C030005 */  lui        $v1, 5
/* CFC1C 800F87AC 34630100 */  ori        $v1, $v1, 0x100
/* CFC20 800F87B0 14430008 */  bne        $v0, $v1, .L800F87D4
/* CFC24 800F87B4 24020003 */   addiu     $v0, $zero, 3
/* CFC28 800F87B8 A082004E */  sb         $v0, 0x4e($a0)
/* CFC2C 800F87BC 3C018010 */  lui        $at, %hi(D_800FDE40)
/* CFC30 800F87C0 A420DE40 */  sh         $zero, %lo(D_800FDE40)($at)
/* CFC34 800F87C4 2402FFFF */  addiu      $v0, $zero, -1
/* CFC38 800F87C8 A4A20000 */  sh         $v0, ($a1)
/* CFC3C 800F87CC 3C018010 */  lui        $at, %hi(D_800FDE42)
/* CFC40 800F87D0 A420DE42 */  sh         $zero, %lo(D_800FDE42)($at)
.L800F87D4:
/* CFC44 800F87D4 03E00008 */  jr         $ra
/* CFC48 800F87D8 27BD0018 */   addiu     $sp, $sp, 0x18
