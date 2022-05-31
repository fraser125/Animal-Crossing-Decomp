lbl_80520BD0:
/* 80520BD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80520BD4  7C 08 02 A6 */	mflr r0
/* 80520BD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80520BDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80520BE0  4B B7 A2 F5 */	bl func_8009AED4
/* 80520BE4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80520BE8  7C 7D 1B 78 */	mr r29, r3
/* 80520BEC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80520BF0  7C 9E 23 78 */	mr r30, r4
/* 80520BF4  3F E5 00 02 */	addis r31, r5, 2
/* 80520BF8  38 A0 FF FF */	li r5, -1
/* 80520BFC  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80520C00  38 C0 00 01 */	li r6, 1
/* 80520C04  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80520C08  7D 89 03 A6 */	mtctr r12
/* 80520C0C  4E 80 04 21 */	bctrl 
/* 80520C10  2C 03 00 00 */	cmpwi r3, 0
/* 80520C14  40 82 00 24 */	bne lbl_80520C38
/* 80520C18  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80520C1C  7F A3 EB 78 */	mr r3, r29
/* 80520C20  7F C4 F3 78 */	mr r4, r30
/* 80520C24  38 A0 FF FF */	li r5, -1
/* 80520C28  81 86 01 20 */	lwz r12, 0x120(r6)
/* 80520C2C  38 C0 00 02 */	li r6, 2
/* 80520C30  7D 89 03 A6 */	mtctr r12
/* 80520C34  4E 80 04 21 */	bctrl 
lbl_80520C38:
/* 80520C38  39 61 00 20 */	addi r11, r1, 0x20
/* 80520C3C  4B B7 A2 E5 */	bl func_8009AF20
/* 80520C40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80520C44  7C 08 03 A6 */	mtlr r0
/* 80520C48  38 21 00 20 */	addi r1, r1, 0x20
/* 80520C4C  4E 80 00 20 */	blr 
