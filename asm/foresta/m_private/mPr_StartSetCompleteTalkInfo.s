lbl_803E20A4:
/* 803E20A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E20A8  7C 08 02 A6 */	mflr r0
/* 803E20AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E20B0  48 00 D3 25 */	bl mSM_CHECK_ALL_FISH_GET
/* 803E20B4  2C 03 00 00 */	cmpwi r3, 0
/* 803E20B8  41 82 00 20 */	beq lbl_803E20D8
/* 803E20BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E20C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E20C4  3C 63 00 02 */	addis r3, r3, 2
/* 803E20C8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803E20CC  88 03 11 02 */	lbz r0, 0x1102(r3)
/* 803E20D0  60 00 00 01 */	ori r0, r0, 1
/* 803E20D4  98 03 11 02 */	stb r0, 0x1102(r3)
lbl_803E20D8:
/* 803E20D8  48 00 D1 A5 */	bl mSM_CHECK_ALL_INSECT_GET
/* 803E20DC  2C 03 00 00 */	cmpwi r3, 0
/* 803E20E0  41 82 00 20 */	beq lbl_803E2100
/* 803E20E4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E20E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E20EC  3C 63 00 02 */	addis r3, r3, 2
/* 803E20F0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803E20F4  88 03 11 02 */	lbz r0, 0x1102(r3)
/* 803E20F8  60 00 00 04 */	ori r0, r0, 4
/* 803E20FC  98 03 11 02 */	stb r0, 0x1102(r3)
lbl_803E2100:
/* 803E2100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2104  7C 08 03 A6 */	mtlr r0
/* 803E2108  38 21 00 10 */	addi r1, r1, 0x10
/* 803E210C  4E 80 00 20 */	blr 
