lbl_804FDC2C:
/* 804FDC2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FDC30  7C 08 02 A6 */	mflr r0
/* 804FDC34  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FDC38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FDC3C  7C 7F 1B 78 */	mr r31, r3
/* 804FDC40  38 9F 00 DE */	addi r4, r31, 0xde
/* 804FDC44  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 804FDC48  38 7F 00 28 */	addi r3, r31, 0x28
/* 804FDC4C  38 BF 00 5C */	addi r5, r31, 0x5c
/* 804FDC50  38 FF 01 74 */	addi r7, r31, 0x174
/* 804FDC54  4B E7 4A 6D */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 804FDC58  7F E3 FB 78 */	mr r3, r31
/* 804FDC5C  38 80 00 00 */	li r4, 0
/* 804FDC60  4B FD 7E 5D */	bl Player_actor_Movement_Base_Stop
/* 804FDC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FDC68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FDC6C  7C 08 03 A6 */	mtlr r0
/* 804FDC70  38 21 00 10 */	addi r1, r1, 0x10
/* 804FDC74  4E 80 00 20 */	blr 
