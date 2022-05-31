lbl_8055EE38:
/* 8055EE38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055EE3C  7C 08 02 A6 */	mflr r0
/* 8055EE40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055EE44  39 61 00 20 */	addi r11, r1, 0x20
/* 8055EE48  4B B3 C0 8D */	bl func_8009AED4
/* 8055EE4C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055EE50  7C 7D 1B 78 */	mr r29, r3
/* 8055EE54  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055EE58  7C 9E 23 78 */	mr r30, r4
/* 8055EE5C  3F E5 00 02 */	addis r31, r5, 2
/* 8055EE60  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8055EE64  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8055EE68  7D 89 03 A6 */	mtctr r12
/* 8055EE6C  4E 80 04 21 */	bctrl 
/* 8055EE70  2C 03 00 01 */	cmpwi r3, 1
/* 8055EE74  40 82 00 5C */	bne lbl_8055EED0
/* 8055EE78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055EE7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055EE80  3C 63 00 03 */	addis r3, r3, 3
/* 8055EE84  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 8055EE88  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8055EE8C  41 82 00 24 */	beq lbl_8055EEB0
/* 8055EE90  7F A3 EB 78 */	mr r3, r29
/* 8055EE94  4B E1 55 AD */	bl Actor_delete
/* 8055EE98  38 00 00 00 */	li r0, 0
/* 8055EE9C  7F A3 EB 78 */	mr r3, r29
/* 8055EEA0  90 1D 01 6C */	stw r0, 0x16c(r29)
/* 8055EEA4  90 1D 01 60 */	stw r0, 0x160(r29)
/* 8055EEA8  4B E7 12 A1 */	bl mNpc_RenewalSetNpc
/* 8055EEAC  48 00 00 24 */	b lbl_8055EED0
lbl_8055EEB0:
/* 8055EEB0  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 8055EEB4  3C 60 80 6B */	lis r3, ct_data@ha /* 0x806AA294@ha */
/* 8055EEB8  38 A3 A2 94 */	addi r5, r3, ct_data@l /* 0x806AA294@l */
/* 8055EEBC  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 8055EEC0  7F A3 EB 78 */	mr r3, r29
/* 8055EEC4  7F C4 F3 78 */	mr r4, r30
/* 8055EEC8  7D 89 03 A6 */	mtctr r12
/* 8055EECC  4E 80 04 21 */	bctrl 
lbl_8055EED0:
/* 8055EED0  39 61 00 20 */	addi r11, r1, 0x20
/* 8055EED4  4B B3 C0 4D */	bl func_8009AF20
/* 8055EED8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055EEDC  7C 08 03 A6 */	mtlr r0
/* 8055EEE0  38 21 00 20 */	addi r1, r1, 0x20
/* 8055EEE4  4E 80 00 20 */	blr 
