lbl_803E7238:
/* 803E7238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E723C  7C 08 02 A6 */	mflr r0
/* 803E7240  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E7244  4B FF FE 69 */	bl mRmTp_GetNowSceneLightSwitchIndex
/* 803E7248  2C 03 00 00 */	cmpwi r3, 0
/* 803E724C  41 80 00 30 */	blt lbl_803E727C
/* 803E7250  2C 03 00 0D */	cmpwi r3, 0xd
/* 803E7254  40 80 00 28 */	bge lbl_803E727C
/* 803E7258  3C 80 81 17 */	lis r4, l_mRmTp_switch_data@ha /* 0x8117143C@ha */
/* 803E725C  38 00 00 01 */	li r0, 1
/* 803E7260  38 A4 14 3C */	addi r5, r4, l_mRmTp_switch_data@l /* 0x8117143C@l */
/* 803E7264  80 85 00 00 */	lwz r4, 0(r5)
/* 803E7268  7C 00 18 30 */	slw r0, r0, r3
/* 803E726C  38 60 00 01 */	li r3, 1
/* 803E7270  7C 80 00 78 */	andc r0, r4, r0
/* 803E7274  90 05 00 00 */	stw r0, 0(r5)
/* 803E7278  48 00 00 08 */	b lbl_803E7280
lbl_803E727C:
/* 803E727C  38 60 00 00 */	li r3, 0
lbl_803E7280:
/* 803E7280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7284  7C 08 03 A6 */	mtlr r0
/* 803E7288  38 21 00 10 */	addi r1, r1, 0x10
/* 803E728C  4E 80 00 20 */	blr 
