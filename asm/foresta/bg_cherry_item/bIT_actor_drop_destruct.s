lbl_804B3484:
/* 804B3484  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B3488  7C 08 02 A6 */	mflr r0
/* 804B348C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B3490  39 61 00 20 */	addi r11, r1, 0x20
/* 804B3494  4B BE 7A 3D */	bl func_8009AED0
/* 804B3498  7C 7C 1B 78 */	mr r28, r3
/* 804B349C  3B A0 00 00 */	li r29, 0
/* 804B34A0  83 C3 00 00 */	lwz r30, 0(r3)
/* 804B34A4  3B E0 00 00 */	li r31, 0
/* 804B34A8  48 00 00 34 */	b lbl_804B34DC
lbl_804B34AC:
/* 804B34AC  80 1E 00 00 */	lwz r0, 0(r30)
/* 804B34B0  28 00 00 00 */	cmplwi r0, 0
/* 804B34B4  41 82 00 20 */	beq lbl_804B34D4
/* 804B34B8  81 9E 00 08 */	lwz r12, 8(r30)
/* 804B34BC  28 0C 00 00 */	cmplwi r12, 0
/* 804B34C0  41 82 00 14 */	beq lbl_804B34D4
/* 804B34C4  7F C3 F3 78 */	mr r3, r30
/* 804B34C8  7D 89 03 A6 */	mtctr r12
/* 804B34CC  4E 80 04 21 */	bctrl 
/* 804B34D0  93 FE 00 08 */	stw r31, 8(r30)
lbl_804B34D4:
/* 804B34D4  3B BD 00 01 */	addi r29, r29, 1
/* 804B34D8  3B DE 00 A8 */	addi r30, r30, 0xa8
lbl_804B34DC:
/* 804B34DC  A8 1C 00 04 */	lha r0, 4(r28)
/* 804B34E0  7C 1D 00 00 */	cmpw r29, r0
/* 804B34E4  41 80 FF C8 */	blt lbl_804B34AC
/* 804B34E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804B34EC  4B BE 7A 31 */	bl func_8009AF1C
/* 804B34F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B34F4  7C 08 03 A6 */	mtlr r0
/* 804B34F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804B34FC  4E 80 00 20 */	blr 
