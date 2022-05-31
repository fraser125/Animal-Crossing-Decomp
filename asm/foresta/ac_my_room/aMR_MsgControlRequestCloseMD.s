lbl_80475858:
/* 80475858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047585C  7C 08 02 A6 */	mflr r0
/* 80475860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475868  7C 7F 1B 78 */	mr r31, r3
/* 8047586C  4B F4 9E 3D */	bl func_803BF6A8
/* 80475870  4B F4 B4 8D */	bl mMsg_Check_MainDisappear
/* 80475874  2C 03 00 00 */	cmpwi r3, 0
/* 80475878  40 82 00 14 */	bne lbl_8047588C
/* 8047587C  4B F4 9E 2D */	bl func_803BF6A8
/* 80475880  4B F4 B4 6D */	bl mMsg_Check_MainHide
/* 80475884  2C 03 00 00 */	cmpwi r3, 0
/* 80475888  41 82 00 18 */	beq lbl_804758A0
lbl_8047588C:
/* 8047588C  7F E3 FB 78 */	mr r3, r31
/* 80475890  38 80 00 05 */	li r4, 5
/* 80475894  4B FF E8 B5 */	bl aMR_ChangeDemoFtrStatus
/* 80475898  38 00 00 22 */	li r0, 0x22
/* 8047589C  B0 1F 03 EE */	sth r0, 0x3ee(r31)
lbl_804758A0:
/* 804758A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804758A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804758A8  7C 08 03 A6 */	mtlr r0
/* 804758AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804758B0  4E 80 00 20 */	blr 
