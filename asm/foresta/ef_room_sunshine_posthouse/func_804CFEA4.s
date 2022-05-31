lbl_804CFEA4:
/* 804CFEA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CFEA8  7C 08 02 A6 */	mflr r0
/* 804CFEAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CFEB0  38 00 00 00 */	li r0, 0
/* 804CFEB4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804CFEB8  7C 7F 1B 78 */	mr r31, r3
/* 804CFEBC  98 03 01 74 */	stb r0, 0x174(r3)
/* 804CFEC0  A8 03 00 24 */	lha r0, 0x24(r3)
/* 804CFEC4  2C 00 00 00 */	cmpwi r0, 0
/* 804CFEC8  40 82 00 20 */	bne lbl_804CFEE8
/* 804CFECC  3C 80 80 4D */	lis r4, Ef_Room_Sunshine_PosthouseL_actor_move@ha /* 0x804D0274@ha */
/* 804CFED0  3C 60 80 4D */	lis r3, Ef_Room_Sunshine_PosthouseL_actor_draw@ha /* 0x804D04FC@ha */
/* 804CFED4  38 04 02 74 */	addi r0, r4, Ef_Room_Sunshine_PosthouseL_actor_move@l /* 0x804D0274@l */
/* 804CFED8  90 1F 01 64 */	stw r0, 0x164(r31)
/* 804CFEDC  38 03 04 FC */	addi r0, r3, Ef_Room_Sunshine_PosthouseL_actor_draw@l /* 0x804D04FC@l */
/* 804CFEE0  90 1F 01 68 */	stw r0, 0x168(r31)
/* 804CFEE4  48 00 00 18 */	b lbl_804CFEFC
lbl_804CFEE8:
/* 804CFEE8  3C 60 80 64 */	lis r3, data_80646384@ha /* 0x80646384@ha */
/* 804CFEEC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804CFEF0  C0 03 63 84 */	lfs f0, data_80646384@l(r3)  /* 0x80646384@l */
/* 804CFEF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804CFEF8  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_804CFEFC:
/* 804CFEFC  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804CFF00  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646388@ha */
/* 804CFF04  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804CFF08  C0 23 63 88 */	lfs f1, lit_391@l(r3)  /* 0x80646388@l */
/* 804CFF0C  38 61 00 20 */	addi r3, r1, 0x20
/* 804CFF10  90 81 00 20 */	stw r4, 0x20(r1)
/* 804CFF14  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CFF18  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804CFF1C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804CFF20  4B EB F9 01 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804CFF24  3C 60 80 64 */	lis r3, lit_392@ha /* 0x8064638C@ha */
/* 804CFF28  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804CFF2C  C0 03 63 8C */	lfs f0, lit_392@l(r3)  /* 0x8064638C@l */
/* 804CFF30  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804CFF34  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804CFF38  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804CFF3C  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 804CFF40  2C 00 00 03 */	cmpwi r0, 3
/* 804CFF44  41 82 00 98 */	beq lbl_804CFFDC
/* 804CFF48  40 80 00 F4 */	bge lbl_804D003C
/* 804CFF4C  2C 00 00 02 */	cmpwi r0, 2
/* 804CFF50  40 80 00 08 */	bge lbl_804CFF58
/* 804CFF54  48 00 00 E8 */	b lbl_804D003C
lbl_804CFF58:
/* 804CFF58  3C 60 80 4D */	lis r3, Ef_Room_Sunshine_PosthouseL_actor_move@ha /* 0x804D0274@ha */
/* 804CFF5C  3C 80 80 4D */	lis r4, Ef_Room_Sunshine_PosthouseL_actor_draw@ha /* 0x804D04FC@ha */
/* 804CFF60  38 03 02 74 */	addi r0, r3, Ef_Room_Sunshine_PosthouseL_actor_move@l /* 0x804D0274@l */
/* 804CFF64  3C 60 80 64 */	lis r3, lit_393@ha /* 0x80646390@ha */
/* 804CFF68  90 1F 01 64 */	stw r0, 0x164(r31)
/* 804CFF6C  38 04 04 FC */	addi r0, r4, Ef_Room_Sunshine_PosthouseL_actor_draw@l /* 0x804D04FC@l */
/* 804CFF70  38 A3 63 90 */	addi r5, r3, lit_393@l /* 0x80646390@l */
/* 804CFF74  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646388@ha */
/* 804CFF78  90 1F 01 68 */	stw r0, 0x168(r31)
/* 804CFF7C  38 83 63 88 */	addi r4, r3, lit_391@l /* 0x80646388@l */
/* 804CFF80  C0 05 00 00 */	lfs f0, 0(r5)
/* 804CFF84  38 61 00 14 */	addi r3, r1, 0x14
/* 804CFF88  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 804CFF8C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804CFF90  EC 02 00 2A */	fadds f0, f2, f0
/* 804CFF94  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804CFF98  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804CFF9C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804CFFA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 804CFFA4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CFFA8  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804CFFAC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804CFFB0  4B EB F8 71 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804CFFB4  3C 80 80 64 */	lis r4, data_80646384@ha /* 0x80646384@ha */
/* 804CFFB8  3C 60 80 64 */	lis r3, lit_394@ha /* 0x80646394@ha */
/* 804CFFBC  C0 44 63 84 */	lfs f2, data_80646384@l(r4)  /* 0x80646384@l */
/* 804CFFC0  C0 03 63 94 */	lfs f0, lit_394@l(r3)  /* 0x80646394@l */
/* 804CFFC4  EC 22 08 2A */	fadds f1, f2, f1
/* 804CFFC8  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804CFFCC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804CFFD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804CFFD4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804CFFD8  48 00 00 64 */	b lbl_804D003C
lbl_804CFFDC:
/* 804CFFDC  3C 80 80 64 */	lis r4, lit_393@ha /* 0x80646390@ha */
/* 804CFFE0  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646388@ha */
/* 804CFFE4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 804CFFE8  C0 04 63 90 */	lfs f0, lit_393@l(r4)  /* 0x80646390@l */
/* 804CFFEC  C0 23 63 88 */	lfs f1, lit_391@l(r3)  /* 0x80646388@l */
/* 804CFFF0  38 61 00 08 */	addi r3, r1, 8
/* 804CFFF4  EC 02 00 28 */	fsubs f0, f2, f0
/* 804CFFF8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804CFFFC  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804D0000  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804D0004  90 81 00 08 */	stw r4, 8(r1)
/* 804D0008  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D000C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804D0010  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D0014  4B EB F8 0D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804D0018  3C 80 80 64 */	lis r4, data_80646384@ha /* 0x80646384@ha */
/* 804D001C  3C 60 80 64 */	lis r3, lit_394@ha /* 0x80646394@ha */
/* 804D0020  C0 44 63 84 */	lfs f2, data_80646384@l(r4)  /* 0x80646384@l */
/* 804D0024  C0 03 63 94 */	lfs f0, lit_394@l(r3)  /* 0x80646394@l */
/* 804D0028  EC 22 08 2A */	fadds f1, f2, f1
/* 804D002C  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804D0030  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D0034  EC 01 00 2A */	fadds f0, f1, f0
/* 804D0038  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_804D003C:
/* 804D003C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D0040  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804D0044  7C 08 03 A6 */	mtlr r0
/* 804D0048  38 21 00 40 */	addi r1, r1, 0x40
/* 804D004C  4E 80 00 20 */	blr 
