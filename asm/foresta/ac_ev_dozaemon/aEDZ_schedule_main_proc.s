lbl_8051EF64:
/* 8051EF64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051EF68  7C 08 02 A6 */	mflr r0
/* 8051EF6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051EF70  39 61 00 20 */	addi r11, r1, 0x20
/* 8051EF74  4B B7 BF 61 */	bl func_8009AED4
/* 8051EF78  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051EF7C  7C 7D 1B 78 */	mr r29, r3
/* 8051EF80  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051EF84  7C 9E 23 78 */	mr r30, r4
/* 8051EF88  3F E5 00 02 */	addis r31, r5, 2
/* 8051EF8C  38 A0 FF FF */	li r5, -1
/* 8051EF90  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8051EF94  38 C0 00 01 */	li r6, 1
/* 8051EF98  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8051EF9C  7D 89 03 A6 */	mtctr r12
/* 8051EFA0  4E 80 04 21 */	bctrl 
/* 8051EFA4  2C 03 00 00 */	cmpwi r3, 0
/* 8051EFA8  40 82 00 24 */	bne lbl_8051EFCC
/* 8051EFAC  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8051EFB0  7F A3 EB 78 */	mr r3, r29
/* 8051EFB4  7F C4 F3 78 */	mr r4, r30
/* 8051EFB8  38 A0 FF FF */	li r5, -1
/* 8051EFBC  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8051EFC0  38 C0 00 02 */	li r6, 2
/* 8051EFC4  7D 89 03 A6 */	mtctr r12
/* 8051EFC8  4E 80 04 21 */	bctrl 
lbl_8051EFCC:
/* 8051EFCC  39 61 00 20 */	addi r11, r1, 0x20
/* 8051EFD0  4B B7 BF 51 */	bl func_8009AF20
/* 8051EFD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051EFD8  7C 08 03 A6 */	mtlr r0
/* 8051EFDC  38 21 00 20 */	addi r1, r1, 0x20
/* 8051EFE0  4E 80 00 20 */	blr 
