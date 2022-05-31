lbl_80420D90:
/* 80420D90  3C A0 80 65 */	lis r5, g_block_kind_p@ha /* 0x80653D20@ha */
/* 80420D94  38 00 00 01 */	li r0, 1
/* 80420D98  80 C5 3D 20 */	lwz r6, g_block_kind_p@l(r5)  /* 0x80653D20@l */
/* 80420D9C  90 04 00 00 */	stw r0, 0(r4)
/* 80420DA0  90 03 00 00 */	stw r0, 0(r3)
/* 80420DA4  48 00 00 38 */	b lbl_80420DDC
lbl_80420DA8:
/* 80420DA8  80 04 00 00 */	lwz r0, 0(r4)
/* 80420DAC  54 A5 10 3A */	slwi r5, r5, 2
/* 80420DB0  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80420DB4  7C 05 02 14 */	add r0, r5, r0
/* 80420DB8  7C 06 00 2E */	lwzx r0, r6, r0
/* 80420DBC  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 80420DC0  28 00 00 80 */	cmplwi r0, 0x80
/* 80420DC4  40 82 00 0C */	bne lbl_80420DD0
/* 80420DC8  38 60 00 01 */	li r3, 1
/* 80420DCC  4E 80 00 20 */	blr 
lbl_80420DD0:
/* 80420DD0  80 A3 00 00 */	lwz r5, 0(r3)
/* 80420DD4  38 05 00 01 */	addi r0, r5, 1
/* 80420DD8  90 03 00 00 */	stw r0, 0(r3)
lbl_80420DDC:
/* 80420DDC  80 A3 00 00 */	lwz r5, 0(r3)
/* 80420DE0  2C 05 00 06 */	cmpwi r5, 6
/* 80420DE4  41 80 FF C4 */	blt lbl_80420DA8
/* 80420DE8  38 60 00 00 */	li r3, 0
/* 80420DEC  4E 80 00 20 */	blr 
