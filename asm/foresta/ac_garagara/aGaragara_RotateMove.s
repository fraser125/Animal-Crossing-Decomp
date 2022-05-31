lbl_80424F0C:
/* 80424F0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80424F10  7C 08 02 A6 */	mflr r0
/* 80424F14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80424F18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80424F1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80424F20  7C 7E 1B 78 */	mr r30, r3
/* 80424F24  3B FE 01 84 */	addi r31, r30, 0x184
/* 80424F28  80 03 01 80 */	lwz r0, 0x180(r3)
/* 80424F2C  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80424F30  40 82 00 44 */	bne lbl_80424F74
/* 80424F34  3C 60 80 64 */	lis r3, lit_626@ha /* 0x80643F18@ha */
/* 80424F38  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80424F3C  38 83 3F 18 */	addi r4, r3, lit_626@l /* 0x80643F18@l */
/* 80424F40  38 7E 00 28 */	addi r3, r30, 0x28
/* 80424F44  C0 24 00 00 */	lfs f1, 0(r4)
/* 80424F48  38 9E 03 B0 */	addi r4, r30, 0x3b0
/* 80424F4C  38 A1 00 08 */	addi r5, r1, 8
/* 80424F50  EC 01 00 2A */	fadds f0, f1, f0
/* 80424F54  D0 01 00 08 */	stfs f0, 8(r1)
/* 80424F58  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80424F5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80424F60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80424F64  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80424F68  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80424F6C  80 DE 01 7C */	lwz r6, 0x17c(r30)
/* 80424F70  48 00 01 09 */	bl func_80425078
lbl_80424F74:
/* 80424F74  7F E3 FB 78 */	mr r3, r31
/* 80424F78  4B F4 C0 9D */	bl cKF_SkeletonInfo_R_play
/* 80424F7C  2C 03 00 01 */	cmpwi r3, 1
/* 80424F80  40 82 00 10 */	bne lbl_80424F90
/* 80424F84  7F C3 F3 78 */	mr r3, r30
/* 80424F88  38 80 00 00 */	li r4, 0
/* 80424F8C  4B FF FB 85 */	bl aGaragara_RequestStatus
lbl_80424F90:
/* 80424F90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80424F94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80424F98  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80424F9C  7C 08 03 A6 */	mtlr r0
/* 80424FA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80424FA4  4E 80 00 20 */	blr 
