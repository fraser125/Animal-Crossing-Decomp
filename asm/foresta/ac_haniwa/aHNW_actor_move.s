lbl_80428D44:
/* 80428D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80428D48  7C 08 02 A6 */	mflr r0
/* 80428D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80428D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80428D54  7C 7F 1B 78 */	mr r31, r3
/* 80428D58  38 7F 01 7C */	addi r3, r31, 0x17c
/* 80428D5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80428D60  7C 9E 23 78 */	mr r30, r4
/* 80428D64  4B F4 82 B1 */	bl cKF_SkeletonInfo_R_play
/* 80428D68  90 7F 01 78 */	stw r3, 0x178(r31)
/* 80428D6C  7F E3 FB 78 */	mr r3, r31
/* 80428D70  7F C4 F3 78 */	mr r4, r30
/* 80428D74  81 9F 02 74 */	lwz r12, 0x274(r31)
/* 80428D78  7D 89 03 A6 */	mtctr r12
/* 80428D7C  4E 80 04 21 */	bctrl 
/* 80428D80  7F E3 FB 78 */	mr r3, r31
/* 80428D84  7F C4 F3 78 */	mr r4, r30
/* 80428D88  4B FF FE 91 */	bl aHNW_common_process
/* 80428D8C  7F E3 FB 78 */	mr r3, r31
/* 80428D90  38 9F 01 F0 */	addi r4, r31, 0x1f0
/* 80428D94  4B F6 CC 61 */	bl CollisionCheck_Uty_ActorWorldPosSetPipeC
/* 80428D98  7F C3 F3 78 */	mr r3, r30
/* 80428D9C  38 9E 23 28 */	addi r4, r30, 0x2328
/* 80428DA0  38 BF 01 F0 */	addi r5, r31, 0x1f0
/* 80428DA4  4B F6 BD F9 */	bl CollisionCheck_setOC
/* 80428DA8  3C 80 80 64 */	lis r4, lit_853@ha /* 0x80644008@ha */
/* 80428DAC  7F E3 FB 78 */	mr r3, r31
/* 80428DB0  C0 24 40 08 */	lfs f1, lit_853@l(r4)  /* 0x80644008@l */
/* 80428DB4  4B F4 B4 1D */	bl func_803741D0
/* 80428DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80428DBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80428DC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80428DC4  7C 08 03 A6 */	mtlr r0
/* 80428DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80428DCC  4E 80 00 20 */	blr 
