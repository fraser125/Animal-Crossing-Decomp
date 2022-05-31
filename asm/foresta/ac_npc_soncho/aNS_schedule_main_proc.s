lbl_8057EF84:
/* 8057EF84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057EF88  7C 08 02 A6 */	mflr r0
/* 8057EF8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057EF90  39 61 00 20 */	addi r11, r1, 0x20
/* 8057EF94  4B B1 BF 41 */	bl func_8009AED4
/* 8057EF98  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057EF9C  7C 7D 1B 78 */	mr r29, r3
/* 8057EFA0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057EFA4  7C 9E 23 78 */	mr r30, r4
/* 8057EFA8  3F E5 00 02 */	addis r31, r5, 2
/* 8057EFAC  38 A0 FF FF */	li r5, -1
/* 8057EFB0  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8057EFB4  38 C0 00 01 */	li r6, 1
/* 8057EFB8  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8057EFBC  7D 89 03 A6 */	mtctr r12
/* 8057EFC0  4E 80 04 21 */	bctrl 
/* 8057EFC4  2C 03 00 00 */	cmpwi r3, 0
/* 8057EFC8  40 82 00 24 */	bne lbl_8057EFEC
/* 8057EFCC  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8057EFD0  7F A3 EB 78 */	mr r3, r29
/* 8057EFD4  7F C4 F3 78 */	mr r4, r30
/* 8057EFD8  38 A0 FF FF */	li r5, -1
/* 8057EFDC  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8057EFE0  38 C0 00 02 */	li r6, 2
/* 8057EFE4  7D 89 03 A6 */	mtctr r12
/* 8057EFE8  4E 80 04 21 */	bctrl 
lbl_8057EFEC:
/* 8057EFEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8057EFF0  4B B1 BF 31 */	bl func_8009AF20
/* 8057EFF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057EFF8  7C 08 03 A6 */	mtlr r0
/* 8057EFFC  38 21 00 20 */	addi r1, r1, 0x20
/* 8057F000  4E 80 00 20 */	blr 
