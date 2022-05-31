lbl_803E91A4:
/* 803E91A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E91A8  7C 08 02 A6 */	mflr r0
/* 803E91AC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E91B0  38 A0 00 70 */	li r5, 0x70
/* 803E91B4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E91B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E91BC  3C E4 00 02 */	addis r7, r4, 2
/* 803E91C0  38 61 00 08 */	addi r3, r1, 8
/* 803E91C4  80 C7 61 20 */	lwz r6, 0x6120(r7)
/* 803E91C8  38 87 04 6C */	addi r4, r7, 0x46c
/* 803E91CC  80 07 61 24 */	lwz r0, 0x6124(r7)
/* 803E91D0  90 C1 00 08 */	stw r6, 8(r1)
/* 803E91D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 803E91D8  48 01 D6 61 */	bl lbRTC_IsEqualTime
/* 803E91DC  7C 60 00 34 */	cntlzw r0, r3
/* 803E91E0  54 03 D9 7E */	srwi r3, r0, 5
/* 803E91E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E91E8  7C 08 03 A6 */	mtlr r0
/* 803E91EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803E91F0  4E 80 00 20 */	blr 
