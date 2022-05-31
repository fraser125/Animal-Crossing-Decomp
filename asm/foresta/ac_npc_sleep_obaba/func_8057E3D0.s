lbl_8057E3D0:
/* 8057E3D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057E3D4  7C 08 02 A6 */	mflr r0
/* 8057E3D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057E3DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8057E3E0  4B B1 CA F5 */	bl func_8009AED4
/* 8057E3E4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057E3E8  7C 7D 1B 78 */	mr r29, r3
/* 8057E3EC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057E3F0  7C 9E 23 78 */	mr r30, r4
/* 8057E3F4  3F E5 00 02 */	addis r31, r5, 2
/* 8057E3F8  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8057E3FC  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8057E400  7D 89 03 A6 */	mtctr r12
/* 8057E404  4E 80 04 21 */	bctrl 
/* 8057E408  2C 03 00 01 */	cmpwi r3, 1
/* 8057E40C  40 82 00 58 */	bne lbl_8057E464
/* 8057E410  3C 60 80 58 */	lis r3, aNSO_schedule_proc@ha /* 0x8057E91C@ha */
/* 8057E414  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C09CC@ha */
/* 8057E418  38 03 E9 1C */	addi r0, r3, aNSO_schedule_proc@l /* 0x8057E91C@l */
/* 8057E41C  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8057E420  38 A4 09 CC */	addi r5, r4, ct_data@l /* 0x806C09CC@l */
/* 8057E424  7F A3 EB 78 */	mr r3, r29
/* 8057E428  7F C4 F3 78 */	mr r4, r30
/* 8057E42C  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8057E430  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8057E434  7D 89 03 A6 */	mtctr r12
/* 8057E438  4E 80 04 21 */	bctrl 
/* 8057E43C  3C 80 80 65 */	lis r4, data_80649A24@ha /* 0x80649A24@ha */
/* 8057E440  3C 60 80 65 */	lis r3, lit_439@ha /* 0x80649A28@ha */
/* 8057E444  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 8057E448  C0 24 9A 24 */	lfs f1, data_80649A24@l(r4)  /* 0x80649A24@l */
/* 8057E44C  C0 03 9A 28 */	lfs f0, lit_439@l(r3)  /* 0x80649A28@l */
/* 8057E450  EC 22 08 28 */	fsubs f1, f2, f1
/* 8057E454  D0 3D 00 28 */	stfs f1, 0x28(r29)
/* 8057E458  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 8057E45C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8057E460  D0 1D 00 30 */	stfs f0, 0x30(r29)
lbl_8057E464:
/* 8057E464  39 61 00 20 */	addi r11, r1, 0x20
/* 8057E468  4B B1 CA B9 */	bl func_8009AF20
/* 8057E46C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057E470  7C 08 03 A6 */	mtlr r0
/* 8057E474  38 21 00 20 */	addi r1, r1, 0x20
/* 8057E478  4E 80 00 20 */	blr 
