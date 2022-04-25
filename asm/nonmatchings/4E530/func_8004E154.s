	.set noat
	.set noreorder

glabel func_8004E154
/* 4ED54 8004E154 00001821 */  addu       $v1, $zero, $zero
/* 4ED58 8004E158 3C04800F */  lui        $a0, %hi(D_800F50C0)
/* 4ED5C 8004E15C 248450C0 */  addiu      $a0, $a0, %lo(D_800F50C0)
/* 4ED60 8004E160 00031080 */  sll        $v0, $v1, 2
.L8004E164:
/* 4ED64 8004E164 00441021 */  addu       $v0, $v0, $a0
/* 4ED68 8004E168 AC400000 */  sw         $zero, ($v0)
/* 4ED6C 8004E16C 24630001 */  addiu      $v1, $v1, 1
/* 4ED70 8004E170 28620020 */  slti       $v0, $v1, 0x20
/* 4ED74 8004E174 5440FFFB */  bnel       $v0, $zero, .L8004E164
/* 4ED78 8004E178 00031080 */   sll       $v0, $v1, 2
/* 4ED7C 8004E17C 03E00008 */  jr         $ra
/* 4ED80 8004E180 00000000 */   nop
