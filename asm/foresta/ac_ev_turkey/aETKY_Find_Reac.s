lbl_80593B70:
/* 80593B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593B74  7C 08 02 A6 */	mflr r0
/* 80593B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80593B80  7C 9F 23 78 */	mr r31, r4
/* 80593B84  93 C1 00 08 */	stw r30, 8(r1)
/* 80593B88  7C 7E 1B 78 */	mr r30, r3
/* 80593B8C  4B E2 BB 1D */	bl func_803BF6A8
/* 80593B90  4B E2 D1 09 */	bl mMsg_Check_MainNormalContinue
/* 80593B94  2C 03 00 00 */	cmpwi r3, 0
/* 80593B98  41 82 00 10 */	beq lbl_80593BA8
/* 80593B9C  7F C3 F3 78 */	mr r3, r30
/* 80593BA0  7F E4 FB 78 */	mr r4, r31
/* 80593BA4  4B FF FE 3D */	bl aETKY_SetKnifeForkSequence
lbl_80593BA8:
/* 80593BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80593BB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80593BB4  7C 08 03 A6 */	mtlr r0
/* 80593BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80593BBC  4E 80 00 20 */	blr 
