lbl_8039FE64:
/* 8039FE64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039FE68  7C 08 02 A6 */	mflr r0
/* 8039FE6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039FE70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039FE74  93 C1 00 08 */	stw r30, 8(r1)
/* 8039FE78  7C 7E 1B 78 */	mr r30, r3
/* 8039FE7C  A0 63 00 00 */	lhz r3, 0(r3)
/* 8039FE80  4B FF FE 75 */	bl mEvMN_CheckEventNpcList
/* 8039FE84  28 03 00 00 */	cmplwi r3, 0
/* 8039FE88  40 82 00 38 */	bne lbl_8039FEC0
/* 8039FE8C  48 02 EB DD */	bl mNpc_GetFreeEventNpcIdx
/* 8039FE90  2C 03 FF FF */	cmpwi r3, -1
/* 8039FE94  41 82 00 34 */	beq lbl_8039FEC8
/* 8039FE98  3C 63 00 01 */	addis r3, r3, 1
/* 8039FE9C  A0 BE 00 00 */	lhz r5, 0(r30)
/* 8039FEA0  38 03 D0 20 */	addi r0, r3, -12256
/* 8039FEA4  38 C0 00 00 */	li r6, 0
/* 8039FEA8  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 8039FEAC  7F E3 FB 78 */	mr r3, r31
/* 8039FEB0  7F E4 FB 78 */	mr r4, r31
/* 8039FEB4  48 02 EB F1 */	bl mNpc_RegistEventNpc
/* 8039FEB8  B3 FE 00 00 */	sth r31, 0(r30)
/* 8039FEBC  48 00 00 0C */	b lbl_8039FEC8
lbl_8039FEC0:
/* 8039FEC0  A0 03 00 00 */	lhz r0, 0(r3)
/* 8039FEC4  B0 1E 00 00 */	sth r0, 0(r30)
lbl_8039FEC8:
/* 8039FEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039FECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039FED0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039FED4  7C 08 03 A6 */	mtlr r0
/* 8039FED8  38 21 00 10 */	addi r1, r1, 0x10
/* 8039FEDC  4E 80 00 20 */	blr 
