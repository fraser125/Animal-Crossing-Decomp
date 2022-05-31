lbl_805D96F8:
/* 805D96F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D96FC  7C 08 02 A6 */	mflr r0
/* 805D9700  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D9704  38 A1 00 0C */	addi r5, r1, 0xc
/* 805D9708  38 C1 00 0A */	addi r6, r1, 0xa
/* 805D970C  38 E1 00 08 */	addi r7, r1, 8
/* 805D9710  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805D9714  7C 9F 23 78 */	mr r31, r4
/* 805D9718  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805D971C  7C 7E 1B 78 */	mr r30, r3
/* 805D9720  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805D9724  A9 04 00 1E */	lha r8, 0x1e(r4)
/* 805D9728  38 63 03 24 */	addi r3, r3, 0x324
/* 805D972C  4B FF F4 55 */	bl mED_get_col_line_width
/* 805D9730  A8 7F 00 24 */	lha r3, 0x24(r31)
/* 805D9734  A8 01 00 0A */	lha r0, 0xa(r1)
/* 805D9738  7C 03 00 00 */	cmpw r3, r0
/* 805D973C  40 80 00 20 */	bge lbl_805D975C
/* 805D9740  38 03 00 01 */	addi r0, r3, 1
/* 805D9744  7F E3 FB 78 */	mr r3, r31
/* 805D9748  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 805D974C  4B FF F6 2D */	bl mED_set_idxcol_inLineWidth
/* 805D9750  38 00 00 01 */	li r0, 1
/* 805D9754  98 1F 00 15 */	stb r0, 0x15(r31)
/* 805D9758  48 00 00 3C */	b lbl_805D9794
lbl_805D975C:
/* 805D975C  A8 7F 00 16 */	lha r3, 0x16(r31)
/* 805D9760  A8 1F 00 1E */	lha r0, 0x1e(r31)
/* 805D9764  7C 03 00 00 */	cmpw r3, r0
/* 805D9768  40 82 00 2C */	bne lbl_805D9794
/* 805D976C  38 00 00 CD */	li r0, 0xcd
/* 805D9770  7F C3 F3 78 */	mr r3, r30
/* 805D9774  98 1F 00 13 */	stb r0, 0x13(r31)
/* 805D9778  7F E4 FB 78 */	mr r4, r31
/* 805D977C  4B FF FC A5 */	bl mED_input_multi_line
/* 805D9780  88 1F 00 15 */	lbz r0, 0x15(r31)
/* 805D9784  28 00 00 01 */	cmplwi r0, 1
/* 805D9788  40 82 00 0C */	bne lbl_805D9794
/* 805D978C  38 00 00 08 */	li r0, 8
/* 805D9790  98 1F 00 11 */	stb r0, 0x11(r31)
lbl_805D9794:
/* 805D9794  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D9798  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805D979C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805D97A0  7C 08 03 A6 */	mtlr r0
/* 805D97A4  38 21 00 20 */	addi r1, r1, 0x20
/* 805D97A8  4E 80 00 20 */	blr 
