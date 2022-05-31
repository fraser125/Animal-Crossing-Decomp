lbl_80594C5C:
/* 80594C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594C60  7C 08 02 A6 */	mflr r0
/* 80594C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594C68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80594C6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80594C70  7C 7E 1B 78 */	mr r30, r3
/* 80594C74  38 9E 00 28 */	addi r4, r30, 0x28
/* 80594C78  AB E3 00 36 */	lha r31, 0x36(r3)
/* 80594C7C  38 7E 00 3C */	addi r3, r30, 0x3c
/* 80594C80  4B E2 62 3D */	bl xyz_t_move
/* 80594C84  3C 60 80 65 */	lis r3, lit_662@ha /* 0x80649D4C@ha */
/* 80594C88  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 80594C8C  C0 43 9D 4C */	lfs f2, lit_662@l(r3)  /* 0x80649D4C@l */
/* 80594C90  38 7E 00 74 */	addi r3, r30, 0x74
/* 80594C94  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 80594C98  EC 42 00 32 */	fmuls f2, f2, f0
/* 80594C9C  4B E2 5F CD */	bl chase_f
/* 80594CA0  7F E3 FB 78 */	mr r3, r31
/* 80594CA4  4B E2 5E 4D */	bl sin_s
/* 80594CA8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80594CAC  7F E3 FB 78 */	mr r3, r31
/* 80594CB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80594CB4  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 80594CB8  4B E2 5D E5 */	bl cos_s
/* 80594CBC  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80594CC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80594CC4  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 80594CC8  80 1E 01 D0 */	lwz r0, 0x1d0(r30)
/* 80594CCC  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80594CD0  41 82 00 48 */	beq lbl_80594D18
/* 80594CD4  40 80 00 18 */	bge lbl_80594CEC
/* 80594CD8  2C 00 00 04 */	cmpwi r0, 4
/* 80594CDC  40 80 00 20 */	bge lbl_80594CFC
/* 80594CE0  2C 00 00 00 */	cmpwi r0, 0
/* 80594CE4  40 80 00 34 */	bge lbl_80594D18
/* 80594CE8  48 00 00 14 */	b lbl_80594CFC
lbl_80594CEC:
/* 80594CEC  2C 00 00 29 */	cmpwi r0, 0x29
/* 80594CF0  40 80 00 0C */	bge lbl_80594CFC
/* 80594CF4  2C 00 00 27 */	cmpwi r0, 0x27
/* 80594CF8  40 80 00 20 */	bge lbl_80594D18
lbl_80594CFC:
/* 80594CFC  3C 60 80 65 */	lis r3, lit_662@ha /* 0x80649D4C@ha */
/* 80594D00  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80594D04  C0 43 9D 4C */	lfs f2, lit_662@l(r3)  /* 0x80649D4C@l */
/* 80594D08  38 7E 00 6C */	addi r3, r30, 0x6c
/* 80594D0C  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80594D10  EC 42 00 32 */	fmuls f2, f2, f0
/* 80594D14  4B E2 5F 55 */	bl chase_f
lbl_80594D18:
/* 80594D18  7F C3 F3 78 */	mr r3, r30
/* 80594D1C  4B DD F4 ED */	bl Actor_position_move
/* 80594D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594D28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80594D2C  7C 08 03 A6 */	mtlr r0
/* 80594D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80594D34  4E 80 00 20 */	blr 
