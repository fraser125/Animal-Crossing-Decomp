lbl_803D069C:
/* 803D069C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D06A0  7C 08 02 A6 */	mflr r0
/* 803D06A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D06A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D06AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D06B0  3C 63 00 02 */	addis r3, r3, 2
/* 803D06B4  7C 64 1B 78 */	mr r4, r3
/* 803D06B8  38 84 61 20 */	addi r4, r4, 0x6120
/* 803D06BC  38 63 13 A4 */	addi r3, r3, 0x13a4
/* 803D06C0  48 02 2D A1 */	bl mTM_set_renew_time
/* 803D06C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D06C8  7C 08 03 A6 */	mtlr r0
/* 803D06CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D06D0  4E 80 00 20 */	blr 
