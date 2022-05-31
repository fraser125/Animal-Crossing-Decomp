lbl_805F7078:
/* 805F7078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F707C  7C 08 02 A6 */	mflr r0
/* 805F7080  38 A0 FF FF */	li r5, -1
/* 805F7084  38 C0 00 01 */	li r6, 1
/* 805F7088  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F708C  38 E0 FF FF */	li r7, -1
/* 805F7090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F7094  7C 7F 1B 78 */	mr r31, r3
/* 805F7098  4B FF BF CD */	bl mTG_open_board_init
/* 805F709C  7F E3 FB 78 */	mr r3, r31
/* 805F70A0  38 80 00 00 */	li r4, 0
/* 805F70A4  4B FF 8F 1D */	bl mTG_get_mail_pointer
/* 805F70A8  88 03 00 2E */	lbz r0, 0x2e(r3)
/* 805F70AC  28 00 00 03 */	cmplwi r0, 3
/* 805F70B0  40 82 00 10 */	bne lbl_805F70C0
/* 805F70B4  38 00 00 04 */	li r0, 4
/* 805F70B8  98 03 00 2E */	stb r0, 0x2e(r3)
/* 805F70BC  48 00 00 14 */	b lbl_805F70D0
lbl_805F70C0:
/* 805F70C0  28 00 00 00 */	cmplwi r0, 0
/* 805F70C4  40 82 00 0C */	bne lbl_805F70D0
/* 805F70C8  38 00 00 02 */	li r0, 2
/* 805F70CC  98 03 00 2E */	stb r0, 0x2e(r3)
lbl_805F70D0:
/* 805F70D0  88 63 00 31 */	lbz r3, 0x31(r3)
/* 805F70D4  38 03 20 00 */	addi r0, r3, 0x2000
/* 805F70D8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 805F70DC  4B DE 9A F1 */	bl mPr_SetItemCollectBit
/* 805F70E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F70E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F70E8  7C 08 03 A6 */	mtlr r0
/* 805F70EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805F70F0  4E 80 00 20 */	blr 
