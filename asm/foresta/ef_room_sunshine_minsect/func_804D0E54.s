lbl_804D0E54:
/* 804D0E54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D0E58  7C 08 02 A6 */	mflr r0
/* 804D0E5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D0E60  38 00 00 00 */	li r0, 0
/* 804D0E64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804D0E68  7C 7F 1B 78 */	mr r31, r3
/* 804D0E6C  3C 60 81 1D */	lis r3, draw_status@ha /* 0x811D2D08@ha */
/* 804D0E70  98 1F 01 74 */	stb r0, 0x174(r31)
/* 804D0E74  98 03 2D 08 */	stb r0, draw_status@l(r3)  /* 0x811D2D08@l */
/* 804D0E78  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 804D0E7C  2C 00 00 00 */	cmpwi r0, 0
/* 804D0E80  40 82 00 20 */	bne lbl_804D0EA0
/* 804D0E84  3C 80 80 4D */	lis r4, Ef_Room_Sunshine_MinsectL_actor_move@ha /* 0x804D11C4@ha */
/* 804D0E88  3C 60 80 4D */	lis r3, Ef_Room_Sunshine_MinsectL_actor_draw@ha /* 0x804D17B4@ha */
/* 804D0E8C  38 04 11 C4 */	addi r0, r4, Ef_Room_Sunshine_MinsectL_actor_move@l /* 0x804D11C4@l */
/* 804D0E90  90 1F 01 64 */	stw r0, 0x164(r31)
/* 804D0E94  38 03 17 B4 */	addi r0, r3, Ef_Room_Sunshine_MinsectL_actor_draw@l /* 0x804D17B4@l */
/* 804D0E98  90 1F 01 68 */	stw r0, 0x168(r31)
/* 804D0E9C  48 00 00 18 */	b lbl_804D0EB4
lbl_804D0EA0:
/* 804D0EA0  3C 60 80 64 */	lis r3, data_8064641C@ha /* 0x8064641C@ha */
/* 804D0EA4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D0EA8  C0 03 64 1C */	lfs f0, data_8064641C@l(r3)  /* 0x8064641C@l */
/* 804D0EAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D0EB0  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_804D0EB4:
/* 804D0EB4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804D0EB8  3C 60 80 64 */	lis r3, lit_393@ha /* 0x80646420@ha */
/* 804D0EBC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804D0EC0  C0 23 64 20 */	lfs f1, lit_393@l(r3)  /* 0x80646420@l */
/* 804D0EC4  38 61 00 08 */	addi r3, r1, 8
/* 804D0EC8  90 81 00 08 */	stw r4, 8(r1)
/* 804D0ECC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D0ED0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804D0ED4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D0ED8  4B EB E9 49 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804D0EDC  3C 80 80 64 */	lis r4, lit_394@ha /* 0x80646424@ha */
/* 804D0EE0  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804D0EE4  C0 24 64 24 */	lfs f1, lit_394@l(r4)  /* 0x80646424@l */
/* 804D0EE8  3C 60 80 64 */	lis r3, lit_395@ha /* 0x80646428@ha */
/* 804D0EEC  C0 03 64 28 */	lfs f0, lit_395@l(r3)  /* 0x80646428@l */
/* 804D0EF0  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 804D0EF4  D0 3F 00 60 */	stfs f1, 0x60(r31)
/* 804D0EF8  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 804D0EFC  D0 1F 01 40 */	stfs f0, 0x140(r31)
/* 804D0F00  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 804D0F04  2C 00 00 03 */	cmpwi r0, 3
/* 804D0F08  41 82 00 5C */	beq lbl_804D0F64
/* 804D0F0C  40 80 00 80 */	bge lbl_804D0F8C
/* 804D0F10  2C 00 00 02 */	cmpwi r0, 2
/* 804D0F14  40 80 00 08 */	bge lbl_804D0F1C
/* 804D0F18  48 00 00 74 */	b lbl_804D0F8C
lbl_804D0F1C:
/* 804D0F1C  3C 60 80 4D */	lis r3, Ef_Room_Sunshine_MinsectL_actor_move@ha /* 0x804D11C4@ha */
/* 804D0F20  3C 80 80 4D */	lis r4, Ef_Room_Sunshine_MinsectL_actor_draw@ha /* 0x804D17B4@ha */
/* 804D0F24  38 03 11 C4 */	addi r0, r3, Ef_Room_Sunshine_MinsectL_actor_move@l /* 0x804D11C4@l */
/* 804D0F28  90 1F 01 64 */	stw r0, 0x164(r31)
/* 804D0F2C  38 04 17 B4 */	addi r0, r4, Ef_Room_Sunshine_MinsectL_actor_draw@l /* 0x804D17B4@l */
/* 804D0F30  3C 60 80 64 */	lis r3, lit_396@ha /* 0x8064642C@ha */
/* 804D0F34  90 1F 01 68 */	stw r0, 0x168(r31)
/* 804D0F38  38 83 64 2C */	addi r4, r3, lit_396@l /* 0x8064642C@l */
/* 804D0F3C  3C 60 80 64 */	lis r3, lit_397@ha /* 0x80646430@ha */
/* 804D0F40  C0 24 00 00 */	lfs f1, 0(r4)
/* 804D0F44  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 804D0F48  C0 03 64 30 */	lfs f0, lit_397@l(r3)  /* 0x80646430@l */
/* 804D0F4C  EC 22 08 2A */	fadds f1, f2, f1
/* 804D0F50  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 804D0F54  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D0F58  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D0F5C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804D0F60  48 00 00 2C */	b lbl_804D0F8C
lbl_804D0F64:
/* 804D0F64  3C 80 80 64 */	lis r4, lit_396@ha /* 0x8064642C@ha */
/* 804D0F68  3C 60 80 64 */	lis r3, lit_397@ha /* 0x80646430@ha */
/* 804D0F6C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 804D0F70  C0 24 64 2C */	lfs f1, lit_396@l(r4)  /* 0x8064642C@l */
/* 804D0F74  C0 03 64 30 */	lfs f0, lit_397@l(r3)  /* 0x80646430@l */
/* 804D0F78  EC 22 08 28 */	fsubs f1, f2, f1
/* 804D0F7C  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 804D0F80  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D0F84  EC 01 00 2A */	fadds f0, f1, f0
/* 804D0F88  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_804D0F8C:
/* 804D0F8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D0F90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804D0F94  7C 08 03 A6 */	mtlr r0
/* 804D0F98  38 21 00 20 */	addi r1, r1, 0x20
/* 804D0F9C  4E 80 00 20 */	blr 
