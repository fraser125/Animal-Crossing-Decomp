lbl_804C9648:
/* 804C9648  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C964C  7C 08 02 A6 */	mflr r0
/* 804C9650  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C9654  39 61 00 20 */	addi r11, r1, 0x20
/* 804C9658  4B BD 18 7D */	bl func_8009AED4
/* 804C965C  7C 7D 1B 78 */	mr r29, r3
/* 804C9660  3B C0 00 00 */	li r30, 0
/* 804C9664  83 E3 00 00 */	lwz r31, 0(r3)
/* 804C9668  48 00 00 8C */	b lbl_804C96F4
lbl_804C966C:
/* 804C966C  A8 7F 00 92 */	lha r3, 0x92(r31)
/* 804C9670  2C 03 00 00 */	cmpwi r3, 0
/* 804C9674  40 81 00 10 */	ble lbl_804C9684
/* 804C9678  38 03 FF FF */	addi r0, r3, -1
/* 804C967C  B0 1F 00 92 */	sth r0, 0x92(r31)
/* 804C9680  48 00 00 6C */	b lbl_804C96EC
lbl_804C9684:
/* 804C9684  A8 7F 00 80 */	lha r3, 0x80(r31)
/* 804C9688  2C 03 00 00 */	cmpwi r3, 0
/* 804C968C  40 81 00 34 */	ble lbl_804C96C0
/* 804C9690  38 03 FF FF */	addi r0, r3, -1
/* 804C9694  B0 1F 00 80 */	sth r0, 0x80(r31)
/* 804C9698  A8 1F 00 80 */	lha r0, 0x80(r31)
/* 804C969C  2C 00 00 00 */	cmpwi r0, 0
/* 804C96A0  40 82 00 4C */	bne lbl_804C96EC
/* 804C96A4  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C96A8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804C96AC  41 82 00 40 */	beq lbl_804C96EC
/* 804C96B0  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C96B4  38 60 00 2A */	li r3, 0x2a
/* 804C96B8  48 16 48 F1 */	bl sAdo_OngenTrgStart
/* 804C96BC  48 00 00 30 */	b lbl_804C96EC
lbl_804C96C0:
/* 804C96C0  80 1F 00 00 */	lwz r0, 0(r31)
/* 804C96C4  28 00 00 00 */	cmplwi r0, 0
/* 804C96C8  41 82 00 24 */	beq lbl_804C96EC
/* 804C96CC  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 804C96D0  38 7F 00 38 */	addi r3, r31, 0x38
/* 804C96D4  38 84 F0 50 */	addi r4, r4, data_8065F050@l /* 0x8065F050@l */
/* 804C96D8  4B EF 17 E5 */	bl xyz_t_move
/* 804C96DC  81 9F 00 00 */	lwz r12, 0(r31)
/* 804C96E0  7F E3 FB 78 */	mr r3, r31
/* 804C96E4  7D 89 03 A6 */	mtctr r12
/* 804C96E8  4E 80 04 21 */	bctrl 
lbl_804C96EC:
/* 804C96EC  3B DE 00 01 */	addi r30, r30, 1
/* 804C96F0  3B FF 00 A8 */	addi r31, r31, 0xa8
lbl_804C96F4:
/* 804C96F4  A8 1D 00 04 */	lha r0, 4(r29)
/* 804C96F8  7C 1E 00 00 */	cmpw r30, r0
/* 804C96FC  41 80 FF 70 */	blt lbl_804C966C
/* 804C9700  39 61 00 20 */	addi r11, r1, 0x20
/* 804C9704  4B BD 18 1D */	bl func_8009AF20
/* 804C9708  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C970C  7C 08 03 A6 */	mtlr r0
/* 804C9710  38 21 00 20 */	addi r1, r1, 0x20
/* 804C9714  4E 80 00 20 */	blr 
