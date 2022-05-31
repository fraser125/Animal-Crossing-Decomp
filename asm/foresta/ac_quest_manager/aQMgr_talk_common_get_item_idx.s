lbl_80485D74:
/* 80485D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485D78  7C 08 02 A6 */	mflr r0
/* 80485D7C  38 C0 FF FF */	li r6, -1
/* 80485D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485D84  80 03 09 30 */	lwz r0, 0x930(r3)
/* 80485D88  1C 80 00 34 */	mulli r4, r0, 0x34
/* 80485D8C  38 84 02 14 */	addi r4, r4, 0x214
/* 80485D90  7C 83 22 14 */	add r4, r3, r4
/* 80485D94  80 A4 00 08 */	lwz r5, 8(r4)
/* 80485D98  28 05 00 00 */	cmplwi r5, 0
/* 80485D9C  41 82 00 90 */	beq lbl_80485E2C
/* 80485DA0  88 05 00 00 */	lbz r0, 0(r5)
/* 80485DA4  54 03 D7 BF */	rlwinm. r3, r0, 0x1a, 0x1e, 0x1f
/* 80485DA8  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80485DAC  40 82 00 0C */	bne lbl_80485DB8
/* 80485DB0  80 C4 00 30 */	lwz r6, 0x30(r4)
/* 80485DB4  48 00 00 78 */	b lbl_80485E2C
lbl_80485DB8:
/* 80485DB8  2C 03 00 01 */	cmpwi r3, 1
/* 80485DBC  40 82 00 14 */	bne lbl_80485DD0
/* 80485DC0  88 05 00 2A */	lbz r0, 0x2a(r5)
/* 80485DC4  54 00 C0 0A */	rlwinm r0, r0, 0x18, 0, 5
/* 80485DC8  7C 06 DE 70 */	srawi r6, r0, 0x1b
/* 80485DCC  48 00 00 60 */	b lbl_80485E2C
lbl_80485DD0:
/* 80485DD0  2C 03 00 02 */	cmpwi r3, 2
/* 80485DD4  40 82 00 58 */	bne lbl_80485E2C
/* 80485DD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80485DDC  2C 00 00 05 */	cmpwi r0, 5
/* 80485DE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80485DE4  A0 85 00 0C */	lhz r4, 0xc(r5)
/* 80485DE8  3C 63 00 02 */	addis r3, r3, 2
/* 80485DEC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80485DF0  41 82 00 24 */	beq lbl_80485E14
/* 80485DF4  40 80 00 30 */	bge lbl_80485E24
/* 80485DF8  2C 00 00 04 */	cmpwi r0, 4
/* 80485DFC  40 80 00 08 */	bge lbl_80485E04
/* 80485E00  48 00 00 24 */	b lbl_80485E24
lbl_80485E04:
/* 80485E04  38 80 00 03 */	li r4, 3
/* 80485E08  4B F5 AA 41 */	bl mPr_GetPossessionItemIdxItem1Category
/* 80485E0C  7C 66 1B 78 */	mr r6, r3
/* 80485E10  48 00 00 1C */	b lbl_80485E2C
lbl_80485E14:
/* 80485E14  38 80 00 0D */	li r4, 0xd
/* 80485E18  4B F5 AA 31 */	bl mPr_GetPossessionItemIdxItem1Category
/* 80485E1C  7C 66 1B 78 */	mr r6, r3
/* 80485E20  48 00 00 0C */	b lbl_80485E2C
lbl_80485E24:
/* 80485E24  4B F5 A9 05 */	bl mPr_GetPossessionItemIdx
/* 80485E28  7C 66 1B 78 */	mr r6, r3
lbl_80485E2C:
/* 80485E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485E30  7C C3 33 78 */	mr r3, r6
/* 80485E34  7C 08 03 A6 */	mtlr r0
/* 80485E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80485E3C  4E 80 00 20 */	blr 
