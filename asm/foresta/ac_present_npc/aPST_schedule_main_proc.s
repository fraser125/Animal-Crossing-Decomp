lbl_80588418:
/* 80588418  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058841C  7C 08 02 A6 */	mflr r0
/* 80588420  90 01 00 24 */	stw r0, 0x24(r1)
/* 80588424  39 61 00 20 */	addi r11, r1, 0x20
/* 80588428  4B B1 2A AD */	bl func_8009AED4
/* 8058842C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80588430  7C 7D 1B 78 */	mr r29, r3
/* 80588434  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80588438  7C 9E 23 78 */	mr r30, r4
/* 8058843C  3F E5 00 02 */	addis r31, r5, 2
/* 80588440  38 A0 FF FF */	li r5, -1
/* 80588444  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80588448  38 C0 00 01 */	li r6, 1
/* 8058844C  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80588450  7D 89 03 A6 */	mtctr r12
/* 80588454  4E 80 04 21 */	bctrl 
/* 80588458  2C 03 00 00 */	cmpwi r3, 0
/* 8058845C  40 82 00 24 */	bne lbl_80588480
/* 80588460  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80588464  7F A3 EB 78 */	mr r3, r29
/* 80588468  7F C4 F3 78 */	mr r4, r30
/* 8058846C  38 A0 FF FF */	li r5, -1
/* 80588470  81 86 01 20 */	lwz r12, 0x120(r6)
/* 80588474  38 C0 00 02 */	li r6, 2
/* 80588478  7D 89 03 A6 */	mtctr r12
/* 8058847C  4E 80 04 21 */	bctrl 
lbl_80588480:
/* 80588480  39 61 00 20 */	addi r11, r1, 0x20
/* 80588484  4B B1 2A 9D */	bl func_8009AF20
/* 80588488  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058848C  7C 08 03 A6 */	mtlr r0
/* 80588490  38 21 00 20 */	addi r1, r1, 0x20
/* 80588494  4E 80 00 20 */	blr 
