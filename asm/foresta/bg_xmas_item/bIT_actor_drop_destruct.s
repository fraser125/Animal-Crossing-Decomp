lbl_804C9718:
/* 804C9718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C971C  7C 08 02 A6 */	mflr r0
/* 804C9720  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C9724  39 61 00 20 */	addi r11, r1, 0x20
/* 804C9728  4B BD 17 A9 */	bl func_8009AED0
/* 804C972C  7C 7C 1B 78 */	mr r28, r3
/* 804C9730  3B A0 00 00 */	li r29, 0
/* 804C9734  83 C3 00 00 */	lwz r30, 0(r3)
/* 804C9738  3B E0 00 00 */	li r31, 0
/* 804C973C  48 00 00 34 */	b lbl_804C9770
lbl_804C9740:
/* 804C9740  80 1E 00 00 */	lwz r0, 0(r30)
/* 804C9744  28 00 00 00 */	cmplwi r0, 0
/* 804C9748  41 82 00 20 */	beq lbl_804C9768
/* 804C974C  81 9E 00 08 */	lwz r12, 8(r30)
/* 804C9750  28 0C 00 00 */	cmplwi r12, 0
/* 804C9754  41 82 00 14 */	beq lbl_804C9768
/* 804C9758  7F C3 F3 78 */	mr r3, r30
/* 804C975C  7D 89 03 A6 */	mtctr r12
/* 804C9760  4E 80 04 21 */	bctrl 
/* 804C9764  93 FE 00 08 */	stw r31, 8(r30)
lbl_804C9768:
/* 804C9768  3B BD 00 01 */	addi r29, r29, 1
/* 804C976C  3B DE 00 A8 */	addi r30, r30, 0xa8
lbl_804C9770:
/* 804C9770  A8 1C 00 04 */	lha r0, 4(r28)
/* 804C9774  7C 1D 00 00 */	cmpw r29, r0
/* 804C9778  41 80 FF C8 */	blt lbl_804C9740
/* 804C977C  39 61 00 20 */	addi r11, r1, 0x20
/* 804C9780  4B BD 17 9D */	bl func_8009AF1C
/* 804C9784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C9788  7C 08 03 A6 */	mtlr r0
/* 804C978C  38 21 00 20 */	addi r1, r1, 0x20
/* 804C9790  4E 80 00 20 */	blr 