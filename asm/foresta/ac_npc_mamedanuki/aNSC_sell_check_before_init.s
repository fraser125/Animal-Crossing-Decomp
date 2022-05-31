lbl_8055E858:
/* 8055E858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E85C  7C 08 02 A6 */	mflr r0
/* 8055E860  38 80 00 09 */	li r4, 9
/* 8055E864  38 A0 00 00 */	li r5, 0
/* 8055E868  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E86C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055E870  7C 7F 1B 78 */	mr r31, r3
/* 8055E874  38 60 00 04 */	li r3, 4
/* 8055E878  4B E3 9B C1 */	bl mDemo_Set_OrderValue
/* 8055E87C  7F E3 FB 78 */	mr r3, r31
/* 8055E880  4B FF BE 7D */	bl aNSC_set_stop_spd
/* 8055E884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E888  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055E88C  7C 08 03 A6 */	mtlr r0
/* 8055E890  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E894  4E 80 00 20 */	blr 
