lbl_80478CDC:
/* 80478CDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80478CE0  7C 08 02 A6 */	mflr r0
/* 80478CE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80478CE8  80 83 00 00 */	lwz r4, 0(r3)
/* 80478CEC  80 03 00 04 */	lwz r0, 4(r3)
/* 80478CF0  90 81 00 08 */	stw r4, 8(r1)
/* 80478CF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80478CF8  80 03 00 08 */	lwz r0, 8(r3)
/* 80478CFC  38 61 00 08 */	addi r3, r1, 8
/* 80478D00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80478D04  4B F2 DA 09 */	bl mFI_GetUnitCol
/* 80478D08  88 83 00 00 */	lbz r4, 0(r3)
/* 80478D0C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80478D10  54 84 F6 FE */	rlwinm r4, r4, 0x1e, 0x1b, 0x1f
/* 80478D14  54 00 DE FE */	rlwinm r0, r0, 0x1b, 0x1b, 0x1f
/* 80478D18  7C 04 00 00 */	cmpw r4, r0
/* 80478D1C  40 82 00 3C */	bne lbl_80478D58
/* 80478D20  88 03 00 01 */	lbz r0, 1(r3)
/* 80478D24  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 80478D28  7C 04 00 40 */	cmplw r4, r0
/* 80478D2C  40 82 00 2C */	bne lbl_80478D58
/* 80478D30  88 03 00 02 */	lbz r0, 2(r3)
/* 80478D34  54 00 EE FE */	rlwinm r0, r0, 0x1d, 0x1b, 0x1f
/* 80478D38  7C 04 00 40 */	cmplw r4, r0
/* 80478D3C  40 82 00 1C */	bne lbl_80478D58
/* 80478D40  A0 03 00 02 */	lhz r0, 2(r3)
/* 80478D44  54 00 D6 FE */	rlwinm r0, r0, 0x1a, 0x1b, 0x1f
/* 80478D48  7C 04 00 00 */	cmpw r4, r0
/* 80478D4C  40 82 00 0C */	bne lbl_80478D58
/* 80478D50  38 60 00 01 */	li r3, 1
/* 80478D54  48 00 00 08 */	b lbl_80478D5C
lbl_80478D58:
/* 80478D58  38 60 00 00 */	li r3, 0
lbl_80478D5C:
/* 80478D5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80478D60  7C 08 03 A6 */	mtlr r0
/* 80478D64  38 21 00 20 */	addi r1, r1, 0x20
/* 80478D68  4E 80 00 20 */	blr 