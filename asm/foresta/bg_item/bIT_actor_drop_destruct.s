lbl_804BA808:
/* 804BA808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BA80C  7C 08 02 A6 */	mflr r0
/* 804BA810  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BA814  39 61 00 20 */	addi r11, r1, 0x20
/* 804BA818  4B BE 06 B9 */	bl func_8009AED0
/* 804BA81C  7C 7C 1B 78 */	mr r28, r3
/* 804BA820  3B A0 00 00 */	li r29, 0
/* 804BA824  83 C3 00 00 */	lwz r30, 0(r3)
/* 804BA828  3B E0 00 00 */	li r31, 0
/* 804BA82C  48 00 00 34 */	b lbl_804BA860
lbl_804BA830:
/* 804BA830  80 1E 00 00 */	lwz r0, 0(r30)
/* 804BA834  28 00 00 00 */	cmplwi r0, 0
/* 804BA838  41 82 00 20 */	beq lbl_804BA858
/* 804BA83C  81 9E 00 08 */	lwz r12, 8(r30)
/* 804BA840  28 0C 00 00 */	cmplwi r12, 0
/* 804BA844  41 82 00 14 */	beq lbl_804BA858
/* 804BA848  7F C3 F3 78 */	mr r3, r30
/* 804BA84C  7D 89 03 A6 */	mtctr r12
/* 804BA850  4E 80 04 21 */	bctrl 
/* 804BA854  93 FE 00 08 */	stw r31, 8(r30)
lbl_804BA858:
/* 804BA858  3B BD 00 01 */	addi r29, r29, 1
/* 804BA85C  3B DE 00 A8 */	addi r30, r30, 0xa8
lbl_804BA860:
/* 804BA860  A8 1C 00 04 */	lha r0, 4(r28)
/* 804BA864  7C 1D 00 00 */	cmpw r29, r0
/* 804BA868  41 80 FF C8 */	blt lbl_804BA830
/* 804BA86C  39 61 00 20 */	addi r11, r1, 0x20
/* 804BA870  4B BE 06 AD */	bl func_8009AF1C
/* 804BA874  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BA878  7C 08 03 A6 */	mtlr r0
/* 804BA87C  38 21 00 20 */	addi r1, r1, 0x20
/* 804BA880  4E 80 00 20 */	blr 
