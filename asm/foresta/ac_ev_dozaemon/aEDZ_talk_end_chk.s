lbl_8051EB44:
/* 8051EB44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051EB48  7C 08 02 A6 */	mflr r0
/* 8051EB4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051EB50  39 61 00 20 */	addi r11, r1, 0x20
/* 8051EB54  4B B7 C3 81 */	bl func_8009AED4
/* 8051EB58  81 83 09 98 */	lwz r12, 0x998(r3)
/* 8051EB5C  7C 7F 1B 78 */	mr r31, r3
/* 8051EB60  3B A0 00 00 */	li r29, 0
/* 8051EB64  7C 9E 23 78 */	mr r30, r4
/* 8051EB68  7D 89 03 A6 */	mtctr r12
/* 8051EB6C  4E 80 04 21 */	bctrl 
/* 8051EB70  7F E4 FB 78 */	mr r4, r31
/* 8051EB74  38 60 00 08 */	li r3, 8
/* 8051EB78  4B E7 B6 ED */	bl mDemo_Check
/* 8051EB7C  2C 03 00 00 */	cmpwi r3, 0
/* 8051EB80  40 82 00 44 */	bne lbl_8051EBC4
/* 8051EB84  7F E4 FB 78 */	mr r4, r31
/* 8051EB88  38 60 00 07 */	li r3, 7
/* 8051EB8C  4B E7 B6 D9 */	bl mDemo_Check
/* 8051EB90  2C 03 00 00 */	cmpwi r3, 0
/* 8051EB94  40 82 00 30 */	bne lbl_8051EBC4
/* 8051EB98  88 BF 09 A3 */	lbz r5, 0x9a3(r31)
/* 8051EB9C  7F E3 FB 78 */	mr r3, r31
/* 8051EBA0  7F C4 F3 78 */	mr r4, r30
/* 8051EBA4  48 00 02 99 */	bl aEDZ_setup_think_proc
/* 8051EBA8  88 1F 09 A7 */	lbz r0, 0x9a7(r31)
/* 8051EBAC  28 00 00 00 */	cmplwi r0, 0
/* 8051EBB0  41 82 00 10 */	beq lbl_8051EBC0
/* 8051EBB4  B0 1F 09 78 */	sth r0, 0x978(r31)
/* 8051EBB8  38 00 00 00 */	li r0, 0
/* 8051EBBC  98 1F 09 A7 */	stb r0, 0x9a7(r31)
lbl_8051EBC0:
/* 8051EBC0  3B A0 00 01 */	li r29, 1
lbl_8051EBC4:
/* 8051EBC4  7F A3 EB 78 */	mr r3, r29
/* 8051EBC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8051EBCC  4B B7 C3 55 */	bl func_8009AF20
/* 8051EBD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051EBD4  7C 08 03 A6 */	mtlr r0
/* 8051EBD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8051EBDC  4E 80 00 20 */	blr 
