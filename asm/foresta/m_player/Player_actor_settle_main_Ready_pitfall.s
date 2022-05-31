lbl_80501B40:
/* 80501B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501B44  7C 08 02 A6 */	mflr r0
/* 80501B48  38 63 01 74 */	addi r3, r3, 0x174
/* 80501B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501B50  4B E7 0A E5 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 80501B54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80501B58  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80501B5C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80501B60  38 60 00 1E */	li r3, 0x1e
/* 80501B64  3C A4 00 02 */	addis r5, r4, 2
/* 80501B68  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80501B6C  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 80501B70  81 85 00 04 */	lwz r12, 4(r5)
/* 80501B74  7D 89 03 A6 */	mtctr r12
/* 80501B78  4E 80 04 21 */	bctrl 
/* 80501B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501B80  7C 08 03 A6 */	mtlr r0
/* 80501B84  38 21 00 10 */	addi r1, r1, 0x10
/* 80501B88  4E 80 00 20 */	blr 
