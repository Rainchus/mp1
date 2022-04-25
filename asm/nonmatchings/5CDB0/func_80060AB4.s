	.set noat
	.set noreorder

glabel func_80060AB4
/* 616B4 80060AB4 3C02800C */  lui        $v0, %hi(D_800C599A)
/* 616B8 80060AB8 8442599A */  lh         $v0, %lo(D_800C599A)($v0)
/* 616BC 80060ABC 3C03800C */  lui        $v1, %hi(D_800C599C)
/* 616C0 80060AC0 8463599C */  lh         $v1, %lo(D_800C599C)($v1)
/* 616C4 80060AC4 00431026 */  xor        $v0, $v0, $v1
/* 616C8 80060AC8 0002102B */  sltu       $v0, $zero, $v0
/* 616CC 80060ACC 00402021 */  addu       $a0, $v0, $zero
/* 616D0 80060AD0 3C03800C */  lui        $v1, %hi(D_800C599E)
/* 616D4 80060AD4 8463599E */  lh         $v1, %lo(D_800C599E)($v1)
/* 616D8 80060AD8 3C02800C */  lui        $v0, %hi(D_800C59A0)
/* 616DC 80060ADC 844259A0 */  lh         $v0, %lo(D_800C59A0)($v0)
/* 616E0 80060AE0 54620001 */  bnel       $v1, $v0, .L80060AE8
/* 616E4 80060AE4 24040001 */   addiu     $a0, $zero, 1
.L80060AE8:
/* 616E8 80060AE8 03E00008 */  jr         $ra
/* 616EC 80060AEC 3082FFFF */   andi      $v0, $a0, 0xffff
