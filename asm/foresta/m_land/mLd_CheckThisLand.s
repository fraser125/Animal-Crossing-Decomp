lbl_803B3B38:
/* 803B3B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3B3C  7C 08 02 A6 */	mflr r0
/* 803B3B40  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803B3B44  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803B3B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3B4C  3C A5 00 01 */	addis r5, r5, 1
/* 803B3B50  A0 C5 91 2A */	lhz r6, -0x6ed6(r5)
/* 803B3B54  38 A5 91 20 */	addi r5, r5, -28384
/* 803B3B58  4B FF FD 21 */	bl mLd_CheckCmpLand
/* 803B3B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3B60  7C 08 03 A6 */	mtlr r0
/* 803B3B64  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3B68  4E 80 00 20 */	blr 
