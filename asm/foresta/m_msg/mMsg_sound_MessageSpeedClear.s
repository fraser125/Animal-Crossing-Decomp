lbl_803C228C:
/* 803C228C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2290  7C 08 02 A6 */	mflr r0
/* 803C2294  3C 80 80 65 */	lis r4, Sound_Now_MessageSpeed@ha /* 0x80657224@ha */
/* 803C2298  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C229C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C22A0  7C 7F 1B 78 */	mr r31, r3
/* 803C22A4  38 64 72 24 */	addi r3, r4, Sound_Now_MessageSpeed@l /* 0x80657224@l */
/* 803C22A8  88 03 00 00 */	lbz r0, 0(r3)
/* 803C22AC  28 00 00 01 */	cmplwi r0, 1
/* 803C22B0  41 82 00 10 */	beq lbl_803C22C0
/* 803C22B4  38 00 00 01 */	li r0, 1
/* 803C22B8  98 03 00 00 */	stb r0, 0(r3)
/* 803C22BC  48 00 00 1C */	b lbl_803C22D8
lbl_803C22C0:
/* 803C22C0  48 26 BC 25 */	bl sAdo_MessageSpeedGet
/* 803C22C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803C22C8  28 00 00 01 */	cmplwi r0, 1
/* 803C22CC  41 82 00 0C */	beq lbl_803C22D8
/* 803C22D0  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 803C22D4  48 26 BB F1 */	bl sAdo_MessageSpeed
lbl_803C22D8:
/* 803C22D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C22DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C22E0  7C 08 03 A6 */	mtlr r0
/* 803C22E4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C22E8  4E 80 00 20 */	blr 
