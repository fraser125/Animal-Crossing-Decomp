lbl_8041C654:
/* 8041C654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041C658  7C 08 02 A6 */	mflr r0
/* 8041C65C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041C660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041C664  7C 7F 1B 78 */	mr r31, r3
/* 8041C668  4B F8 86 65 */	bl mFI_GetFieldId
/* 8041C66C  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041C670  40 82 00 10 */	bne lbl_8041C680
/* 8041C674  7F E3 FB 78 */	mr r3, r31
/* 8041C678  4B FF FF 59 */	bl make_control_actor
/* 8041C67C  48 00 00 08 */	b lbl_8041C684
lbl_8041C680:
/* 8041C680  38 60 00 00 */	li r3, 0
lbl_8041C684:
/* 8041C684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041C688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041C68C  7C 08 03 A6 */	mtlr r0
/* 8041C690  38 21 00 10 */	addi r1, r1, 0x10
/* 8041C694  4E 80 00 20 */	blr 
