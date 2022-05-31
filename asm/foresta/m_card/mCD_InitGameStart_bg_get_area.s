lbl_803FEF9C:
/* 803FEF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FEFA0  7C 08 02 A6 */	mflr r0
/* 803FEFA4  38 C0 00 02 */	li r6, 2
/* 803FEFA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FEFAC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803FEFB0  2C 00 00 00 */	cmpwi r0, 0
/* 803FEFB4  41 80 00 1C */	blt lbl_803FEFD0
/* 803FEFB8  2C 00 00 05 */	cmpwi r0, 5
/* 803FEFBC  40 80 00 14 */	bge lbl_803FEFD0
/* 803FEFC0  3C A0 80 66 */	lis r5, sound_mode@ha /* 0x8065E9DC@ha */
/* 803FEFC4  54 00 10 3A */	slwi r0, r0, 2
/* 803FEFC8  38 A5 E9 DC */	addi r5, r5, sound_mode@l /* 0x8065E9DC@l */
/* 803FEFCC  7C C5 00 2E */	lwzx r6, r5, r0
lbl_803FEFD0:
/* 803FEFD0  90 C4 00 10 */	stw r6, 0x10(r4)
/* 803FEFD4  3C A0 81 1C */	lis r5, SoftResetEnable@ha /* 0x811C5324@ha */
/* 803FEFD8  38 00 00 00 */	li r0, 0
/* 803FEFDC  98 05 53 24 */	stb r0, SoftResetEnable@l(r5)  /* 0x811C5324@l */
/* 803FEFE0  38 A0 00 01 */	li r5, 1
/* 803FEFE4  4B FF CA 45 */	bl mCD_bg_get_area_common
/* 803FEFE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FEFEC  7C 08 03 A6 */	mtlr r0
/* 803FEFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 803FEFF4  4E 80 00 20 */	blr 
