lbl_80572EE8:
/* 80572EE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80572EEC  7C 08 02 A6 */	mflr r0
/* 80572EF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80572EF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80572EF8  4B B2 7F DD */	bl func_8009AED4
/* 80572EFC  81 83 09 9C */	lwz r12, 0x99c(r3)
/* 80572F00  7C 7D 1B 78 */	mr r29, r3
/* 80572F04  7C 9F 23 78 */	mr r31, r4
/* 80572F08  3B C0 00 00 */	li r30, 0
/* 80572F0C  7D 89 03 A6 */	mtctr r12
/* 80572F10  4E 80 04 21 */	bctrl 
/* 80572F14  7F A4 EB 78 */	mr r4, r29
/* 80572F18  38 60 00 08 */	li r3, 8
/* 80572F1C  4B E2 73 49 */	bl mDemo_Check
/* 80572F20  2C 03 00 00 */	cmpwi r3, 0
/* 80572F24  40 82 00 1C */	bne lbl_80572F40
/* 80572F28  7F A3 EB 78 */	mr r3, r29
/* 80572F2C  7F E4 FB 78 */	mr r4, r31
/* 80572F30  4B FF F4 B9 */	bl aNRST_think_init_proc
/* 80572F34  38 00 00 01 */	li r0, 1
/* 80572F38  3B C0 00 01 */	li r30, 1
/* 80572F3C  90 1D 09 A0 */	stw r0, 0x9a0(r29)
lbl_80572F40:
/* 80572F40  7F C3 F3 78 */	mr r3, r30
/* 80572F44  39 61 00 20 */	addi r11, r1, 0x20
/* 80572F48  4B B2 7F D9 */	bl func_8009AF20
/* 80572F4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80572F50  7C 08 03 A6 */	mtlr r0
/* 80572F54  38 21 00 20 */	addi r1, r1, 0x20
/* 80572F58  4E 80 00 20 */	blr 
