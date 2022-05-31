lbl_80560CFC:
/* 80560CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560D00  7C 08 02 A6 */	mflr r0
/* 80560D04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80560D08  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80560D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560D10  38 00 00 01 */	li r0, 1
/* 80560D14  38 60 00 00 */	li r3, 0
/* 80560D18  3C 84 00 02 */	addis r4, r4, 2
/* 80560D1C  98 04 65 22 */	stb r0, 0x6522(r4)
/* 80560D20  48 0C D7 D1 */	bl sAdo_TrgSeEcho
/* 80560D24  38 60 00 00 */	li r3, 0
/* 80560D28  48 0C D7 E9 */	bl sAdo_LevSeEcho
/* 80560D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560D30  7C 08 03 A6 */	mtlr r0
/* 80560D34  38 21 00 10 */	addi r1, r1, 0x10
/* 80560D38  4E 80 00 20 */	blr 
