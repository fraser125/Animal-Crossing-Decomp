lbl_803F3DD4:
/* 803F3DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F3DD8  7C 08 02 A6 */	mflr r0
/* 803F3DDC  3C A0 80 64 */	lis r5, data_806432EC@ha /* 0x806432EC@ha */
/* 803F3DE0  38 E0 00 00 */	li r7, 0
/* 803F3DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F3DE8  38 C5 32 EC */	addi r6, r5, data_806432EC@l /* 0x806432EC@l */
/* 803F3DEC  38 00 00 F0 */	li r0, 0xf0
/* 803F3DF0  C0 26 00 00 */	lfs f1, 0(r6)
/* 803F3DF4  90 83 00 00 */	stw r4, 0(r3)
/* 803F3DF8  3C 80 80 64 */	lis r4, lit_382@ha /* 0x806432F0@ha */
/* 803F3DFC  38 A4 32 F0 */	addi r5, r4, lit_382@l /* 0x806432F0@l */
/* 803F3E00  90 E3 00 04 */	stw r7, 4(r3)
/* 803F3E04  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F3E08  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F3E0C  C0 05 00 00 */	lfs f0, 0(r5)
/* 803F3E10  90 03 00 08 */	stw r0, 8(r3)
/* 803F3E14  38 00 01 40 */	li r0, 0x140
/* 803F3E18  3C 84 00 02 */	addis r4, r4, 2
/* 803F3E1C  90 E3 00 0C */	stw r7, 0xc(r3)
/* 803F3E20  90 03 00 10 */	stw r0, 0x10(r3)
/* 803F3E24  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 803F3E28  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 803F3E2C  88 04 60 01 */	lbz r0, 0x6001(r4)
/* 803F3E30  28 00 00 00 */	cmplwi r0, 0
/* 803F3E34  41 82 00 08 */	beq lbl_803F3E3C
/* 803F3E38  D0 23 00 18 */	stfs f1, 0x18(r3)
lbl_803F3E3C:
/* 803F3E3C  3C 80 80 64 */	lis r4, lit_383@ha /* 0x806432F4@ha */
/* 803F3E40  3C A0 80 64 */	lis r5, lit_384@ha /* 0x806432F8@ha */
/* 803F3E44  38 C4 32 F4 */	addi r6, r4, lit_383@l /* 0x806432F4@l */
/* 803F3E48  38 00 00 07 */	li r0, 7
/* 803F3E4C  C0 06 00 00 */	lfs f0, 0(r6)
/* 803F3E50  38 C5 32 F8 */	addi r6, r5, lit_384@l /* 0x806432F8@l */
/* 803F3E54  3C 80 80 64 */	lis r4, lit_385@ha /* 0x806432FC@ha */
/* 803F3E58  C0 46 00 00 */	lfs f2, 0(r6)
/* 803F3E5C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F3E60  38 A4 32 FC */	addi r5, r4, lit_385@l /* 0x806432FC@l */
/* 803F3E64  3C 80 80 64 */	lis r4, lit_386@ha /* 0x80643300@ha */
/* 803F3E68  C0 25 00 00 */	lfs f1, 0(r5)
/* 803F3E6C  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 803F3E70  C0 04 33 00 */	lfs f0, lit_386@l(r4)  /* 0x80643300@l */
/* 803F3E74  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 803F3E78  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 803F3E7C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 803F3E80  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 803F3E84  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 803F3E88  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 803F3E8C  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 803F3E90  D0 43 00 40 */	stfs f2, 0x40(r3)
/* 803F3E94  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 803F3E98  90 03 01 18 */	stw r0, 0x118(r3)
/* 803F3E9C  48 00 02 E5 */	bl stretchViewInit
/* 803F3EA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F3EA4  7C 08 03 A6 */	mtlr r0
/* 803F3EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 803F3EAC  4E 80 00 20 */	blr 
