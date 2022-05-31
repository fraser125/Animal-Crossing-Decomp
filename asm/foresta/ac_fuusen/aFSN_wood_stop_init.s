lbl_8050E9C4:
/* 8050E9C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050E9C8  7C 08 02 A6 */	mflr r0
/* 8050E9CC  3C 80 80 65 */	lis r4, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E9D0  7C 65 1B 78 */	mr r5, r3
/* 8050E9D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050E9D8  38 00 4C 62 */	li r0, 0x4c62
/* 8050E9DC  C0 04 8E FC */	lfs f0, data_80648EFC@l(r4)  /* 0x80648EFC@l */
/* 8050E9E0  38 85 00 28 */	addi r4, r5, 0x28
/* 8050E9E4  38 60 04 02 */	li r3, 0x402
/* 8050E9E8  D0 05 00 74 */	stfs f0, 0x74(r5)
/* 8050E9EC  90 05 01 84 */	stw r0, 0x184(r5)
/* 8050E9F0  48 11 F5 B9 */	bl sAdo_OngenTrgStart
/* 8050E9F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050E9F8  7C 08 03 A6 */	mtlr r0
/* 8050E9FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8050EA00  4E 80 00 20 */	blr 
