lbl_8057E89C:
/* 8057E89C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057E8A0  7C 08 02 A6 */	mflr r0
/* 8057E8A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057E8A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057E8AC  4B B1 C6 29 */	bl func_8009AED4
/* 8057E8B0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057E8B4  7C 7D 1B 78 */	mr r29, r3
/* 8057E8B8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057E8BC  7C 9E 23 78 */	mr r30, r4
/* 8057E8C0  3F E5 00 02 */	addis r31, r5, 2
/* 8057E8C4  38 A0 FF FF */	li r5, -1
/* 8057E8C8  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8057E8CC  38 C0 00 01 */	li r6, 1
/* 8057E8D0  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8057E8D4  7D 89 03 A6 */	mtctr r12
/* 8057E8D8  4E 80 04 21 */	bctrl 
/* 8057E8DC  2C 03 00 00 */	cmpwi r3, 0
/* 8057E8E0  40 82 00 24 */	bne lbl_8057E904
/* 8057E8E4  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8057E8E8  7F A3 EB 78 */	mr r3, r29
/* 8057E8EC  7F C4 F3 78 */	mr r4, r30
/* 8057E8F0  38 A0 FF FF */	li r5, -1
/* 8057E8F4  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8057E8F8  38 C0 00 02 */	li r6, 2
/* 8057E8FC  7D 89 03 A6 */	mtctr r12
/* 8057E900  4E 80 04 21 */	bctrl 
lbl_8057E904:
/* 8057E904  39 61 00 20 */	addi r11, r1, 0x20
/* 8057E908  4B B1 C6 19 */	bl func_8009AF20
/* 8057E90C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057E910  7C 08 03 A6 */	mtlr r0
/* 8057E914  38 21 00 20 */	addi r1, r1, 0x20
/* 8057E918  4E 80 00 20 */	blr 