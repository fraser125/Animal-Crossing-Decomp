lbl_8037CC20:
/* 8037CC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037CC24  7C 08 02 A6 */	mflr r0
/* 8037CC28  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8037CC2C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8037CC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037CC34  3C 63 00 02 */	addis r3, r3, 2
/* 8037CC38  A8 63 66 6C */	lha r3, 0x666c(r3)
/* 8037CC3C  2C 03 00 04 */	cmpwi r3, 4
/* 8037CC40  41 80 00 0C */	blt lbl_8037CC4C
/* 8037CC44  38 60 00 03 */	li r3, 3
/* 8037CC48  48 00 00 10 */	b lbl_8037CC58
lbl_8037CC4C:
/* 8037CC4C  7C 60 07 35 */	extsh. r0, r3
/* 8037CC50  40 80 00 08 */	bge lbl_8037CC58
/* 8037CC54  38 60 00 00 */	li r3, 0
lbl_8037CC58:
/* 8037CC58  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8037CC5C  48 2B 17 55 */	bl sAdo_Tenki
/* 8037CC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037CC64  7C 08 03 A6 */	mtlr r0
/* 8037CC68  38 21 00 10 */	addi r1, r1, 0x10
/* 8037CC6C  4E 80 00 20 */	blr 
