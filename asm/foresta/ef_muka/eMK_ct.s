lbl_80617A58:
/* 80617A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80617A5C  7C 08 02 A6 */	mflr r0
/* 80617A60  3C C0 80 65 */	lis r6, data_8064C7BC@ha /* 0x8064C7BC@ha */
/* 80617A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80617A68  C0 06 C7 BC */	lfs f0, data_8064C7BC@l(r6)  /* 0x8064C7BC@l */
/* 80617A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80617A70  7C 7F 1B 78 */	mr r31, r3
/* 80617A74  7C 83 23 78 */	mr r3, r4
/* 80617A78  93 C1 00 08 */	stw r30, 8(r1)
/* 80617A7C  7C BE 2B 78 */	mr r30, r5
/* 80617A80  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80617A84  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80617A88  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80617A8C  4B D6 70 25 */	bl getCamera2AngleY
/* 80617A90  7C 63 07 34 */	extsh r3, r3
/* 80617A94  A8 1E 00 00 */	lha r0, 0(r30)
/* 80617A98  3C 63 00 01 */	addis r3, r3, 1
/* 80617A9C  38 63 80 00 */	addi r3, r3, -32768
/* 80617AA0  7C 63 07 34 */	extsh r3, r3
/* 80617AA4  7C 03 00 50 */	subf r0, r3, r0
/* 80617AA8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80617AAC  28 00 80 00 */	cmplwi r0, 0x8000
/* 80617AB0  40 81 00 14 */	ble lbl_80617AC4
/* 80617AB4  3C 60 80 65 */	lis r3, lit_386@ha /* 0x8064C7C0@ha */
/* 80617AB8  C0 03 C7 C0 */	lfs f0, lit_386@l(r3)  /* 0x8064C7C0@l */
/* 80617ABC  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80617AC0  48 00 00 10 */	b lbl_80617AD0
lbl_80617AC4:
/* 80617AC4  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064C7C4@ha */
/* 80617AC8  C0 03 C7 C4 */	lfs f0, lit_387@l(r3)  /* 0x8064C7C4@l */
/* 80617ACC  D0 1F 00 40 */	stfs f0, 0x40(r31)
lbl_80617AD0:
/* 80617AD0  3C 80 80 65 */	lis r4, lit_388@ha /* 0x8064C7C8@ha */
/* 80617AD4  3C 60 80 65 */	lis r3, lit_389@ha /* 0x8064C7CC@ha */
/* 80617AD8  C0 24 C7 C8 */	lfs f1, lit_388@l(r4)  /* 0x8064C7C8@l */
/* 80617ADC  38 00 00 28 */	li r0, 0x28
/* 80617AE0  C0 03 C7 CC */	lfs f0, lit_389@l(r3)  /* 0x8064C7CC@l */
/* 80617AE4  38 9F 00 10 */	addi r4, r31, 0x10
/* 80617AE8  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 80617AEC  38 60 01 37 */	li r3, 0x137
/* 80617AF0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80617AF4  B0 1F 00 00 */	sth r0, 0(r31)
/* 80617AF8  48 01 64 B1 */	bl sAdo_OngenTrgStart
/* 80617AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80617B00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80617B04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80617B08  7C 08 03 A6 */	mtlr r0
/* 80617B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80617B10  4E 80 00 20 */	blr 
