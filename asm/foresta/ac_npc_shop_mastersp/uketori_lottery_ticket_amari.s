lbl_8057CCD4:
/* 8057CCD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057CCD8  7C 08 02 A6 */	mflr r0
/* 8057CCDC  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8057CCE0  7C 88 23 78 */	mr r8, r4
/* 8057CCE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CCE8  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8057CCEC  3C C6 00 02 */	addis r6, r6, 2
/* 8057CCF0  38 A5 FF FF */	addi r5, r5, -1
/* 8057CCF4  80 E6 61 3C */	lwz r7, 0x613c(r6)
/* 8057CCF8  54 60 08 3C */	slwi r0, r3, 1
/* 8057CCFC  54 A6 18 38 */	slwi r6, r5, 3
/* 8057CD00  7C 64 1B 78 */	mr r4, r3
/* 8057CD04  7C A7 02 14 */	add r5, r7, r0
/* 8057CD08  7C E3 3B 78 */	mr r3, r7
/* 8057CD0C  A0 05 00 68 */	lhz r0, 0x68(r5)
/* 8057CD10  60 C5 2C 00 */	ori r5, r6, 0x2c00
/* 8057CD14  38 C0 00 00 */	li r6, 0
/* 8057CD18  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8057CD1C  7C 08 00 50 */	subf r0, r8, r0
/* 8057CD20  7C A0 03 78 */	or r0, r5, r0
/* 8057CD24  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8057CD28  4B E6 41 01 */	bl mPr_SetPossessionItem
/* 8057CD2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057CD30  7C 08 03 A6 */	mtlr r0
/* 8057CD34  38 21 00 10 */	addi r1, r1, 0x10
/* 8057CD38  4E 80 00 20 */	blr 
