lbl_80610144:
/* 80610144  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80610148  7C 08 02 A6 */	mflr r0
/* 8061014C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80610150  39 61 00 30 */	addi r11, r1, 0x30
/* 80610154  4B A8 AD 7D */	bl func_8009AED0
/* 80610158  7C 9D 23 78 */	mr r29, r4
/* 8061015C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80610160  81 3D 00 00 */	lwz r9, 0(r29)
/* 80610164  3C A0 80 65 */	lis r5, lit_439@ha /* 0x8064C300@ha */
/* 80610168  3C C0 80 65 */	lis r6, lit_393@ha /* 0x8064C2EC@ha */
/* 8061016C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80610170  81 09 02 D4 */	lwz r8, 0x2d4(r9)
/* 80610174  38 E5 C3 00 */	addi r7, r5, lit_439@l /* 0x8064C300@l */
/* 80610178  3C A4 00 02 */	addis r5, r4, 2
/* 8061017C  C0 26 C2 EC */	lfs f1, lit_393@l(r6)  /* 0x8064C2EC@l */
/* 80610180  38 08 FF C0 */	addi r0, r8, -64
/* 80610184  7C 7C 1B 78 */	mr r28, r3
/* 80610188  90 09 02 D4 */	stw r0, 0x2d4(r9)
/* 8061018C  7C 1E 03 78 */	mr r30, r0
/* 80610190  38 80 00 00 */	li r4, 0
/* 80610194  C0 47 00 00 */	lfs f2, 0(r7)
/* 80610198  80 C5 60 9C */	lwz r6, 0x609c(r5)
/* 8061019C  38 A0 00 14 */	li r5, 0x14
/* 806101A0  A8 63 00 00 */	lha r3, 0(r3)
/* 806101A4  81 86 00 14 */	lwz r12, 0x14(r6)
/* 806101A8  7D 89 03 A6 */	mtctr r12
/* 806101AC  4E 80 04 21 */	bctrl 
/* 806101B0  FC 00 08 1E */	fctiwz f0, f1
/* 806101B4  83 FD 00 00 */	lwz r31, 0(r29)
/* 806101B8  7F E3 FB 78 */	mr r3, r31
/* 806101BC  D8 01 00 08 */	stfd f0, 8(r1)
/* 806101C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806101C4  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 806101C8  4B DD 4F 91 */	bl _texture_z_light_fog_prim_xlu
/* 806101CC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 806101D0  3C 00 43 30 */	lis r0, 0x4330
/* 806101D4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 806101D8  3C A0 80 65 */	lis r5, lit_441@ha /* 0x8064C308@ha */
/* 806101DC  80 84 00 00 */	lwz r4, 0(r4)
/* 806101E0  3C 60 80 65 */	lis r3, lit_444@ha /* 0x8064C30C@ha */
/* 806101E4  C8 23 C3 0C */	lfd f1, lit_444@l(r3)  /* 0x8064C30C@l */
/* 806101E8  3C C0 80 65 */	lis r6, lit_440@ha /* 0x8064C304@ha */
/* 806101EC  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 806101F0  7F C3 F3 78 */	mr r3, r30
/* 806101F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 806101F8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 806101FC  C0 45 C3 08 */	lfs f2, lit_441@l(r5)  /* 0x8064C308@l */
/* 80610200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80610204  38 A0 00 00 */	li r5, 0
/* 80610208  C0 86 C3 04 */	lfs f4, lit_440@l(r6)  /* 0x8064C304@l */
/* 8061020C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80610210  C0 7C 00 10 */	lfs f3, 0x10(r28)
/* 80610214  EC 00 08 28 */	fsubs f0, f0, f1
/* 80610218  C1 3C 00 34 */	lfs f9, 0x34(r28)
/* 8061021C  C1 1C 00 38 */	lfs f8, 0x38(r28)
/* 80610220  C0 FC 00 3C */	lfs f7, 0x3c(r28)
/* 80610224  EC 22 00 32 */	fmuls f1, f2, f0
/* 80610228  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8061022C  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 80610230  C0 DC 00 18 */	lfs f6, 0x18(r28)
/* 80610234  ED 44 08 2A */	fadds f10, f4, f1
/* 80610238  C0 3C 00 44 */	lfs f1, 0x44(r28)
/* 8061023C  EC 83 00 2A */	fadds f4, f3, f0
/* 80610240  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 80610244  EC A2 08 2A */	fadds f5, f2, f1
/* 80610248  A8 9C 00 50 */	lha r4, 0x50(r28)
/* 8061024C  EC 29 02 B2 */	fmuls f1, f9, f10
/* 80610250  A8 DC 00 52 */	lha r6, 0x52(r28)
/* 80610254  EC 48 02 B2 */	fmuls f2, f8, f10
/* 80610258  EC 67 02 B2 */	fmuls f3, f7, f10
/* 8061025C  EC C6 00 2A */	fadds f6, f6, f0
/* 80610260  4B DF E4 B1 */	bl suMtxMakeSRT_ZXY
/* 80610264  A8 1C 00 4E */	lha r0, 0x4e(r28)
/* 80610268  2C 00 00 01 */	cmpwi r0, 1
/* 8061026C  41 82 00 44 */	beq lbl_806102B0
/* 80610270  40 80 00 70 */	bge lbl_806102E0
/* 80610274  2C 00 00 00 */	cmpwi r0, 0
/* 80610278  40 80 00 08 */	bge lbl_80610280
/* 8061027C  48 00 00 64 */	b lbl_806102E0
lbl_80610280:
/* 80610280  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80610284  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 80610288  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 8061028C  38 A6 00 08 */	addi r5, r6, 8
/* 80610290  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 80610294  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 80610298  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 8061029C  90 06 00 00 */	stw r0, 0(r6)
/* 806102A0  80 63 00 00 */	lwz r3, 0(r3)
/* 806102A4  80 03 00 54 */	lwz r0, 0x54(r3)
/* 806102A8  90 06 00 04 */	stw r0, 4(r6)
/* 806102AC  48 00 00 60 */	b lbl_8061030C
lbl_806102B0:
/* 806102B0  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 806102B4  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 806102B8  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 806102BC  38 A6 00 08 */	addi r5, r6, 8
/* 806102C0  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 806102C4  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 806102C8  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 806102CC  90 06 00 00 */	stw r0, 0(r6)
/* 806102D0  80 63 00 00 */	lwz r3, 0(r3)
/* 806102D4  80 03 00 58 */	lwz r0, 0x58(r3)
/* 806102D8  90 06 00 04 */	stw r0, 4(r6)
/* 806102DC  48 00 00 30 */	b lbl_8061030C
lbl_806102E0:
/* 806102E0  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 806102E4  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 806102E8  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 806102EC  38 A6 00 08 */	addi r5, r6, 8
/* 806102F0  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 806102F4  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 806102F8  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 806102FC  90 06 00 00 */	stw r0, 0(r6)
/* 80610300  80 63 00 00 */	lwz r3, 0(r3)
/* 80610304  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 80610308  90 06 00 04 */	stw r0, 4(r6)
lbl_8061030C:
/* 8061030C  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80610310  3C C0 DA 38 */	lis r6, 0xDA38 /* 0xDA380003@ha */
/* 80610314  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 80610318  67 A4 FF FF */	oris r4, r29, 0xffff
/* 8061031C  38 07 00 08 */	addi r0, r7, 8
/* 80610320  3C 60 80 6D */	lis r3, data_806D2AE0@ha /* 0x806D2AE0@ha */
/* 80610324  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80610328  38 06 00 03 */	addi r0, r6, 0x0003 /* 0xDA380003@l */
/* 8061032C  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0xFA0000FF@l */
/* 80610330  60 84 FF 00 */	ori r4, r4, 0xff00
/* 80610334  90 07 00 00 */	stw r0, 0(r7)
/* 80610338  3C 00 DE 00 */	lis r0, 0xde00
/* 8061033C  38 63 2A E0 */	addi r3, r3, data_806D2AE0@l /* 0x806D2AE0@l */
/* 80610340  93 C7 00 04 */	stw r30, 4(r7)
/* 80610344  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80610348  38 C7 00 08 */	addi r6, r7, 8
/* 8061034C  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 80610350  90 A7 00 00 */	stw r5, 0(r7)
/* 80610354  90 87 00 04 */	stw r4, 4(r7)
/* 80610358  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8061035C  38 85 00 08 */	addi r4, r5, 8
/* 80610360  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 80610364  90 05 00 00 */	stw r0, 0(r5)
/* 80610368  A8 1C 00 4C */	lha r0, 0x4c(r28)
/* 8061036C  54 00 10 3A */	slwi r0, r0, 2
/* 80610370  7C 03 00 2E */	lwzx r0, r3, r0
/* 80610374  90 05 00 04 */	stw r0, 4(r5)
/* 80610378  39 61 00 30 */	addi r11, r1, 0x30
/* 8061037C  4B A8 AB A1 */	bl func_8009AF1C
/* 80610380  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80610384  7C 08 03 A6 */	mtlr r0
/* 80610388  38 21 00 30 */	addi r1, r1, 0x30
/* 8061038C  4E 80 00 20 */	blr 
