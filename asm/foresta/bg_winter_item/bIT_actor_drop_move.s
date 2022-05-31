lbl_804C2230:
/* 804C2230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C2234  7C 08 02 A6 */	mflr r0
/* 804C2238  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C223C  39 61 00 20 */	addi r11, r1, 0x20
/* 804C2240  4B BD 8C 95 */	bl func_8009AED4
/* 804C2244  7C 7D 1B 78 */	mr r29, r3
/* 804C2248  3B C0 00 00 */	li r30, 0
/* 804C224C  83 E3 00 00 */	lwz r31, 0(r3)
/* 804C2250  48 00 00 8C */	b lbl_804C22DC
lbl_804C2254:
/* 804C2254  A8 7F 00 92 */	lha r3, 0x92(r31)
/* 804C2258  2C 03 00 00 */	cmpwi r3, 0
/* 804C225C  40 81 00 10 */	ble lbl_804C226C
/* 804C2260  38 03 FF FF */	addi r0, r3, -1
/* 804C2264  B0 1F 00 92 */	sth r0, 0x92(r31)
/* 804C2268  48 00 00 6C */	b lbl_804C22D4
lbl_804C226C:
/* 804C226C  A8 7F 00 80 */	lha r3, 0x80(r31)
/* 804C2270  2C 03 00 00 */	cmpwi r3, 0
/* 804C2274  40 81 00 34 */	ble lbl_804C22A8
/* 804C2278  38 03 FF FF */	addi r0, r3, -1
/* 804C227C  B0 1F 00 80 */	sth r0, 0x80(r31)
/* 804C2280  A8 1F 00 80 */	lha r0, 0x80(r31)
/* 804C2284  2C 00 00 00 */	cmpwi r0, 0
/* 804C2288  40 82 00 4C */	bne lbl_804C22D4
/* 804C228C  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C2290  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804C2294  41 82 00 40 */	beq lbl_804C22D4
/* 804C2298  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C229C  38 60 00 2A */	li r3, 0x2a
/* 804C22A0  48 16 BD 09 */	bl sAdo_OngenTrgStart
/* 804C22A4  48 00 00 30 */	b lbl_804C22D4
lbl_804C22A8:
/* 804C22A8  80 1F 00 00 */	lwz r0, 0(r31)
/* 804C22AC  28 00 00 00 */	cmplwi r0, 0
/* 804C22B0  41 82 00 24 */	beq lbl_804C22D4
/* 804C22B4  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 804C22B8  38 7F 00 38 */	addi r3, r31, 0x38
/* 804C22BC  38 84 F0 50 */	addi r4, r4, data_8065F050@l /* 0x8065F050@l */
/* 804C22C0  4B EF 8B FD */	bl xyz_t_move
/* 804C22C4  81 9F 00 00 */	lwz r12, 0(r31)
/* 804C22C8  7F E3 FB 78 */	mr r3, r31
/* 804C22CC  7D 89 03 A6 */	mtctr r12
/* 804C22D0  4E 80 04 21 */	bctrl 
lbl_804C22D4:
/* 804C22D4  3B DE 00 01 */	addi r30, r30, 1
/* 804C22D8  3B FF 00 A8 */	addi r31, r31, 0xa8
lbl_804C22DC:
/* 804C22DC  A8 1D 00 04 */	lha r0, 4(r29)
/* 804C22E0  7C 1E 00 00 */	cmpw r30, r0
/* 804C22E4  41 80 FF 70 */	blt lbl_804C2254
/* 804C22E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804C22EC  4B BD 8C 35 */	bl func_8009AF20
/* 804C22F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C22F4  7C 08 03 A6 */	mtlr r0
/* 804C22F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804C22FC  4E 80 00 20 */	blr 
