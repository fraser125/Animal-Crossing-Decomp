lbl_8058C0C8:
/* 8058C0C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058C0CC  7C 08 02 A6 */	mflr r0
/* 8058C0D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058C0D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C0D8  4B B0 ED FD */	bl func_8009AED4
/* 8058C0DC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058C0E0  7C 7D 1B 78 */	mr r29, r3
/* 8058C0E4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058C0E8  7C 9E 23 78 */	mr r30, r4
/* 8058C0EC  3F E5 00 02 */	addis r31, r5, 2
/* 8058C0F0  38 A0 FF FF */	li r5, -1
/* 8058C0F4  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8058C0F8  38 C0 00 01 */	li r6, 1
/* 8058C0FC  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058C100  7D 89 03 A6 */	mtctr r12
/* 8058C104  4E 80 04 21 */	bctrl 
/* 8058C108  2C 03 00 00 */	cmpwi r3, 0
/* 8058C10C  40 82 00 24 */	bne lbl_8058C130
/* 8058C110  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8058C114  7F A3 EB 78 */	mr r3, r29
/* 8058C118  7F C4 F3 78 */	mr r4, r30
/* 8058C11C  38 A0 FF FF */	li r5, -1
/* 8058C120  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8058C124  38 C0 00 02 */	li r6, 2
/* 8058C128  7D 89 03 A6 */	mtctr r12
/* 8058C12C  4E 80 04 21 */	bctrl 
lbl_8058C130:
/* 8058C130  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C134  4B B0 ED ED */	bl func_8009AF20
/* 8058C138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058C13C  7C 08 03 A6 */	mtlr r0
/* 8058C140  38 21 00 20 */	addi r1, r1, 0x20
/* 8058C144  4E 80 00 20 */	blr 
