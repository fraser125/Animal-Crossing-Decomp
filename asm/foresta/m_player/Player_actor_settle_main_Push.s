lbl_804EA62C:
/* 804EA62C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EA630  7C 08 02 A6 */	mflr r0
/* 804EA634  38 63 01 74 */	addi r3, r3, 0x174
/* 804EA638  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EA63C  4B E8 7F F9 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 804EA640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EA644  7C 08 03 A6 */	mtlr r0
/* 804EA648  38 21 00 10 */	addi r1, r1, 0x10
/* 804EA64C  4E 80 00 20 */	blr 
