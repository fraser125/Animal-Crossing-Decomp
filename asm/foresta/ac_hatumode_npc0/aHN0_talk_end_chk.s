lbl_8052AF80:
/* 8052AF80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052AF84  7C 08 02 A6 */	mflr r0
/* 8052AF88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052AF8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8052AF90  4B B6 FF 45 */	bl func_8009AED4
/* 8052AF94  81 83 09 94 */	lwz r12, 0x994(r3)
/* 8052AF98  7C 7F 1B 78 */	mr r31, r3
/* 8052AF9C  3B A0 00 00 */	li r29, 0
/* 8052AFA0  7C 9E 23 78 */	mr r30, r4
/* 8052AFA4  7D 89 03 A6 */	mtctr r12
/* 8052AFA8  4E 80 04 21 */	bctrl 
/* 8052AFAC  7F E4 FB 78 */	mr r4, r31
/* 8052AFB0  38 60 00 08 */	li r3, 8
/* 8052AFB4  4B E6 F2 B1 */	bl mDemo_Check
/* 8052AFB8  2C 03 00 00 */	cmpwi r3, 0
/* 8052AFBC  40 82 00 2C */	bne lbl_8052AFE8
/* 8052AFC0  7F E4 FB 78 */	mr r4, r31
/* 8052AFC4  38 60 00 07 */	li r3, 7
/* 8052AFC8  4B E6 F2 9D */	bl mDemo_Check
/* 8052AFCC  2C 03 00 00 */	cmpwi r3, 0
/* 8052AFD0  40 82 00 18 */	bne lbl_8052AFE8
/* 8052AFD4  88 BF 09 A3 */	lbz r5, 0x9a3(r31)
/* 8052AFD8  7F E3 FB 78 */	mr r3, r31
/* 8052AFDC  7F C4 F3 78 */	mr r4, r30
/* 8052AFE0  48 00 0A 69 */	bl aHN0_setup_think_proc
/* 8052AFE4  3B A0 00 01 */	li r29, 1
lbl_8052AFE8:
/* 8052AFE8  7F A3 EB 78 */	mr r3, r29
/* 8052AFEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8052AFF0  4B B6 FF 31 */	bl func_8009AF20
/* 8052AFF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052AFF8  7C 08 03 A6 */	mtlr r0
/* 8052AFFC  38 21 00 20 */	addi r1, r1, 0x20
/* 8052B000  4E 80 00 20 */	blr 
