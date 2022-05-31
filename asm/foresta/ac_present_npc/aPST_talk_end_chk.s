lbl_80587F4C:
/* 80587F4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80587F50  7C 08 02 A6 */	mflr r0
/* 80587F54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80587F58  39 61 00 20 */	addi r11, r1, 0x20
/* 80587F5C  4B B1 2F 79 */	bl func_8009AED4
/* 80587F60  81 83 09 A4 */	lwz r12, 0x9a4(r3)
/* 80587F64  7C 7F 1B 78 */	mr r31, r3
/* 80587F68  3B A0 00 00 */	li r29, 0
/* 80587F6C  7C 9E 23 78 */	mr r30, r4
/* 80587F70  7D 89 03 A6 */	mtctr r12
/* 80587F74  4E 80 04 21 */	bctrl 
/* 80587F78  7F E4 FB 78 */	mr r4, r31
/* 80587F7C  38 60 00 08 */	li r3, 8
/* 80587F80  4B E1 22 E5 */	bl mDemo_Check
/* 80587F84  2C 03 00 00 */	cmpwi r3, 0
/* 80587F88  40 82 00 18 */	bne lbl_80587FA0
/* 80587F8C  80 BF 09 98 */	lwz r5, 0x998(r31)
/* 80587F90  7F E3 FB 78 */	mr r3, r31
/* 80587F94  7F C4 F3 78 */	mr r4, r30
/* 80587F98  48 00 02 F9 */	bl aPST_setup_think_proc
/* 80587F9C  3B A0 00 01 */	li r29, 1
lbl_80587FA0:
/* 80587FA0  7F A3 EB 78 */	mr r3, r29
/* 80587FA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80587FA8  4B B1 2F 79 */	bl func_8009AF20
/* 80587FAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80587FB0  7C 08 03 A6 */	mtlr r0
/* 80587FB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80587FB8  4E 80 00 20 */	blr 
