lbl_803B950C:
/* 803B950C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9510  7C 08 02 A6 */	mflr r0
/* 803B9514  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B951C  7C 7F 1B 78 */	mr r31, r3
/* 803B9520  4B FF FE A9 */	bl mEnv_DecideStaffrollFadeOutRate
/* 803B9524  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9528  7F E3 FB 78 */	mr r3, r31
/* 803B952C  38 84 9B A0 */	addi r4, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B9530  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 803B9534  4B FF FD 39 */	bl mEnv_PointLightSet
/* 803B9538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B953C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B9540  7C 08 03 A6 */	mtlr r0
/* 803B9544  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9548  4E 80 00 20 */	blr 
