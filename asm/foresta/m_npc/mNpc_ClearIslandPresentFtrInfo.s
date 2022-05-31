lbl_803D51CC:
/* 803D51CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D51D0  7C 08 02 A6 */	mflr r0
/* 803D51D4  3C 60 81 17 */	lis r3, l_mnpc_island_present_ftr@ha /* 0x8116EB84@ha */
/* 803D51D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D51DC  38 63 EB 84 */	addi r3, r3, l_mnpc_island_present_ftr@l /* 0x8116EB84@l */
/* 803D51E0  4B FF FF B9 */	bl mNpc_ClearIslandPresentFtrInfo_common
/* 803D51E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D51E8  7C 08 03 A6 */	mtlr r0
/* 803D51EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D51F0  4E 80 00 20 */	blr 
