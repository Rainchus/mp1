	.set noat
	.set noreorder

glabel func_800096B0
/* A2B0 800096B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A2B4 800096B4 AFBF0024 */  sw         $ra, 0x24($sp)
/* A2B8 800096B8 AFB20020 */  sw         $s2, 0x20($sp)
/* A2BC 800096BC AFB1001C */  sw         $s1, 0x1c($sp)
/* A2C0 800096C0 AFB00018 */  sw         $s0, 0x18($sp)
/* A2C4 800096C4 00808021 */  addu       $s0, $a0, $zero
/* A2C8 800096C8 00A09021 */  addu       $s2, $a1, $zero
/* A2CC 800096CC 82050058 */  lb         $a1, 0x58($s0)
/* A2D0 800096D0 3C03800C */  lui        $v1, %hi(D_800B89A4)
/* A2D4 800096D4 246389A4 */  addiu      $v1, $v1, %lo(D_800B89A4)
/* A2D8 800096D8 000510C0 */  sll        $v0, $a1, 3
/* A2DC 800096DC 00451023 */  subu       $v0, $v0, $a1
/* A2E0 800096E0 00021080 */  sll        $v0, $v0, 2
/* A2E4 800096E4 00431021 */  addu       $v0, $v0, $v1
/* A2E8 800096E8 00121840 */  sll        $v1, $s2, 1
/* A2EC 800096EC 00621821 */  addu       $v1, $v1, $v0
/* A2F0 800096F0 84640000 */  lh         $a0, ($v1)
/* A2F4 800096F4 0C018150 */  jal        func_80060540
/* A2F8 800096F8 00808821 */   addu      $s1, $a0, $zero
/* A2FC 800096FC A20200B3 */  sb         $v0, 0xb3($s0)
/* A300 80009700 A21200B2 */  sb         $s2, 0xb2($s0)
/* A304 80009704 82020058 */  lb         $v0, 0x58($s0)
/* A308 80009708 00021040 */  sll        $v0, $v0, 1
/* A30C 8000970C 3C01800F */  lui        $at, %hi(D_800EC6E0)
/* A310 80009710 00220821 */  addu       $at, $at, $v0
/* A314 80009714 A431C6E0 */  sh         $s1, %lo(D_800EC6E0)($at)
/* A318 80009718 8FBF0024 */  lw         $ra, 0x24($sp)
/* A31C 8000971C 8FB20020 */  lw         $s2, 0x20($sp)
/* A320 80009720 8FB1001C */  lw         $s1, 0x1c($sp)
/* A324 80009724 8FB00018 */  lw         $s0, 0x18($sp)
/* A328 80009728 03E00008 */  jr         $ra
/* A32C 8000972C 27BD0028 */   addiu     $sp, $sp, 0x28
