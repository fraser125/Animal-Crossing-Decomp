lbl_804E4028:
/* 804E4028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E402C  7C 08 02 A6 */	mflr r0
/* 804E4030  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E4038  7C 9F 23 78 */	mr r31, r4
/* 804E403C  4B F2 94 81 */	bl Matrix_Position_Zero
/* 804E4040  4B F2 82 49 */	bl get_Matrix_now
/* 804E4044  7F E4 FB 78 */	mr r4, r31
/* 804E4048  38 A0 00 00 */	li r5, 0
/* 804E404C  4B F2 98 D1 */	bl Matrix_to_rotate_new
/* 804E4050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E4058  7C 08 03 A6 */	mtlr r0
/* 804E405C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4060  4E 80 00 20 */	blr 
