lbl_805C2240:
/* 805C2240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C2244  7C 08 02 A6 */	mflr r0
/* 805C2248  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C224C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C2250  93 C1 00 08 */	stw r30, 8(r1)
/* 805C2254  7C 9E 23 78 */	mr r30, r4
/* 805C2258  7F C5 F3 78 */	mr r5, r30
/* 805C225C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805C2260  83 E3 09 94 */	lwz r31, 0x994(r3)
/* 805C2264  88 9F 00 03 */	lbz r4, 3(r31)
/* 805C2268  7F E3 FB 78 */	mr r3, r31
/* 805C226C  4B FF FE A5 */	bl mAD_get_nextIdx
/* 805C2270  7C 65 1B 78 */	mr r5, r3
/* 805C2274  2C 05 FF FF */	cmpwi r5, -1
/* 805C2278  41 82 00 48 */	beq lbl_805C22C0
/* 805C227C  38 00 00 03 */	li r0, 3
/* 805C2280  2C 1E FF FF */	cmpwi r30, -1
/* 805C2284  98 1F 00 02 */	stb r0, 2(r31)
/* 805C2288  40 82 00 14 */	bne lbl_805C229C
/* 805C228C  3C 60 80 65 */	lis r3, lit_469@ha /* 0x8064ACE8@ha */
/* 805C2290  C0 03 AC E8 */	lfs f0, lit_469@l(r3)  /* 0x8064ACE8@l */
/* 805C2294  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 805C2298  48 00 00 10 */	b lbl_805C22A8
lbl_805C229C:
/* 805C229C  3C 60 80 65 */	lis r3, lit_470@ha /* 0x8064ACEC@ha */
/* 805C22A0  C0 03 AC EC */	lfs f0, lit_470@l(r3)  /* 0x8064ACEC@l */
/* 805C22A4  D0 1F 00 10 */	stfs f0, 0x10(r31)
lbl_805C22A8:
/* 805C22A8  98 BF 00 04 */	stb r5, 4(r31)
/* 805C22AC  7F E3 FB 78 */	mr r3, r31
/* 805C22B0  38 9F 00 20 */	addi r4, r31, 0x20
/* 805C22B4  4B FF FE B5 */	bl mAD_pile_init
/* 805C22B8  38 60 04 1C */	li r3, 0x41c
/* 805C22BC  48 06 BA 49 */	bl sAdo_SysTrgStart
lbl_805C22C0:
/* 805C22C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C22C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C22C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C22CC  7C 08 03 A6 */	mtlr r0
/* 805C22D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805C22D4  4E 80 00 20 */	blr 
