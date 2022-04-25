	.set noat
	.set noreorder

glabel func_8005DDDC
/* 5E9DC 8005DDDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5E9E0 8005DDE0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5E9E4 8005DDE4 AFB10014 */  sw         $s1, 0x14($sp)
/* 5E9E8 8005DDE8 0C018CEA */  jal        func_800633A8
/* 5E9EC 8005DDEC AFB00010 */   sw        $s0, 0x10($sp)
/* 5E9F0 8005DDF0 00408821 */  addu       $s1, $v0, $zero
/* 5E9F4 8005DDF4 86220022 */  lh         $v0, 0x22($s1)
/* 5E9F8 8005DDF8 00021840 */  sll        $v1, $v0, 1
/* 5E9FC 8005DDFC 00621821 */  addu       $v1, $v1, $v0
/* 5EA00 8005DE00 00031880 */  sll        $v1, $v1, 2
/* 5EA04 8005DE04 3C02800C */  lui        $v0, %hi(D_800C5990)
/* 5EA08 8005DE08 8C425990 */  lw         $v0, %lo(D_800C5990)($v0)
/* 5EA0C 8005DE0C 00628021 */  addu       $s0, $v1, $v0
/* 5EA10 8005DE10 8E020008 */  lw         $v0, 8($s0)
/* 5EA14 8005DE14 50400004 */  beql       $v0, $zero, .L8005DE28
/* 5EA18 8005DE18 24020001 */   addiu     $v0, $zero, 1
/* 5EA1C 8005DE1C 0040F809 */  jalr       $v0
/* 5EA20 8005DE20 00000000 */   nop
/* 5EA24 8005DE24 24020001 */  addiu      $v0, $zero, 1
.L8005DE28:
/* 5EA28 8005DE28 A6020000 */  sh         $v0, ($s0)
/* 5EA2C 8005DE2C 3C02800C */  lui        $v0, %hi(D_800C598C)
/* 5EA30 8005DE30 9442598C */  lhu        $v0, %lo(D_800C598C)($v0)
/* 5EA34 8005DE34 A6020002 */  sh         $v0, 2($s0)
/* 5EA38 8005DE38 96220022 */  lhu        $v0, 0x22($s1)
/* 5EA3C 8005DE3C 3C01800C */  lui        $at, %hi(D_800C598C)
/* 5EA40 8005DE40 A422598C */  sh         $v0, %lo(D_800C598C)($at)
/* 5EA44 8005DE44 3C02800C */  lui        $v0, %hi(D_800C598A)
/* 5EA48 8005DE48 9442598A */  lhu        $v0, %lo(D_800C598A)($v0)
/* 5EA4C 8005DE4C 2442FFFF */  addiu      $v0, $v0, -1
/* 5EA50 8005DE50 3C01800C */  lui        $at, %hi(D_800C598A)
/* 5EA54 8005DE54 A422598A */  sh         $v0, %lo(D_800C598A)($at)
/* 5EA58 8005DE58 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5EA5C 8005DE5C 8FB10014 */  lw         $s1, 0x14($sp)
/* 5EA60 8005DE60 8FB00010 */  lw         $s0, 0x10($sp)
/* 5EA64 8005DE64 03E00008 */  jr         $ra
/* 5EA68 8005DE68 27BD0020 */   addiu     $sp, $sp, 0x20
