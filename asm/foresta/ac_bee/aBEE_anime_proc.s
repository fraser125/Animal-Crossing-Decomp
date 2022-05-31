lbl_8050CA1C:
/* 8050CA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050CA20  7C 08 02 A6 */	mflr r0
/* 8050CA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050CA28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050CA2C  93 C1 00 08 */	stw r30, 8(r1)
/* 8050CA30  7C 7E 1B 78 */	mr r30, r3
/* 8050CA34  3B FE 01 7C */	addi r31, r30, 0x17c
/* 8050CA38  C0 03 04 30 */	lfs f0, 0x430(r3)
/* 8050CA3C  7F E3 FB 78 */	mr r3, r31
/* 8050CA40  D0 1E 01 8C */	stfs f0, 0x18c(r30)
/* 8050CA44  4B E6 45 D1 */	bl cKF_SkeletonInfo_R_play
/* 8050CA48  3C 60 80 65 */	lis r3, lit_442@ha /* 0x80648E78@ha */
/* 8050CA4C  C0 03 8E 78 */	lfs f0, lit_442@l(r3)  /* 0x80648E78@l */
/* 8050CA50  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8050CA54  A8 7E 04 40 */	lha r3, 0x440(r30)
/* 8050CA58  38 03 01 F4 */	addi r0, r3, 0x1f4
/* 8050CA5C  B0 1E 04 40 */	sth r0, 0x440(r30)
/* 8050CA60  A8 7E 04 42 */	lha r3, 0x442(r30)
/* 8050CA64  38 03 FE 0C */	addi r0, r3, -500
/* 8050CA68  B0 1E 04 42 */	sth r0, 0x442(r30)
/* 8050CA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050CA70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050CA74  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050CA78  7C 08 03 A6 */	mtlr r0
/* 8050CA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8050CA80  4E 80 00 20 */	blr 
