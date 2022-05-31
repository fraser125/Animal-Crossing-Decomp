lbl_804A034C:
/* 804A034C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A0350  7C 08 02 A6 */	mflr r0
/* 804A0354  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A0358  39 61 00 20 */	addi r11, r1, 0x20
/* 804A035C  4B BF AB 71 */	bl func_8009AECC
/* 804A0360  7C 7B 1B 78 */	mr r27, r3
/* 804A0364  83 C3 01 78 */	lwz r30, 0x178(r3)
/* 804A0368  83 A3 01 74 */	lwz r29, 0x174(r3)
/* 804A036C  28 1E 00 00 */	cmplwi r30, 0
/* 804A0370  41 82 00 5C */	beq lbl_804A03CC
/* 804A0374  3B 80 00 00 */	li r28, 0
/* 804A0378  3B E0 00 00 */	li r31, 0
/* 804A037C  48 00 00 48 */	b lbl_804A03C4
lbl_804A0380:
/* 804A0380  7C 9E FA 14 */	add r4, r30, r31
/* 804A0384  38 00 00 00 */	li r0, 0
/* 804A0388  A0 C4 00 14 */	lhz r6, 0x14(r4)
/* 804A038C  80 64 00 18 */	lwz r3, 0x18(r4)
/* 804A0390  28 06 24 00 */	cmplwi r6, 0x2400
/* 804A0394  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 804A0398  41 80 00 10 */	blt lbl_804A03A8
/* 804A039C  28 06 24 FF */	cmplwi r6, 0x24ff
/* 804A03A0  40 80 00 08 */	bge lbl_804A03A8
/* 804A03A4  38 00 00 01 */	li r0, 1
lbl_804A03A8:
/* 804A03A8  20 A0 00 00 */	subfic r5, r0, 0
/* 804A03AC  38 06 DC 00 */	addi r0, r6, -9216
/* 804A03B0  7C A5 29 10 */	subfe r5, r5, r5
/* 804A03B4  7C 05 28 38 */	and r5, r0, r5
/* 804A03B8  4B F3 94 15 */	bl mPlib_Load_PlayerTexAndPallet
/* 804A03BC  3B 9C 00 01 */	addi r28, r28, 1
/* 804A03C0  3B FF 00 54 */	addi r31, r31, 0x54
lbl_804A03C4:
/* 804A03C4  7C 1C E8 00 */	cmpw r28, r29
/* 804A03C8  41 80 FF B8 */	blt lbl_804A0380
lbl_804A03CC:
/* 804A03CC  80 7B 01 94 */	lwz r3, 0x194(r27)
/* 804A03D0  38 A0 00 FF */	li r5, 0xff
/* 804A03D4  80 9B 01 98 */	lwz r4, 0x198(r27)
/* 804A03D8  4B F3 93 F5 */	bl mPlib_Load_PlayerTexAndPallet
/* 804A03DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804A03E0  4B BF AB 39 */	bl func_8009AF18
/* 804A03E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A03E8  7C 08 03 A6 */	mtlr r0
/* 804A03EC  38 21 00 20 */	addi r1, r1, 0x20
/* 804A03F0  4E 80 00 20 */	blr 
