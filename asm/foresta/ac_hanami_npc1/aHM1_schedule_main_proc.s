lbl_8052A8C0:
/* 8052A8C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052A8C4  7C 08 02 A6 */	mflr r0
/* 8052A8C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052A8CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8052A8D0  4B B7 06 05 */	bl func_8009AED4
/* 8052A8D4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052A8D8  7C 7D 1B 78 */	mr r29, r3
/* 8052A8DC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052A8E0  7C 9E 23 78 */	mr r30, r4
/* 8052A8E4  3F E5 00 02 */	addis r31, r5, 2
/* 8052A8E8  38 A0 FF FF */	li r5, -1
/* 8052A8EC  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8052A8F0  38 C0 00 01 */	li r6, 1
/* 8052A8F4  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8052A8F8  7D 89 03 A6 */	mtctr r12
/* 8052A8FC  4E 80 04 21 */	bctrl 
/* 8052A900  2C 03 00 00 */	cmpwi r3, 0
/* 8052A904  40 82 00 24 */	bne lbl_8052A928
/* 8052A908  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8052A90C  7F A3 EB 78 */	mr r3, r29
/* 8052A910  7F C4 F3 78 */	mr r4, r30
/* 8052A914  38 A0 FF FF */	li r5, -1
/* 8052A918  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8052A91C  38 C0 00 02 */	li r6, 2
/* 8052A920  7D 89 03 A6 */	mtctr r12
/* 8052A924  4E 80 04 21 */	bctrl 
lbl_8052A928:
/* 8052A928  39 61 00 20 */	addi r11, r1, 0x20
/* 8052A92C  4B B7 05 F5 */	bl func_8009AF20
/* 8052A930  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052A934  7C 08 03 A6 */	mtlr r0
/* 8052A938  38 21 00 20 */	addi r1, r1, 0x20
/* 8052A93C  4E 80 00 20 */	blr 
