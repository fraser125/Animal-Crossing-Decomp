lbl_805B1148:
/* 805B1148  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B114C  7C 08 02 A6 */	mflr r0
/* 805B1150  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B1154  38 A0 00 00 */	li r5, 0
/* 805B1158  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B115C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805B1160  7C 7F 1B 78 */	mr r31, r3
/* 805B1164  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805B1168  38 80 25 30 */	li r4, 0x2530
/* 805B116C  3C 63 00 02 */	addis r3, r3, 2
/* 805B1170  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805B1174  4B E2 F5 FD */	bl mPr_GetPossessionItemIdxWithCond
/* 805B1178  2C 03 FF FF */	cmpwi r3, -1
/* 805B117C  40 82 00 50 */	bne lbl_805B11CC
/* 805B1180  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 805B1184  38 61 00 0C */	addi r3, r1, 0xc
/* 805B1188  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805B118C  38 81 00 08 */	addi r4, r1, 8
/* 805B1190  38 A1 00 10 */	addi r5, r1, 0x10
/* 805B1194  90 C1 00 10 */	stw r6, 0x10(r1)
/* 805B1198  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B119C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805B11A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B11A4  4B DF 41 C5 */	bl mFI_Wpos2UtNum
/* 805B11A8  2C 03 00 00 */	cmpwi r3, 0
/* 805B11AC  41 82 00 20 */	beq lbl_805B11CC
/* 805B11B0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805B11B4  38 60 25 30 */	li r3, 0x2530
/* 805B11B8  80 A1 00 08 */	lwz r5, 8(r1)
/* 805B11BC  38 C0 00 01 */	li r6, 1
/* 805B11C0  38 84 00 01 */	addi r4, r4, 1
/* 805B11C4  38 A5 00 01 */	addi r5, r5, 1
/* 805B11C8  4B DF 64 85 */	bl mFI_UtNumtoFGSet_common
lbl_805B11CC:
/* 805B11CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B11D0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805B11D4  7C 08 03 A6 */	mtlr r0
/* 805B11D8  38 21 00 30 */	addi r1, r1, 0x30
/* 805B11DC  4E 80 00 20 */	blr 
