lbl_8059EC00:
/* 8059EC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059EC04  7C 08 02 A6 */	mflr r0
/* 8059EC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059EC0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059EC10  7C 7F 1B 78 */	mr r31, r3
/* 8059EC14  7C 83 23 78 */	mr r3, r4
/* 8059EC18  4B E3 AA 29 */	bl get_player_actor_withoutCheck
/* 8059EC1C  28 03 00 00 */	cmplwi r3, 0
/* 8059EC20  41 82 00 A4 */	beq lbl_8059ECC4
/* 8059EC24  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8059EC28  C0 BF 00 0C */	lfs f5, 0xc(r31)
/* 8059EC2C  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 8059EC30  40 80 00 38 */	bge lbl_8059EC68
/* 8059EC34  3C 60 80 65 */	lis r3, lit_685@ha /* 0x8064A1EC@ha */
/* 8059EC38  3C 80 80 65 */	lis r4, lit_686@ha /* 0x8064A1F0@ha */
/* 8059EC3C  38 A3 A1 EC */	addi r5, r3, lit_685@l /* 0x8064A1EC@l */
/* 8059EC40  C0 44 A1 F0 */	lfs f2, lit_686@l(r4)  /* 0x8064A1F0@l */
/* 8059EC44  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059EC48  3C 60 80 65 */	lis r3, lit_576@ha /* 0x8064A1A8@ha */
/* 8059EC4C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8059EC50  38 00 00 00 */	li r0, 0
/* 8059EC54  EC 80 28 2A */	fadds f4, f0, f5
/* 8059EC58  C0 03 A1 A8 */	lfs f0, lit_576@l(r3)  /* 0x8064A1A8@l */
/* 8059EC5C  EC 22 08 2A */	fadds f1, f2, f1
/* 8059EC60  D0 1F 02 44 */	stfs f0, 0x244(r31)
/* 8059EC64  48 00 00 54 */	b lbl_8059ECB8
lbl_8059EC68:
/* 8059EC68  3C 80 80 65 */	lis r4, lit_687@ha /* 0x8064A1F4@ha */
/* 8059EC6C  3C C0 80 65 */	lis r6, lit_685@ha /* 0x8064A1EC@ha */
/* 8059EC70  C0 24 A1 F4 */	lfs f1, lit_687@l(r4)  /* 0x8064A1F4@l */
/* 8059EC74  3C 60 80 65 */	lis r3, lit_688@ha /* 0x8064A1F8@ha */
/* 8059EC78  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8059EC7C  38 83 A1 F8 */	addi r4, r3, lit_688@l /* 0x8064A1F8@l */
/* 8059EC80  3C A0 80 65 */	lis r5, lit_447@ha /* 0x8064A190@ha */
/* 8059EC84  C0 86 A1 EC */	lfs f4, lit_685@l(r6)  /* 0x8064A1EC@l */
/* 8059EC88  EC 21 00 2A */	fadds f1, f1, f0
/* 8059EC8C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8059EC90  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8059EC94  3C 60 80 65 */	lis r3, lit_689@ha /* 0x8064A1FC@ha */
/* 8059EC98  C0 65 A1 90 */	lfs f3, lit_447@l(r5)  /* 0x8064A190@l */
/* 8059EC9C  EC 85 20 28 */	fsubs f4, f5, f4
/* 8059ECA0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8059ECA4  C0 03 A1 FC */	lfs f0, lit_689@l(r3)  /* 0x8064A1FC@l */
/* 8059ECA8  38 00 00 01 */	li r0, 1
/* 8059ECAC  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8059ECB0  EC 23 10 2A */	fadds f1, f3, f2
/* 8059ECB4  D0 1F 02 44 */	stfs f0, 0x244(r31)
lbl_8059ECB8:
/* 8059ECB8  D0 9F 00 28 */	stfs f4, 0x28(r31)
/* 8059ECBC  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 8059ECC0  90 1F 02 30 */	stw r0, 0x230(r31)
lbl_8059ECC4:
/* 8059ECC4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8059ECC8  3C 60 80 65 */	lis r3, lit_576@ha /* 0x8064A1A8@ha */
/* 8059ECCC  38 A3 A1 A8 */	addi r5, r3, lit_576@l /* 0x8064A1A8@l */
/* 8059ECD0  38 00 00 01 */	li r0, 1
/* 8059ECD4  3C 60 80 65 */	lis r3, lit_663@ha /* 0x8064A1D0@ha */
/* 8059ECD8  D0 1F 02 50 */	stfs f0, 0x250(r31)
/* 8059ECDC  38 83 A1 D0 */	addi r4, r3, lit_663@l /* 0x8064A1D0@l */
/* 8059ECE0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059ECE4  C0 24 00 00 */	lfs f1, 0(r4)
/* 8059ECE8  3C 60 80 65 */	lis r3, lit_581@ha /* 0x8064A1BC@ha */
/* 8059ECEC  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8059ECF0  C0 03 A1 BC */	lfs f0, lit_581@l(r3)  /* 0x8064A1BC@l */
/* 8059ECF4  38 60 00 00 */	li r3, 0
/* 8059ECF8  D0 3F 01 EC */	stfs f1, 0x1ec(r31)
/* 8059ECFC  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 8059ED00  98 1F 00 B5 */	stb r0, 0xb5(r31)
/* 8059ED04  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059ED08  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8059ED0C  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059ED10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059ED14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059ED18  7C 08 03 A6 */	mtlr r0
/* 8059ED1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8059ED20  4E 80 00 20 */	blr 
