lbl_8056A78C:
/* 8056A78C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056A790  7C 08 02 A6 */	mflr r0
/* 8056A794  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056A798  39 61 00 20 */	addi r11, r1, 0x20
/* 8056A79C  4B B3 07 39 */	bl func_8009AED4
/* 8056A7A0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056A7A4  7C 7D 1B 78 */	mr r29, r3
/* 8056A7A8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056A7AC  7C 9E 23 78 */	mr r30, r4
/* 8056A7B0  3F E5 00 02 */	addis r31, r5, 2
/* 8056A7B4  38 A0 FF FF */	li r5, -1
/* 8056A7B8  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8056A7BC  38 C0 00 01 */	li r6, 1
/* 8056A7C0  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8056A7C4  7D 89 03 A6 */	mtctr r12
/* 8056A7C8  4E 80 04 21 */	bctrl 
/* 8056A7CC  2C 03 00 00 */	cmpwi r3, 0
/* 8056A7D0  40 82 00 24 */	bne lbl_8056A7F4
/* 8056A7D4  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8056A7D8  7F A3 EB 78 */	mr r3, r29
/* 8056A7DC  7F C4 F3 78 */	mr r4, r30
/* 8056A7E0  38 A0 FF FF */	li r5, -1
/* 8056A7E4  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8056A7E8  38 C0 00 02 */	li r6, 2
/* 8056A7EC  7D 89 03 A6 */	mtctr r12
/* 8056A7F0  4E 80 04 21 */	bctrl 
lbl_8056A7F4:
/* 8056A7F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8056A7F8  4B B3 07 29 */	bl func_8009AF20
/* 8056A7FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056A800  7C 08 03 A6 */	mtlr r0
/* 8056A804  38 21 00 20 */	addi r1, r1, 0x20
/* 8056A808  4E 80 00 20 */	blr 
