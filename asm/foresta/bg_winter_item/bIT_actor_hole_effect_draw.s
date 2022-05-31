lbl_804C1B00:
/* 804C1B00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C1B04  7C 08 02 A6 */	mflr r0
/* 804C1B08  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C1B0C  A0 05 00 20 */	lhz r0, 0x20(r5)
/* 804C1B10  28 00 00 00 */	cmplwi r0, 0
/* 804C1B14  40 82 00 54 */	bne lbl_804C1B68
/* 804C1B18  A8 05 00 16 */	lha r0, 0x16(r5)
/* 804C1B1C  2C 00 00 00 */	cmpwi r0, 0
/* 804C1B20  41 82 00 48 */	beq lbl_804C1B68
/* 804C1B24  3C C0 80 64 */	lis r6, lit_1546@ha /* 0x80646194@ha */
/* 804C1B28  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 804C1B2C  C0 26 61 94 */	lfs f1, lit_1546@l(r6)  /* 0x80646194@l */
/* 804C1B30  38 00 00 00 */	li r0, 0
/* 804C1B34  7C A6 2B 78 */	mr r6, r5
/* 804C1B38  38 E5 00 10 */	addi r7, r5, 0x10
/* 804C1B3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C1B40  39 01 00 10 */	addi r8, r1, 0x10
/* 804C1B44  39 20 00 FF */	li r9, 0xff
/* 804C1B48  39 40 00 00 */	li r10, 0
/* 804C1B4C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804C1B50  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804C1B54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804C1B58  90 01 00 08 */	stw r0, 8(r1)
/* 804C1B5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C1B60  A0 A5 00 18 */	lhz r5, 0x18(r5)
/* 804C1B64  48 00 1D 05 */	bl bit_cmn_single_drawS
lbl_804C1B68:
/* 804C1B68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C1B6C  7C 08 03 A6 */	mtlr r0
/* 804C1B70  38 21 00 20 */	addi r1, r1, 0x20
/* 804C1B74  4E 80 00 20 */	blr 
