lbl_8049F194:
/* 8049F194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049F198  7C 08 02 A6 */	mflr r0
/* 8049F19C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049F1A0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049F1A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049F1A8  3C 84 00 02 */	addis r4, r4, 2
/* 8049F1AC  80 84 60 7C */	lwz r4, 0x607c(r4)
/* 8049F1B0  28 04 00 00 */	cmplwi r4, 0
/* 8049F1B4  41 82 00 5C */	beq lbl_8049F210
/* 8049F1B8  80 A4 00 00 */	lwz r5, 0(r4)
/* 8049F1BC  28 05 00 00 */	cmplwi r5, 0
/* 8049F1C0  41 82 00 50 */	beq lbl_8049F210
/* 8049F1C4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8049F1C8  28 03 27 00 */	cmplwi r3, 0x2700
/* 8049F1CC  41 80 00 44 */	blt lbl_8049F210
/* 8049F1D0  28 03 27 47 */	cmplwi r3, 0x2747
/* 8049F1D4  40 80 00 3C */	bge lbl_8049F210
/* 8049F1D8  A8 05 01 7A */	lha r0, 0x17a(r5)
/* 8049F1DC  38 83 D9 00 */	addi r4, r3, -9984
/* 8049F1E0  7C A3 2B 78 */	mr r3, r5
/* 8049F1E4  68 00 00 01 */	xori r0, r0, 1
/* 8049F1E8  B0 85 01 76 */	sth r4, 0x176(r5)
/* 8049F1EC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8049F1F0  B0 05 01 7A */	sth r0, 0x17a(r5)
/* 8049F1F4  A8 85 01 76 */	lha r4, 0x176(r5)
/* 8049F1F8  A8 A5 01 7A */	lha r5, 0x17a(r5)
/* 8049F1FC  4B FF F5 1D */	bl aSI_CopyWallTexture
/* 8049F200  38 60 01 1B */	li r3, 0x11b
/* 8049F204  48 18 EB 01 */	bl sAdo_SysTrgStart
/* 8049F208  38 60 00 01 */	li r3, 1
/* 8049F20C  48 00 00 08 */	b lbl_8049F214
lbl_8049F210:
/* 8049F210  38 60 00 00 */	li r3, 0
lbl_8049F214:
/* 8049F214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049F218  7C 08 03 A6 */	mtlr r0
/* 8049F21C  38 21 00 10 */	addi r1, r1, 0x10
/* 8049F220  4E 80 00 20 */	blr 
