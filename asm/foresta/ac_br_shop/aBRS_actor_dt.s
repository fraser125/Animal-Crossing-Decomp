lbl_805A8628:
/* 805A8628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A862C  7C 08 02 A6 */	mflr r0
/* 805A8630  38 80 00 00 */	li r4, 0
/* 805A8634  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A863C  7C 7F 1B 78 */	mr r31, r3
/* 805A8640  48 00 00 41 */	bl func_805A8680
/* 805A8644  38 7F 01 78 */	addi r3, r31, 0x178
/* 805A8648  4B DC 84 A9 */	bl cKF_SkeletonInfo_R_dt
/* 805A864C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805A8650  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805A8654  3C 63 00 02 */	addis r3, r3, 2
/* 805A8658  80 03 04 D4 */	lwz r0, 0x4d4(r3)
/* 805A865C  2C 00 00 03 */	cmpwi r0, 3
/* 805A8660  41 80 00 0C */	blt lbl_805A866C
/* 805A8664  38 60 00 4B */	li r3, 0x4b
/* 805A8668  4B DF 68 35 */	bl mEv_special_event_soldout
lbl_805A866C:
/* 805A866C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A8674  7C 08 03 A6 */	mtlr r0
/* 805A8678  38 21 00 10 */	addi r1, r1, 0x10
/* 805A867C  4E 80 00 20 */	blr 
