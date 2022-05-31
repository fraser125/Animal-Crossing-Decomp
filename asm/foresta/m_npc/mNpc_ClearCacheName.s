lbl_803D1858:
/* 803D1858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D185C  7C 08 02 A6 */	mflr r0
/* 803D1860  3C 60 81 17 */	lis r3, l_npc_name_cache@ha /* 0x8116C520@ha */
/* 803D1864  38 63 C5 20 */	addi r3, r3, l_npc_name_cache@l /* 0x8116C520@l */
/* 803D1868  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D186C  38 63 00 02 */	addi r3, r3, 2
/* 803D1870  48 00 E6 25 */	bl func_803DFE94
/* 803D1874  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 803D1878  3C 60 81 17 */	lis r3, l_npc_name_cache@ha /* 0x8116C520@ha */
/* 803D187C  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 803D1880  38 00 00 00 */	li r0, 0
/* 803D1884  B4 83 C5 20 */	sthu r4, l_npc_name_cache@l(r3)  /* 0x8116C520@l */
/* 803D1888  98 03 00 0A */	stb r0, 0xa(r3)
/* 803D188C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D1890  7C 08 03 A6 */	mtlr r0
/* 803D1894  38 21 00 10 */	addi r1, r1, 0x10
/* 803D1898  4E 80 00 20 */	blr 
