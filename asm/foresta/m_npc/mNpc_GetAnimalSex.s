lbl_803D1FA4:
/* 803D1FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D1FA8  7C 08 02 A6 */	mflr r0
/* 803D1FAC  28 03 00 00 */	cmplwi r3, 0
/* 803D1FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D1FB4  38 00 00 02 */	li r0, 2
/* 803D1FB8  41 82 00 10 */	beq lbl_803D1FC8
/* 803D1FBC  88 63 00 0D */	lbz r3, 0xd(r3)
/* 803D1FC0  4B FF FF A9 */	bl mNpc_GetLooks2Sex
/* 803D1FC4  7C 60 1B 78 */	mr r0, r3
lbl_803D1FC8:
/* 803D1FC8  7C 03 03 78 */	mr r3, r0
/* 803D1FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D1FD0  7C 08 03 A6 */	mtlr r0
/* 803D1FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D1FD8  4E 80 00 20 */	blr 
