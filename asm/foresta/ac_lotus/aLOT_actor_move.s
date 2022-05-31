lbl_805B2CF0:
/* 805B2CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B2CF4  7C 08 02 A6 */	mflr r0
/* 805B2CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B2CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B2D00  7C 9F 23 78 */	mr r31, r4
/* 805B2D04  93 C1 00 08 */	stw r30, 8(r1)
/* 805B2D08  7C 7E 1B 78 */	mr r30, r3
/* 805B2D0C  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B2D10  4B DB E3 05 */	bl cKF_SkeletonInfo_R_play
/* 805B2D14  81 9E 02 A0 */	lwz r12, 0x2a0(r30)
/* 805B2D18  7F C3 F3 78 */	mr r3, r30
/* 805B2D1C  7F E4 FB 78 */	mr r4, r31
/* 805B2D20  7D 89 03 A6 */	mtctr r12
/* 805B2D24  4E 80 04 21 */	bctrl 
/* 805B2D28  3C 80 81 20 */	lis r4, pipeinfo@ha /* 0x811FA080@ha */
/* 805B2D2C  7F C3 F3 78 */	mr r3, r30
/* 805B2D30  38 84 A0 80 */	addi r4, r4, pipeinfo@l /* 0x811FA080@l */
/* 805B2D34  4B DE 2C C1 */	bl CollisionCheck_Uty_ActorWorldPosSetPipeC
/* 805B2D38  3C 80 81 20 */	lis r4, pipeinfo@ha /* 0x811FA080@ha */
/* 805B2D3C  7F E3 FB 78 */	mr r3, r31
/* 805B2D40  38 A4 A0 80 */	addi r5, r4, pipeinfo@l /* 0x811FA080@l */
/* 805B2D44  38 9F 23 28 */	addi r4, r31, 0x2328
/* 805B2D48  4B DE 1E 55 */	bl CollisionCheck_setOC
/* 805B2D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B2D50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B2D54  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B2D58  7C 08 03 A6 */	mtlr r0
/* 805B2D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B2D60  4E 80 00 20 */	blr 
