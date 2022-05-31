lbl_80471BF0:
/* 80471BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80471BF4  7C 08 02 A6 */	mflr r0
/* 80471BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80471BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80471C00  7C 9F 23 78 */	mr r31, r4
/* 80471C04  93 C1 00 08 */	stw r30, 8(r1)
/* 80471C08  7C 7E 1B 78 */	mr r30, r3
/* 80471C0C  A0 63 00 00 */	lhz r3, 0(r3)
/* 80471C10  4B FF E5 91 */	bl func_804701A0
/* 80471C14  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 80471C18  54 00 97 FF */	rlwinm. r0, r0, 0x12, 0x1f, 0x1f
/* 80471C1C  41 82 00 28 */	beq lbl_80471C44
/* 80471C20  88 1E 01 2C */	lbz r0, 0x12c(r30)
/* 80471C24  28 00 00 01 */	cmplwi r0, 1
/* 80471C28  40 82 00 1C */	bne lbl_80471C44
/* 80471C2C  7F E3 FB 78 */	mr r3, r31
/* 80471C30  7F C4 F3 78 */	mr r4, r30
/* 80471C34  48 00 01 69 */	bl aMR_ReserveDefaultBgm
/* 80471C38  7F E3 FB 78 */	mr r3, r31
/* 80471C3C  7F C4 F3 78 */	mr r4, r30
/* 80471C40  48 00 00 1D */	bl aMR_ChangeMDBgm
lbl_80471C44:
/* 80471C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80471C48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80471C4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80471C50  7C 08 03 A6 */	mtlr r0
/* 80471C54  38 21 00 10 */	addi r1, r1, 0x10
/* 80471C58  4E 80 00 20 */	blr 
