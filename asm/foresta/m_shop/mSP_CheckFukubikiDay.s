lbl_803EAD8C:
/* 803EAD8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EAD90  7C 08 02 A6 */	mflr r0
/* 803EAD94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EAD98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EAD9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EADA0  3C 63 00 02 */	addis r3, r3, 2
/* 803EADA4  80 03 61 24 */	lwz r0, 0x6124(r3)
/* 803EADA8  80 63 61 20 */	lwz r3, 0x6120(r3)
/* 803EADAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 803EADB0  90 61 00 08 */	stw r3, 8(r1)
/* 803EADB4  A0 61 00 0E */	lhz r3, 0xe(r1)
/* 803EADB8  88 81 00 0D */	lbz r4, 0xd(r1)
/* 803EADBC  48 01 B9 BD */	bl lbRTC_GetDaysByMonth
/* 803EADC0  88 01 00 0B */	lbz r0, 0xb(r1)
/* 803EADC4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803EADC8  7C 03 00 50 */	subf r0, r3, r0
/* 803EADCC  7C 00 00 34 */	cntlzw r0, r0
/* 803EADD0  54 03 D9 7E */	srwi r3, r0, 5
/* 803EADD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EADD8  7C 08 03 A6 */	mtlr r0
/* 803EADDC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EADE0  4E 80 00 20 */	blr 
