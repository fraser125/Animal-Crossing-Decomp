lbl_803B3B08:
/* 803B3B08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3B0C  7C 08 02 A6 */	mflr r0
/* 803B3B10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B3B14  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B3B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3B1C  3C 63 00 02 */	addis r3, r3, 2
/* 803B3B20  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 803B3B24  4B FF FF CD */	bl mLd_PlayerManKindCheckNo
/* 803B3B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3B2C  7C 08 03 A6 */	mtlr r0
/* 803B3B30  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3B34  4E 80 00 20 */	blr 
