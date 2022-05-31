lbl_804CEE44:
/* 804CEE44  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CEE48  7C 08 02 A6 */	mflr r0
/* 804CEE4C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CEE50  38 00 00 00 */	li r0, 0
/* 804CEE54  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804CEE58  7C 7F 1B 78 */	mr r31, r3
/* 804CEE5C  98 03 01 74 */	stb r0, 0x174(r3)
/* 804CEE60  A8 03 00 24 */	lha r0, 0x24(r3)
/* 804CEE64  2C 00 00 00 */	cmpwi r0, 0
/* 804CEE68  40 82 00 20 */	bne lbl_804CEE88
/* 804CEE6C  3C 80 80 4D */	lis r4, Ef_Room_SunshineL_actor_move@ha /* 0x804CF24C@ha */
/* 804CEE70  3C 60 80 4D */	lis r3, Ef_Room_SunshineL_actor_draw@ha /* 0x804CF4D4@ha */
/* 804CEE74  38 04 F2 4C */	addi r0, r4, Ef_Room_SunshineL_actor_move@l /* 0x804CF24C@l */
/* 804CEE78  90 1F 01 64 */	stw r0, 0x164(r31)
/* 804CEE7C  38 03 F4 D4 */	addi r0, r3, Ef_Room_SunshineL_actor_draw@l /* 0x804CF4D4@l */
/* 804CEE80  90 1F 01 68 */	stw r0, 0x168(r31)
/* 804CEE84  48 00 00 18 */	b lbl_804CEE9C
lbl_804CEE88:
/* 804CEE88  3C 60 80 64 */	lis r3, data_806462EC@ha /* 0x806462EC@ha */
/* 804CEE8C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804CEE90  C0 03 62 EC */	lfs f0, data_806462EC@l(r3)  /* 0x806462EC@l */
/* 804CEE94  EC 01 00 28 */	fsubs f0, f1, f0
/* 804CEE98  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_804CEE9C:
/* 804CEE9C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804CEEA0  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806462F0@ha */
/* 804CEEA4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804CEEA8  C0 23 62 F0 */	lfs f1, lit_391@l(r3)  /* 0x806462F0@l */
/* 804CEEAC  38 61 00 20 */	addi r3, r1, 0x20
/* 804CEEB0  90 81 00 20 */	stw r4, 0x20(r1)
/* 804CEEB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CEEB8  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804CEEBC  90 01 00 28 */	stw r0, 0x28(r1)
/* 804CEEC0  4B EC 09 61 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804CEEC4  3C 60 80 64 */	lis r3, data_806462EC@ha /* 0x806462EC@ha */
/* 804CEEC8  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804CEECC  C0 03 62 EC */	lfs f0, data_806462EC@l(r3)  /* 0x806462EC@l */
/* 804CEED0  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804CEED4  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804CEED8  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804CEEDC  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 804CEEE0  2C 00 00 03 */	cmpwi r0, 3
/* 804CEEE4  41 82 00 98 */	beq lbl_804CEF7C
/* 804CEEE8  40 80 00 F4 */	bge lbl_804CEFDC
/* 804CEEEC  2C 00 00 02 */	cmpwi r0, 2
/* 804CEEF0  40 80 00 08 */	bge lbl_804CEEF8
/* 804CEEF4  48 00 00 E8 */	b lbl_804CEFDC
lbl_804CEEF8:
/* 804CEEF8  3C 60 80 4D */	lis r3, Ef_Room_SunshineL_actor_move@ha /* 0x804CF24C@ha */
/* 804CEEFC  3C 80 80 4D */	lis r4, Ef_Room_SunshineL_actor_draw@ha /* 0x804CF4D4@ha */
/* 804CEF00  38 03 F2 4C */	addi r0, r3, Ef_Room_SunshineL_actor_move@l /* 0x804CF24C@l */
/* 804CEF04  3C 60 80 64 */	lis r3, lit_392@ha /* 0x806462F4@ha */
/* 804CEF08  90 1F 01 64 */	stw r0, 0x164(r31)
/* 804CEF0C  38 04 F4 D4 */	addi r0, r4, Ef_Room_SunshineL_actor_draw@l /* 0x804CF4D4@l */
/* 804CEF10  38 A3 62 F4 */	addi r5, r3, lit_392@l /* 0x806462F4@l */
/* 804CEF14  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806462F0@ha */
/* 804CEF18  90 1F 01 68 */	stw r0, 0x168(r31)
/* 804CEF1C  38 83 62 F0 */	addi r4, r3, lit_391@l /* 0x806462F0@l */
/* 804CEF20  C0 05 00 00 */	lfs f0, 0(r5)
/* 804CEF24  38 61 00 14 */	addi r3, r1, 0x14
/* 804CEF28  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 804CEF2C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804CEF30  EC 02 00 2A */	fadds f0, f2, f0
/* 804CEF34  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804CEF38  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804CEF3C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804CEF40  90 81 00 14 */	stw r4, 0x14(r1)
/* 804CEF44  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CEF48  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804CEF4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804CEF50  4B EC 08 D1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804CEF54  3C 80 80 64 */	lis r4, data_806462EC@ha /* 0x806462EC@ha */
/* 804CEF58  3C 60 80 64 */	lis r3, lit_393@ha /* 0x806462F8@ha */
/* 804CEF5C  C0 44 62 EC */	lfs f2, data_806462EC@l(r4)  /* 0x806462EC@l */
/* 804CEF60  C0 03 62 F8 */	lfs f0, lit_393@l(r3)  /* 0x806462F8@l */
/* 804CEF64  EC 22 08 2A */	fadds f1, f2, f1
/* 804CEF68  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804CEF6C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804CEF70  EC 01 00 28 */	fsubs f0, f1, f0
/* 804CEF74  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804CEF78  48 00 00 64 */	b lbl_804CEFDC
lbl_804CEF7C:
/* 804CEF7C  3C 80 80 64 */	lis r4, lit_392@ha /* 0x806462F4@ha */
/* 804CEF80  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806462F0@ha */
/* 804CEF84  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 804CEF88  C0 04 62 F4 */	lfs f0, lit_392@l(r4)  /* 0x806462F4@l */
/* 804CEF8C  C0 23 62 F0 */	lfs f1, lit_391@l(r3)  /* 0x806462F0@l */
/* 804CEF90  38 61 00 08 */	addi r3, r1, 8
/* 804CEF94  EC 02 00 28 */	fsubs f0, f2, f0
/* 804CEF98  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804CEF9C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804CEFA0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804CEFA4  90 81 00 08 */	stw r4, 8(r1)
/* 804CEFA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CEFAC  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804CEFB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CEFB4  4B EC 08 6D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804CEFB8  3C 80 80 64 */	lis r4, data_806462EC@ha /* 0x806462EC@ha */
/* 804CEFBC  3C 60 80 64 */	lis r3, lit_393@ha /* 0x806462F8@ha */
/* 804CEFC0  C0 44 62 EC */	lfs f2, data_806462EC@l(r4)  /* 0x806462EC@l */
/* 804CEFC4  C0 03 62 F8 */	lfs f0, lit_393@l(r3)  /* 0x806462F8@l */
/* 804CEFC8  EC 22 08 2A */	fadds f1, f2, f1
/* 804CEFCC  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804CEFD0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804CEFD4  EC 01 00 2A */	fadds f0, f1, f0
/* 804CEFD8  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_804CEFDC:
/* 804CEFDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CEFE0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804CEFE4  7C 08 03 A6 */	mtlr r0
/* 804CEFE8  38 21 00 40 */	addi r1, r1, 0x40
/* 804CEFEC  4E 80 00 20 */	blr 
