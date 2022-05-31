lbl_8051D870:
/* 8051D870  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051D874  7C 08 02 A6 */	mflr r0
/* 8051D878  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051D87C  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D880  4B B7 D6 55 */	bl func_8009AED4
/* 8051D884  81 83 09 9C */	lwz r12, 0x99c(r3)
/* 8051D888  7C 7F 1B 78 */	mr r31, r3
/* 8051D88C  3B A0 00 00 */	li r29, 0
/* 8051D890  7C 9E 23 78 */	mr r30, r4
/* 8051D894  7D 89 03 A6 */	mtctr r12
/* 8051D898  4E 80 04 21 */	bctrl 
/* 8051D89C  7F E4 FB 78 */	mr r4, r31
/* 8051D8A0  38 60 00 08 */	li r3, 8
/* 8051D8A4  4B E7 C9 C1 */	bl mDemo_Check
/* 8051D8A8  2C 03 00 00 */	cmpwi r3, 0
/* 8051D8AC  40 82 00 2C */	bne lbl_8051D8D8
/* 8051D8B0  7F E4 FB 78 */	mr r4, r31
/* 8051D8B4  38 60 00 07 */	li r3, 7
/* 8051D8B8  4B E7 C9 AD */	bl mDemo_Check
/* 8051D8BC  2C 03 00 00 */	cmpwi r3, 0
/* 8051D8C0  40 82 00 18 */	bne lbl_8051D8D8
/* 8051D8C4  88 BF 09 95 */	lbz r5, 0x995(r31)
/* 8051D8C8  7F E3 FB 78 */	mr r3, r31
/* 8051D8CC  7F C4 F3 78 */	mr r4, r30
/* 8051D8D0  48 00 04 75 */	bl aEDSN_setup_think_proc
/* 8051D8D4  3B A0 00 01 */	li r29, 1
lbl_8051D8D8:
/* 8051D8D8  7F A3 EB 78 */	mr r3, r29
/* 8051D8DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D8E0  4B B7 D6 41 */	bl func_8009AF20
/* 8051D8E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051D8E8  7C 08 03 A6 */	mtlr r0
/* 8051D8EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8051D8F0  4E 80 00 20 */	blr 
