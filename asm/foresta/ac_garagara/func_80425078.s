lbl_80425078:
/* 80425078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042507C  7C 08 02 A6 */	mflr r0
/* 80425080  90 01 00 24 */	stw r0, 0x24(r1)
/* 80425084  39 61 00 20 */	addi r11, r1, 0x20
/* 80425088  4B C7 5E 49 */	bl func_8009AED0
/* 8042508C  7C 9F 23 78 */	mr r31, r4
/* 80425090  7C 7C 1B 78 */	mr r28, r3
/* 80425094  7C BD 2B 78 */	mr r29, r5
/* 80425098  7C DE 33 78 */	mr r30, r6
/* 8042509C  7F E3 FB 78 */	mr r3, r31
/* 804250A0  38 80 00 48 */	li r4, 0x48
/* 804250A4  4B C3 7F C5 */	bl bzero
/* 804250A8  80 BD 00 00 */	lwz r5, 0(r29)
/* 804250AC  38 60 00 01 */	li r3, 1
/* 804250B0  80 9D 00 04 */	lwz r4, 4(r29)
/* 804250B4  38 00 00 00 */	li r0, 0
/* 804250B8  90 BF 00 00 */	stw r5, 0(r31)
/* 804250BC  90 9F 00 04 */	stw r4, 4(r31)
/* 804250C0  80 9D 00 08 */	lwz r4, 8(r29)
/* 804250C4  90 9F 00 08 */	stw r4, 8(r31)
/* 804250C8  80 BD 00 00 */	lwz r5, 0(r29)
/* 804250CC  80 9D 00 04 */	lwz r4, 4(r29)
/* 804250D0  90 BF 00 0C */	stw r5, 0xc(r31)
/* 804250D4  90 9F 00 10 */	stw r4, 0x10(r31)
/* 804250D8  80 9D 00 08 */	lwz r4, 8(r29)
/* 804250DC  90 9F 00 14 */	stw r4, 0x14(r31)
/* 804250E0  93 DF 00 18 */	stw r30, 0x18(r31)
/* 804250E4  B0 7F 00 1C */	sth r3, 0x1c(r31)
/* 804250E8  80 9C 00 00 */	lwz r4, 0(r28)
/* 804250EC  80 7C 00 04 */	lwz r3, 4(r28)
/* 804250F0  90 9F 00 34 */	stw r4, 0x34(r31)
/* 804250F4  90 7F 00 38 */	stw r3, 0x38(r31)
/* 804250F8  80 7C 00 08 */	lwz r3, 8(r28)
/* 804250FC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80425100  B0 1F 00 40 */	sth r0, 0x40(r31)
/* 80425104  B0 1F 00 42 */	sth r0, 0x42(r31)
/* 80425108  B0 1F 00 44 */	sth r0, 0x44(r31)
/* 8042510C  B0 1F 00 46 */	sth r0, 0x46(r31)
/* 80425110  4B C3 7B E5 */	bl fqrand
/* 80425114  3C 60 80 64 */	lis r3, lit_430@ha /* 0x80643ED8@ha */
/* 80425118  3C 80 80 64 */	lis r4, data_80643ED4@ha /* 0x80643ED4@ha */
/* 8042511C  38 A3 3E D8 */	addi r5, r3, lit_430@l /* 0x80643ED8@l */
/* 80425120  C0 44 3E D4 */	lfs f2, data_80643ED4@l(r4)  /* 0x80643ED4@l */
/* 80425124  C0 05 00 00 */	lfs f0, 0(r5)
/* 80425128  3C 60 80 64 */	lis r3, lit_431@ha /* 0x80643EDC@ha */
/* 8042512C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80425130  C0 03 3E DC */	lfs f0, lit_431@l(r3)  /* 0x80643EDC@l */
/* 80425134  EC 22 08 28 */	fsubs f1, f2, f1
/* 80425138  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 8042513C  D0 5F 00 24 */	stfs f2, 0x24(r31)
/* 80425140  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80425144  4B C3 7B B1 */	bl fqrand
/* 80425148  3C 80 80 64 */	lis r4, lit_430@ha /* 0x80643ED8@ha */
/* 8042514C  3C 60 80 64 */	lis r3, lit_432@ha /* 0x80643EE0@ha */
/* 80425150  C0 44 3E D8 */	lfs f2, lit_430@l(r4)  /* 0x80643ED8@l */
/* 80425154  38 00 40 00 */	li r0, 0x4000
/* 80425158  C0 03 3E E0 */	lfs f0, lit_432@l(r3)  /* 0x80643EE0@l */
/* 8042515C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80425160  EC 00 08 2A */	fadds f0, f0, f1
/* 80425164  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80425168  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 8042516C  4B C3 7B 89 */	bl fqrand
/* 80425170  3C 80 80 64 */	lis r4, lit_433@ha /* 0x80643EE4@ha */
/* 80425174  3C 60 80 64 */	lis r3, lit_434@ha /* 0x80643EE8@ha */
/* 80425178  C0 44 3E E4 */	lfs f2, lit_433@l(r4)  /* 0x80643EE4@l */
/* 8042517C  39 61 00 20 */	addi r11, r1, 0x20
/* 80425180  C0 03 3E E8 */	lfs f0, lit_434@l(r3)  /* 0x80643EE8@l */
/* 80425184  EC 22 00 72 */	fmuls f1, f2, f1
/* 80425188  A8 1F 00 30 */	lha r0, 0x30(r31)
/* 8042518C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80425190  FC 00 00 1E */	fctiwz f0, f0
/* 80425194  D8 01 00 08 */	stfd f0, 8(r1)
/* 80425198  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8042519C  7C 00 1A 14 */	add r0, r0, r3
/* 804251A0  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 804251A4  4B C7 5D 79 */	bl func_8009AF1C
/* 804251A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804251AC  7C 08 03 A6 */	mtlr r0
/* 804251B0  38 21 00 20 */	addi r1, r1, 0x20
/* 804251B4  4E 80 00 20 */	blr 