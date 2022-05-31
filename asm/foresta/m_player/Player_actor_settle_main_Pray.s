lbl_80500888:
/* 80500888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050088C  7C 08 02 A6 */	mflr r0
/* 80500890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80500898  7C 9F 23 78 */	mr r31, r4
/* 8050089C  93 C1 00 08 */	stw r30, 8(r1)
/* 805008A0  7C 7E 1B 78 */	mr r30, r3
/* 805008A4  38 7E 01 74 */	addi r3, r30, 0x174
/* 805008A8  4B E7 1D 8D */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 805008AC  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 805008B0  7F E3 FB 78 */	mr r3, r31
/* 805008B4  38 80 00 08 */	li r4, 8
/* 805008B8  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 805008BC  4B E7 E8 F1 */	bl Camera2_Check_main_index
/* 805008C0  2C 03 00 00 */	cmpwi r3, 0
/* 805008C4  41 82 00 20 */	beq lbl_805008E4
/* 805008C8  7F E3 FB 78 */	mr r3, r31
/* 805008CC  38 80 00 00 */	li r4, 0
/* 805008D0  4B E7 E1 F5 */	bl Camera2_change_priority
/* 805008D4  7F E3 FB 78 */	mr r3, r31
/* 805008D8  38 80 00 00 */	li r4, 0
/* 805008DC  38 A0 00 09 */	li r5, 9
/* 805008E0  4B E7 FD F9 */	bl Camera2_request_main_normal
lbl_805008E4:
/* 805008E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805008E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805008EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805008F0  7C 08 03 A6 */	mtlr r0
/* 805008F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805008F8  4E 80 00 20 */	blr 
