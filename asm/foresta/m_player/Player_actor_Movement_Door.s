lbl_804E97F4:
/* 804E97F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E97F8  7C 08 02 A6 */	mflr r0
/* 804E97FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E9804  7C 7F 1B 78 */	mr r31, r3
/* 804E9808  38 9F 00 DE */	addi r4, r31, 0xde
/* 804E980C  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 804E9810  38 7F 00 28 */	addi r3, r31, 0x28
/* 804E9814  38 BF 00 5C */	addi r5, r31, 0x5c
/* 804E9818  38 FF 01 74 */	addi r7, r31, 0x174
/* 804E981C  4B E8 8E A5 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 804E9820  7F E3 FB 78 */	mr r3, r31
/* 804E9824  38 80 00 00 */	li r4, 0
/* 804E9828  4B FE C2 95 */	bl Player_actor_Movement_Base_Stop
/* 804E982C  7F E3 FB 78 */	mr r3, r31
/* 804E9830  4B FE B9 9D */	bl Player_actor_Set_force_shadow_position_fromWorldPosition
/* 804E9834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E983C  7C 08 03 A6 */	mtlr r0
/* 804E9840  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9844  4E 80 00 20 */	blr 
