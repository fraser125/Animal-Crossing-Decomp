lbl_804E01A0:
/* 804E01A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E01A4  7C 08 02 A6 */	mflr r0
/* 804E01A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E01AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E01B0  7C 9F 23 78 */	mr r31, r4
/* 804E01B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E01B8  7C 7E 1B 78 */	mr r30, r3
/* 804E01BC  4B EC 4B 11 */	bl mFI_GetFieldId
/* 804E01C0  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 804E01C4  2C 00 60 00 */	cmpwi r0, 0x6000
/* 804E01C8  40 82 00 98 */	bne lbl_804E0260
/* 804E01CC  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 804E01D0  28 00 40 00 */	cmplwi r0, 0x4000
/* 804E01D4  41 80 00 84 */	blt lbl_804E0258
/* 804E01D8  28 00 40 80 */	cmplwi r0, 0x4080
/* 804E01DC  40 80 00 7C */	bge lbl_804E0258
/* 804E01E0  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804E01E4  38 61 00 08 */	addi r3, r1, 8
/* 804E01E8  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804E01EC  90 81 00 08 */	stw r4, 8(r1)
/* 804E01F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E01F4  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804E01F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E01FC  4B EC 65 11 */	bl mFI_GetUnitCol
/* 804E0200  88 83 00 00 */	lbz r4, 0(r3)
/* 804E0204  A0 03 00 00 */	lhz r0, 0(r3)
/* 804E0208  54 84 F6 FE */	rlwinm r4, r4, 0x1e, 0x1b, 0x1f
/* 804E020C  54 00 DE FE */	rlwinm r0, r0, 0x1b, 0x1b, 0x1f
/* 804E0210  7C 04 00 00 */	cmpw r4, r0
/* 804E0214  40 82 00 34 */	bne lbl_804E0248
/* 804E0218  88 03 00 01 */	lbz r0, 1(r3)
/* 804E021C  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 804E0220  7C 04 00 40 */	cmplw r4, r0
/* 804E0224  40 82 00 24 */	bne lbl_804E0248
/* 804E0228  88 03 00 02 */	lbz r0, 2(r3)
/* 804E022C  54 00 EE FE */	rlwinm r0, r0, 0x1d, 0x1b, 0x1f
/* 804E0230  7C 04 00 40 */	cmplw r4, r0
/* 804E0234  40 82 00 14 */	bne lbl_804E0248
/* 804E0238  A0 03 00 02 */	lhz r0, 2(r3)
/* 804E023C  54 00 D6 FE */	rlwinm r0, r0, 0x1a, 0x1b, 0x1f
/* 804E0240  7C 04 00 00 */	cmpw r4, r0
/* 804E0244  41 82 00 0C */	beq lbl_804E0250
lbl_804E0248:
/* 804E0248  38 60 00 01 */	li r3, 1
/* 804E024C  48 00 00 18 */	b lbl_804E0264
lbl_804E0250:
/* 804E0250  38 60 00 00 */	li r3, 0
/* 804E0254  48 00 00 10 */	b lbl_804E0264
lbl_804E0258:
/* 804E0258  38 60 00 01 */	li r3, 1
/* 804E025C  48 00 00 08 */	b lbl_804E0264
lbl_804E0260:
/* 804E0260  38 60 00 01 */	li r3, 1
lbl_804E0264:
/* 804E0264  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E0268  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E026C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E0270  7C 08 03 A6 */	mtlr r0
/* 804E0274  38 21 00 20 */	addi r1, r1, 0x20
/* 804E0278  4E 80 00 20 */	blr 