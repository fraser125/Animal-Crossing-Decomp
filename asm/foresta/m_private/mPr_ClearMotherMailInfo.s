lbl_803E12A4:
/* 803E12A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E12A8  7C 08 02 A6 */	mflr r0
/* 803E12AC  3C 80 80 64 */	lis r4, mTM_rtcTime_ymd_clear_code@ha /* 0x806432CC@ha */
/* 803E12B0  7C 65 1B 78 */	mr r5, r3
/* 803E12B4  38 64 32 CC */	addi r3, r4, mTM_rtcTime_ymd_clear_code@l /* 0x806432CC@l */
/* 803E12B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E12BC  80 03 00 00 */	lwz r0, 0(r3)
/* 803E12C0  38 80 00 0A */	li r4, 0xa
/* 803E12C4  38 65 00 04 */	addi r3, r5, 4
/* 803E12C8  90 05 00 00 */	stw r0, 0(r5)
/* 803E12CC  4B C7 BD 9D */	bl bzero
/* 803E12D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E12D4  7C 08 03 A6 */	mtlr r0
/* 803E12D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E12DC  4E 80 00 20 */	blr 
