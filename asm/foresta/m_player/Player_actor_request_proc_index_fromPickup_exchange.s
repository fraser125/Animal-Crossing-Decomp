lbl_804EEE5C:
/* 804EEE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EEE60  7C 08 02 A6 */	mflr r0
/* 804EEE64  2C 04 00 07 */	cmpwi r4, 7
/* 804EEE68  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EEE6C  40 82 00 24 */	bne lbl_804EEE90
/* 804EEE70  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804EEE74  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804EEE78  38 C4 83 54 */	addi r6, r4, lit_7381@l /* 0x80648354@l */
/* 804EEE7C  C0 45 65 68 */	lfs f2, lit_604@l(r5)  /* 0x80646568@l */
/* 804EEE80  C0 26 00 00 */	lfs f1, 0(r6)
/* 804EEE84  38 80 00 00 */	li r4, 0
/* 804EEE88  38 A0 00 22 */	li r5, 0x22
/* 804EEE8C  4B FF 6D 71 */	bl func_804E5BFC
lbl_804EEE90:
/* 804EEE90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EEE94  7C 08 03 A6 */	mtlr r0
/* 804EEE98  38 21 00 10 */	addi r1, r1, 0x10
/* 804EEE9C  4E 80 00 20 */	blr 
