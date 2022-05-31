lbl_805C0BE0:
/* 805C0BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C0BE4  7C 08 02 A6 */	mflr r0
/* 805C0BE8  38 A0 00 00 */	li r5, 0
/* 805C0BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C0BF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C0BF4  7C 7F 1B 78 */	mr r31, r3
/* 805C0BF8  3C 60 80 6C */	lis r3, skl@ha /* 0x806C72DC@ha */
/* 805C0BFC  A0 DF 00 06 */	lhz r6, 6(r31)
/* 805C0C00  38 83 72 DC */	addi r4, r3, skl@l /* 0x806C72DC@l */
/* 805C0C04  38 7F 01 78 */	addi r3, r31, 0x178
/* 805C0C08  38 FF 02 46 */	addi r7, r31, 0x246
/* 805C0C0C  38 06 A7 D1 */	addi r0, r6, -22575
/* 805C0C10  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805C0C14  90 1F 02 B8 */	stw r0, 0x2b8(r31)
/* 805C0C18  81 1F 02 B8 */	lwz r8, 0x2b8(r31)
/* 805C0C1C  38 08 00 47 */	addi r0, r8, 0x47
/* 805C0C20  90 1F 02 AC */	stw r0, 0x2ac(r31)
/* 805C0C24  81 1F 02 B8 */	lwz r8, 0x2b8(r31)
/* 805C0C28  38 08 00 1E */	addi r0, r8, 0x1e
/* 805C0C2C  90 1F 02 A8 */	stw r0, 0x2a8(r31)
/* 805C0C30  80 1F 02 B8 */	lwz r0, 0x2b8(r31)
/* 805C0C34  54 00 10 3A */	slwi r0, r0, 2
/* 805C0C38  7C 84 00 2E */	lwzx r4, r4, r0
/* 805C0C3C  4B DA FE 59 */	bl cKF_SkeletonInfo_R_ct
/* 805C0C40  80 9F 02 B8 */	lwz r4, 0x2b8(r31)
/* 805C0C44  7F E3 FB 78 */	mr r3, r31
/* 805C0C48  38 84 00 01 */	addi r4, r4, 1
/* 805C0C4C  48 00 00 4D */	bl func_805C0C98
/* 805C0C50  7F E3 FB 78 */	mr r3, r31
/* 805C0C54  48 00 00 91 */	bl aTUK_setup_action
/* 805C0C58  38 7F 01 78 */	addi r3, r31, 0x178
/* 805C0C5C  4B DB 03 B9 */	bl cKF_SkeletonInfo_R_play
/* 805C0C60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C0C64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C0C68  7C 08 03 A6 */	mtlr r0
/* 805C0C6C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C0C70  4E 80 00 20 */	blr 
