lbl_80471DBC:
/* 80471DBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80471DC0  7C 08 02 A6 */	mflr r0
/* 80471DC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80471DC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80471DCC  4B C2 90 FD */	bl func_8009AEC8
/* 80471DD0  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80471DD4  3B 40 00 00 */	li r26, 0
/* 80471DD8  3B A3 DF E8 */	addi r29, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80471DDC  3B C0 00 00 */	li r30, 0
/* 80471DE0  83 9D 00 00 */	lwz r28, 0(r29)
/* 80471DE4  3B E0 00 01 */	li r31, 1
/* 80471DE8  83 7D 00 04 */	lwz r27, 4(r29)
/* 80471DEC  48 00 00 40 */	b lbl_80471E2C
lbl_80471DF0:
/* 80471DF0  88 1B 00 00 */	lbz r0, 0(r27)
/* 80471DF4  28 00 00 00 */	cmplwi r0, 0
/* 80471DF8  41 82 00 28 */	beq lbl_80471E20
/* 80471DFC  A0 7C 00 00 */	lhz r3, 0(r28)
/* 80471E00  4B FF E3 A1 */	bl func_804701A0
/* 80471E04  A0 63 00 2E */	lhz r3, 0x2e(r3)
/* 80471E08  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 80471E0C  40 82 00 0C */	bne lbl_80471E18
/* 80471E10  54 60 97 FF */	rlwinm. r0, r3, 0x12, 0x1f, 0x1f
/* 80471E14  41 82 00 0C */	beq lbl_80471E20
lbl_80471E18:
/* 80471E18  9B DC 01 2C */	stb r30, 0x12c(r28)
/* 80471E1C  9B FC 01 2D */	stb r31, 0x12d(r28)
lbl_80471E20:
/* 80471E20  3B 7B 00 01 */	addi r27, r27, 1
/* 80471E24  3B 9C 08 58 */	addi r28, r28, 0x858
/* 80471E28  3B 5A 00 01 */	addi r26, r26, 1
lbl_80471E2C:
/* 80471E2C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80471E30  7C 1A 00 00 */	cmpw r26, r0
/* 80471E34  41 80 FF BC */	blt lbl_80471DF0
/* 80471E38  39 61 00 20 */	addi r11, r1, 0x20
/* 80471E3C  4B C2 90 D9 */	bl func_8009AF14
/* 80471E40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80471E44  7C 08 03 A6 */	mtlr r0
/* 80471E48  38 21 00 20 */	addi r1, r1, 0x20
/* 80471E4C  4E 80 00 20 */	blr 
