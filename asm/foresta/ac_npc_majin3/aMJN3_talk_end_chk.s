lbl_80558528:
/* 80558528  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055852C  7C 08 02 A6 */	mflr r0
/* 80558530  90 01 00 24 */	stw r0, 0x24(r1)
/* 80558534  39 61 00 20 */	addi r11, r1, 0x20
/* 80558538  4B B4 29 9D */	bl func_8009AED4
/* 8055853C  81 83 09 A4 */	lwz r12, 0x9a4(r3)
/* 80558540  7C 7F 1B 78 */	mr r31, r3
/* 80558544  3B A0 00 00 */	li r29, 0
/* 80558548  7C 9E 23 78 */	mr r30, r4
/* 8055854C  7D 89 03 A6 */	mtctr r12
/* 80558550  4E 80 04 21 */	bctrl 
/* 80558554  7F E4 FB 78 */	mr r4, r31
/* 80558558  38 60 00 08 */	li r3, 8
/* 8055855C  4B E4 1D 09 */	bl mDemo_Check
/* 80558560  2C 03 00 00 */	cmpwi r3, 0
/* 80558564  40 82 00 18 */	bne lbl_8055857C
/* 80558568  80 BF 09 98 */	lwz r5, 0x998(r31)
/* 8055856C  7F E3 FB 78 */	mr r3, r31
/* 80558570  7F C4 F3 78 */	mr r4, r30
/* 80558574  48 00 04 6D */	bl aMJN3_setup_think_proc
/* 80558578  3B A0 00 01 */	li r29, 1
lbl_8055857C:
/* 8055857C  7F A3 EB 78 */	mr r3, r29
/* 80558580  39 61 00 20 */	addi r11, r1, 0x20
/* 80558584  4B B4 29 9D */	bl func_8009AF20
/* 80558588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055858C  7C 08 03 A6 */	mtlr r0
/* 80558590  38 21 00 20 */	addi r1, r1, 0x20
/* 80558594  4E 80 00 20 */	blr 
