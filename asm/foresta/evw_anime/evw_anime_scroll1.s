lbl_80372BF0:
/* 80372BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80372BF4  7C 08 02 A6 */	mflr r0
/* 80372BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80372BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80372C00  7C 9F 23 78 */	mr r31, r4
/* 80372C04  7C A4 2B 78 */	mr r4, r5
/* 80372C08  93 C1 00 08 */	stw r30, 8(r1)
/* 80372C0C  7C 7E 1B 78 */	mr r30, r3
/* 80372C10  4B FF FF 95 */	bl func_80372BA4
/* 80372C14  80 DE 00 00 */	lwz r6, 0(r30)
/* 80372C18  57 E0 14 3A */	rlwinm r0, r31, 2, 0x10, 0x1d
/* 80372C1C  64 05 DB 06 */	oris r5, r0, 0xdb06
/* 80372C20  80 86 03 20 */	lwz r4, 0x320(r6)
/* 80372C24  38 04 00 08 */	addi r0, r4, 8
/* 80372C28  90 06 03 20 */	stw r0, 0x320(r6)
/* 80372C2C  90 A4 00 00 */	stw r5, 0(r4)
/* 80372C30  90 64 00 04 */	stw r3, 4(r4)
/* 80372C34  80 86 02 D0 */	lwz r4, 0x2d0(r6)
/* 80372C38  38 04 00 08 */	addi r0, r4, 8
/* 80372C3C  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 80372C40  90 A4 00 00 */	stw r5, 0(r4)
/* 80372C44  90 64 00 04 */	stw r3, 4(r4)
/* 80372C48  80 86 02 E0 */	lwz r4, 0x2e0(r6)
/* 80372C4C  38 04 00 08 */	addi r0, r4, 8
/* 80372C50  90 06 02 E0 */	stw r0, 0x2e0(r6)
/* 80372C54  90 A4 00 00 */	stw r5, 0(r4)
/* 80372C58  90 64 00 04 */	stw r3, 4(r4)
/* 80372C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372C60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80372C64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80372C68  7C 08 03 A6 */	mtlr r0
/* 80372C6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80372C70  4E 80 00 20 */	blr 
