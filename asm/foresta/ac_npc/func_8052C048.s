lbl_8052C048:
/* 8052C048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052C04C  7C 08 02 A6 */	mflr r0
/* 8052C050  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052C054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052C058  3B E3 01 74 */	addi r31, r3, 0x174
/* 8052C05C  93 C1 00 08 */	stw r30, 8(r1)
/* 8052C060  3B C0 00 00 */	li r30, 0
lbl_8052C064:
/* 8052C064  A0 7F 00 04 */	lhz r3, 4(r31)
/* 8052C068  28 03 00 00 */	cmplwi r3, 0
/* 8052C06C  41 82 00 70 */	beq lbl_8052C0DC
/* 8052C070  88 1F 00 00 */	lbz r0, 0(r31)
/* 8052C074  28 00 00 01 */	cmplwi r0, 1
/* 8052C078  40 82 00 64 */	bne lbl_8052C0DC
/* 8052C07C  28 03 FE 20 */	cmplwi r3, 0xfe20
/* 8052C080  38 00 00 00 */	li r0, 0
/* 8052C084  41 82 00 14 */	beq lbl_8052C098
/* 8052C088  28 03 24 00 */	cmplwi r3, 0x2400
/* 8052C08C  41 80 00 10 */	blt lbl_8052C09C
/* 8052C090  28 03 24 FF */	cmplwi r3, 0x24ff
/* 8052C094  40 80 00 08 */	bge lbl_8052C09C
lbl_8052C098:
/* 8052C098  38 00 00 01 */	li r0, 1
lbl_8052C09C:
/* 8052C09C  2C 00 00 00 */	cmpwi r0, 0
/* 8052C0A0  40 82 00 0C */	bne lbl_8052C0AC
/* 8052C0A4  38 00 24 00 */	li r0, 0x2400
/* 8052C0A8  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8052C0AC:
/* 8052C0AC  38 7F 00 08 */	addi r3, r31, 8
/* 8052C0B0  4B EC 45 D1 */	bl mSc_background_dmacopy_controller
/* 8052C0B4  38 7F 00 64 */	addi r3, r31, 0x64
/* 8052C0B8  4B EC 45 C9 */	bl mSc_background_dmacopy_controller
/* 8052C0BC  88 1F 00 63 */	lbz r0, 0x63(r31)
/* 8052C0C0  28 00 00 00 */	cmplwi r0, 0
/* 8052C0C4  40 82 00 18 */	bne lbl_8052C0DC
/* 8052C0C8  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 8052C0CC  28 00 00 00 */	cmplwi r0, 0
/* 8052C0D0  40 82 00 0C */	bne lbl_8052C0DC
/* 8052C0D4  38 00 00 00 */	li r0, 0
/* 8052C0D8  98 1F 00 00 */	stb r0, 0(r31)
lbl_8052C0DC:
/* 8052C0DC  3B DE 00 01 */	addi r30, r30, 1
/* 8052C0E0  3B FF 00 C0 */	addi r31, r31, 0xc0
/* 8052C0E4  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8052C0E8  41 80 FF 7C */	blt lbl_8052C064
/* 8052C0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052C0F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052C0F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052C0F8  7C 08 03 A6 */	mtlr r0
/* 8052C0FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8052C100  4E 80 00 20 */	blr 
