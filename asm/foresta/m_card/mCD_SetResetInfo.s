lbl_803FCCB0:
/* 803FCCB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FCCB4  7C 08 02 A6 */	mflr r0
/* 803FCCB8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FCCBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FCCC0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803FCCC4  38 00 00 00 */	li r0, 0
/* 803FCCC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FCCCC  3F E4 00 03 */	addis r31, r4, 3
/* 803FCCD0  93 C1 00 08 */	stw r30, 8(r1)
/* 803FCCD4  7C 7E 1B 78 */	mr r30, r3
/* 803FCCD8  98 1F 88 68 */	stb r0, -0x7798(r31)
/* 803FCCDC  4B FF FF 59 */	bl mCD_CheckResetCode
/* 803FCCE0  2C 03 00 00 */	cmpwi r3, 0
/* 803FCCE4  40 82 00 28 */	bne lbl_803FCD0C
/* 803FCCE8  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 803FCCEC  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 803FCCF0  2C 00 00 02 */	cmpwi r0, 2
/* 803FCCF4  40 80 00 0C */	bge lbl_803FCD00
/* 803FCCF8  38 00 00 01 */	li r0, 1
/* 803FCCFC  98 1F 88 68 */	stb r0, -0x7798(r31)
lbl_803FCD00:
/* 803FCD00  88 7E 00 16 */	lbz r3, 0x16(r30)
/* 803FCD04  38 03 00 01 */	addi r0, r3, 1
/* 803FCD08  98 1E 00 16 */	stb r0, 0x16(r30)
lbl_803FCD0C:
/* 803FCD0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FCD10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FCD14  83 C1 00 08 */	lwz r30, 8(r1)
/* 803FCD18  7C 08 03 A6 */	mtlr r0
/* 803FCD1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803FCD20  4E 80 00 20 */	blr 
