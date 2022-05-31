lbl_8051DE58:
/* 8051DE58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051DE5C  7C 08 02 A6 */	mflr r0
/* 8051DE60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051DE64  39 61 00 20 */	addi r11, r1, 0x20
/* 8051DE68  4B B7 D0 6D */	bl func_8009AED4
/* 8051DE6C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051DE70  7C 7D 1B 78 */	mr r29, r3
/* 8051DE74  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051DE78  7C 9E 23 78 */	mr r30, r4
/* 8051DE7C  3F E5 00 02 */	addis r31, r5, 2
/* 8051DE80  38 A0 FF FF */	li r5, -1
/* 8051DE84  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8051DE88  38 C0 00 01 */	li r6, 1
/* 8051DE8C  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8051DE90  7D 89 03 A6 */	mtctr r12
/* 8051DE94  4E 80 04 21 */	bctrl 
/* 8051DE98  2C 03 00 00 */	cmpwi r3, 0
/* 8051DE9C  40 82 00 24 */	bne lbl_8051DEC0
/* 8051DEA0  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8051DEA4  7F A3 EB 78 */	mr r3, r29
/* 8051DEA8  7F C4 F3 78 */	mr r4, r30
/* 8051DEAC  38 A0 FF FF */	li r5, -1
/* 8051DEB0  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8051DEB4  38 C0 00 02 */	li r6, 2
/* 8051DEB8  7D 89 03 A6 */	mtctr r12
/* 8051DEBC  4E 80 04 21 */	bctrl 
lbl_8051DEC0:
/* 8051DEC0  39 61 00 20 */	addi r11, r1, 0x20
/* 8051DEC4  4B B7 D0 5D */	bl func_8009AF20
/* 8051DEC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051DECC  7C 08 03 A6 */	mtlr r0
/* 8051DED0  38 21 00 20 */	addi r1, r1, 0x20
/* 8051DED4  4E 80 00 20 */	blr 
