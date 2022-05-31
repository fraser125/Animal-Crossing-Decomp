lbl_8054D3AC:
/* 8054D3AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D3B0  7C 08 02 A6 */	mflr r0
/* 8054D3B4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054D3B8  54 87 18 38 */	slwi r7, r4, 3
/* 8054D3BC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054D3C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D3C4  3C 85 00 02 */	addis r4, r5, 2
/* 8054D3C8  3C C0 80 6A */	lis r6, anime@ha /* 0x806A5524@ha */
/* 8054D3CC  80 A4 60 4C */	lwz r5, 0x604c(r4)
/* 8054D3D0  38 06 55 24 */	addi r0, r6, anime@l /* 0x806A5524@l */
/* 8054D3D4  7C C0 3A 14 */	add r6, r0, r7
/* 8054D3D8  81 85 01 14 */	lwz r12, 0x114(r5)
/* 8054D3DC  80 86 00 00 */	lwz r4, 0(r6)
/* 8054D3E0  80 A6 00 04 */	lwz r5, 4(r6)
/* 8054D3E4  7D 89 03 A6 */	mtctr r12
/* 8054D3E8  4E 80 04 21 */	bctrl 
/* 8054D3EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D3F0  7C 08 03 A6 */	mtlr r0
/* 8054D3F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D3F8  4E 80 00 20 */	blr 
