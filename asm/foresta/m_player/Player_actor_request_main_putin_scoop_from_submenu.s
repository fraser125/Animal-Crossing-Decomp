lbl_804F972C:
/* 804F972C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9730  7C 08 02 A6 */	mflr r0
/* 804F9734  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F973C  7C 9F 23 78 */	mr r31, r4
/* 804F9740  4B EE 01 6D */	bl mPlib_Get_change_data_from_submenu_p
/* 804F9744  38 83 00 08 */	addi r4, r3, 8
/* 804F9748  7F E3 FB 78 */	mr r3, r31
/* 804F974C  A0 A4 00 0C */	lhz r5, 0xc(r4)
/* 804F9750  38 E0 00 1F */	li r7, 0x1f
/* 804F9754  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 804F9758  4B FF FF 3D */	bl func_804F9694
/* 804F975C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F9764  7C 08 03 A6 */	mtlr r0
/* 804F9768  38 21 00 10 */	addi r1, r1, 0x10
/* 804F976C  4E 80 00 20 */	blr 
