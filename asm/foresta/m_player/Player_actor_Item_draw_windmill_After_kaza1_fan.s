lbl_804E3A34:
/* 804E3A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E3A38  7C 08 02 A6 */	mflr r0
/* 804E3A3C  38 A3 11 54 */	addi r5, r3, 0x1154
/* 804E3A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E3A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E3A48  3B E3 11 6A */	addi r31, r3, 0x116a
/* 804E3A4C  80 83 11 54 */	lwz r4, 0x1154(r3)
/* 804E3A50  80 03 11 58 */	lwz r0, 0x1158(r3)
/* 804E3A54  90 83 11 48 */	stw r4, 0x1148(r3)
/* 804E3A58  90 03 11 4C */	stw r0, 0x114c(r3)
/* 804E3A5C  80 03 11 5C */	lwz r0, 0x115c(r3)
/* 804E3A60  90 03 11 50 */	stw r0, 0x1150(r3)
/* 804E3A64  7C A3 2B 78 */	mr r3, r5
/* 804E3A68  4B F2 9A 55 */	bl Matrix_Position_Zero
/* 804E3A6C  4B F2 88 1D */	bl get_Matrix_now
/* 804E3A70  7F E4 FB 78 */	mr r4, r31
/* 804E3A74  38 A0 00 00 */	li r5, 0
/* 804E3A78  4B F2 9E A5 */	bl Matrix_to_rotate_new
/* 804E3A7C  A8 1F 00 00 */	lha r0, 0(r31)
/* 804E3A80  1C 00 FF FF */	mulli r0, r0, -1
/* 804E3A84  B0 1F 00 00 */	sth r0, 0(r31)
/* 804E3A88  A8 7F 00 02 */	lha r3, 2(r31)
/* 804E3A8C  3C 63 00 01 */	addis r3, r3, 1
/* 804E3A90  38 03 80 00 */	addi r0, r3, -32768
/* 804E3A94  B0 1F 00 02 */	sth r0, 2(r31)
/* 804E3A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E3A9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E3AA0  7C 08 03 A6 */	mtlr r0
/* 804E3AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E3AA8  4E 80 00 20 */	blr 
