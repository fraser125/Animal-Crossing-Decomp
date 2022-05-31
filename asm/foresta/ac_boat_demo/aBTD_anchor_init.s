lbl_804159D0:
/* 804159D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804159D4  7C 08 02 A6 */	mflr r0
/* 804159D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804159DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804159E0  7C 7F 1B 78 */	mr r31, r3
/* 804159E4  4B F6 6A CD */	bl mBGMPsComp_delete_ps_quietField
/* 804159E8  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 804159EC  28 03 00 00 */	cmplwi r3, 0
/* 804159F0  41 82 00 08 */	beq lbl_804159F8
/* 804159F4  4B F5 EA 4D */	bl Actor_delete
lbl_804159F8:
/* 804159F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804159FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415A00  7C 08 03 A6 */	mtlr r0
/* 80415A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80415A08  4E 80 00 20 */	blr 
