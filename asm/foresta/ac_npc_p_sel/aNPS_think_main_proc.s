lbl_805665EC:
/* 805665EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805665F0  7C 08 02 A6 */	mflr r0
/* 805665F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805665F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805665FC  7C 7F 1B 78 */	mr r31, r3
/* 80566600  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80566604  7C 9E 23 78 */	mr r30, r4
/* 80566608  80 03 09 A0 */	lwz r0, 0x9a0(r3)
/* 8056660C  2C 00 00 00 */	cmpwi r0, 0
/* 80566610  40 82 00 2C */	bne lbl_8056663C
/* 80566614  80 7F 09 A8 */	lwz r3, 0x9a8(r31)
/* 80566618  2C 03 00 00 */	cmpwi r3, 0
/* 8056661C  40 82 00 14 */	bne lbl_80566630
/* 80566620  3C 60 80 56 */	lis r3, aNPS_talk_request@ha /* 0x80566D58@ha */
/* 80566624  38 03 6D 58 */	addi r0, r3, aNPS_talk_request@l /* 0x80566D58@l */
/* 80566628  90 1F 09 64 */	stw r0, 0x964(r31)
/* 8056662C  48 00 00 A4 */	b lbl_805666D0
lbl_80566630:
/* 80566630  38 03 FF FF */	addi r0, r3, -1
/* 80566634  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 80566638  48 00 00 98 */	b lbl_805666D0
lbl_8056663C:
/* 8056663C  80 1F 09 A8 */	lwz r0, 0x9a8(r31)
/* 80566640  2C 00 00 00 */	cmpwi r0, 0
/* 80566644  40 82 00 28 */	bne lbl_8056666C
/* 80566648  7F C3 F3 78 */	mr r3, r30
/* 8056664C  4B FF FF 19 */	bl func_80566564
/* 80566650  2C 03 00 01 */	cmpwi r3, 1
/* 80566654  40 82 00 7C */	bne lbl_805666D0
/* 80566658  38 60 FF FF */	li r3, -1
/* 8056665C  38 00 00 FF */	li r0, 0xff
/* 80566660  90 7F 09 A8 */	stw r3, 0x9a8(r31)
/* 80566664  98 1E 23 FF */	stb r0, 0x23ff(r30)
/* 80566668  48 00 00 68 */	b lbl_805666D0
lbl_8056666C:
/* 8056666C  40 81 00 64 */	ble lbl_805666D0
/* 80566670  2C 00 00 46 */	cmpwi r0, 0x46
/* 80566674  40 80 00 50 */	bge lbl_805666C4
/* 80566678  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8056667C  3C 00 43 30 */	lis r0, 0x4330
/* 80566680  90 61 00 0C */	stw r3, 0xc(r1)
/* 80566684  3C 80 80 65 */	lis r4, lit_542@ha /* 0x80649804@ha */
/* 80566688  C8 44 98 04 */	lfd f2, lit_542@l(r4)  /* 0x80649804@l */
/* 8056668C  3C 60 80 65 */	lis r3, lit_540@ha /* 0x80649800@ha */
/* 80566690  90 01 00 08 */	stw r0, 8(r1)
/* 80566694  3C 80 80 65 */	lis r4, lit_504@ha /* 0x806497F4@ha */
/* 80566698  C0 03 98 00 */	lfs f0, lit_540@l(r3)  /* 0x80649800@l */
/* 8056669C  3C 60 80 65 */	lis r3, lit_539@ha /* 0x806497FC@ha */
/* 805666A0  C8 21 00 08 */	lfd f1, 8(r1)
/* 805666A4  C0 63 97 FC */	lfs f3, lit_539@l(r3)  /* 0x806497FC@l */
/* 805666A8  EC 21 10 28 */	fsubs f1, f1, f2
/* 805666AC  C0 44 97 F4 */	lfs f2, lit_504@l(r4)  /* 0x806497F4@l */
/* 805666B0  EC 01 00 24 */	fdivs f0, f1, f0
/* 805666B4  EC 02 00 28 */	fsubs f0, f2, f0
/* 805666B8  EC 23 00 32 */	fmuls f1, f3, f0
/* 805666BC  4B B3 46 E9 */	bl func_8009ADA4
/* 805666C0  98 7E 23 FF */	stb r3, 0x23ff(r30)
lbl_805666C4:
/* 805666C4  80 7F 09 A8 */	lwz r3, 0x9a8(r31)
/* 805666C8  38 03 FF FF */	addi r0, r3, -1
/* 805666CC  90 1F 09 A8 */	stw r0, 0x9a8(r31)
lbl_805666D0:
/* 805666D0  80 7F 09 AC */	lwz r3, 0x9ac(r31)
/* 805666D4  2C 03 00 00 */	cmpwi r3, 0
/* 805666D8  40 82 00 18 */	bne lbl_805666F0
/* 805666DC  38 60 42 1C */	li r3, 0x421c
/* 805666E0  4B E1 54 2D */	bl mBGMPsComp_make_ps_wipe
/* 805666E4  38 00 FF FF */	li r0, -1
/* 805666E8  90 1F 09 AC */	stw r0, 0x9ac(r31)
/* 805666EC  48 00 00 10 */	b lbl_805666FC
lbl_805666F0:
/* 805666F0  40 81 00 0C */	ble lbl_805666FC
/* 805666F4  38 03 FF FF */	addi r0, r3, -1
/* 805666F8  90 1F 09 AC */	stw r0, 0x9ac(r31)
lbl_805666FC:
/* 805666FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80566700  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80566704  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80566708  7C 08 03 A6 */	mtlr r0
/* 8056670C  38 21 00 20 */	addi r1, r1, 0x20
/* 80566710  4E 80 00 20 */	blr 
