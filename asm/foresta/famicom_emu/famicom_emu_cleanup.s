lbl_8062D6C4:
/* 8062D6C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D6C8  7C 08 02 A6 */	mflr r0
/* 8062D6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D6D0  4B A3 3F E1 */	bl JC_JFWDisplay_getManager
/* 8062D6D4  38 80 00 01 */	li r4, 1
/* 8062D6D8  4B A3 40 E1 */	bl JC_JFWDisplay_startFadeIn
/* 8062D6DC  4B A1 75 0D */	bl famicom_cleanup
/* 8062D6E0  2C 03 00 00 */	cmpwi r3, 0
/* 8062D6E4  41 82 00 1C */	beq lbl_8062D700
/* 8062D6E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062D6EC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062D6F0  3C 63 00 03 */	addis r3, r3, 3
/* 8062D6F4  80 03 DB AC */	lwz r0, -0x2454(r3)
/* 8062D6F8  60 00 00 02 */	ori r0, r0, 2
/* 8062D6FC  90 03 DB AC */	stw r0, -0x2454(r3)
lbl_8062D700:
/* 8062D700  4B FF FC 39 */	bl my_alloc_cleanup
/* 8062D704  3C 60 81 36 */	lis r3, freeXfbBase@ha /* 0x8135FBA8@ha */
/* 8062D708  80 03 FB A8 */	lwz r0, freeXfbBase@l(r3)  /* 0x8135FBA8@l */
/* 8062D70C  28 00 00 00 */	cmplwi r0, 0
/* 8062D710  41 82 00 20 */	beq lbl_8062D730
/* 8062D714  4B A3 3F 9D */	bl JC_JFWDisplay_getManager
/* 8062D718  4B A3 41 61 */	bl JC_JFWDisplay_changeToDoubleXfb
/* 8062D71C  3C 80 81 36 */	lis r4, freeXfbBase@ha /* 0x8135FBA8@ha */
/* 8062D720  38 00 00 00 */	li r0, 0
/* 8062D724  3C 60 81 36 */	lis r3, freeXfbSize@ha /* 0x8135FBAC@ha */
/* 8062D728  90 04 FB A8 */	stw r0, freeXfbBase@l(r4)  /* 0x8135FBA8@l */
/* 8062D72C  90 03 FB AC */	stw r0, freeXfbSize@l(r3)  /* 0x8135FBAC@l */
lbl_8062D730:
/* 8062D730  48 00 0C 3D */	bl sAdo_SubGameEnd
/* 8062D734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D738  7C 08 03 A6 */	mtlr r0
/* 8062D73C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D740  4E 80 00 20 */	blr 
