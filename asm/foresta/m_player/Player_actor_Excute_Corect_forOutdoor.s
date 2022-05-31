lbl_804D6BC8:
/* 804D6BC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D6BCC  7C 08 02 A6 */	mflr r0
/* 804D6BD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D6BD4  39 61 00 40 */	addi r11, r1, 0x40
/* 804D6BD8  4B BC 42 FD */	bl func_8009AED4
/* 804D6BDC  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804D6BE0  7C 7D 1B 78 */	mr r29, r3
/* 804D6BE4  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 804D6BE8  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 804D6BEC  C0 43 66 74 */	lfs f2, lit_801@l(r3)  /* 0x80646674@l */
/* 804D6BF0  7C 9E 23 78 */	mr r30, r4
/* 804D6BF4  FC 60 08 90 */	fmr f3, f1
/* 804D6BF8  A8 BD 00 DE */	lha r5, 0xde(r29)
/* 804D6BFC  3B FD 10 10 */	addi r31, r29, 0x1010
/* 804D6C00  38 61 00 08 */	addi r3, r1, 8
/* 804D6C04  38 9D 00 28 */	addi r4, r29, 0x28
/* 804D6C08  38 DD 00 5C */	addi r6, r29, 0x5c
/* 804D6C0C  38 FD 01 74 */	addi r7, r29, 0x174
/* 804D6C10  39 00 00 01 */	li r8, 1
/* 804D6C14  4B E9 BE 21 */	bl cKF_SkeletonInfo_R_AnimationMove_CulcTransToWorld
/* 804D6C18  C0 01 00 08 */	lfs f0, 8(r1)
/* 804D6C1C  7F C3 F3 78 */	mr r3, r30
/* 804D6C20  7F E5 FB 78 */	mr r5, r31
/* 804D6C24  38 9E 23 28 */	addi r4, r30, 0x2328
/* 804D6C28  FC 00 00 1E */	fctiwz f0, f0
/* 804D6C2C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804D6C30  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804D6C34  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 804D6C38  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 804D6C3C  FC 00 00 1E */	fctiwz f0, f0
/* 804D6C40  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804D6C44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D6C48  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 804D6C4C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D6C50  FC 00 00 1E */	fctiwz f0, f0
/* 804D6C54  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804D6C58  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804D6C5C  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 804D6C60  4B EB DF 3D */	bl CollisionCheck_setOC
/* 804D6C64  39 61 00 40 */	addi r11, r1, 0x40
/* 804D6C68  4B BC 42 B9 */	bl func_8009AF20
/* 804D6C6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D6C70  7C 08 03 A6 */	mtlr r0
/* 804D6C74  38 21 00 40 */	addi r1, r1, 0x40
/* 804D6C78  4E 80 00 20 */	blr 
