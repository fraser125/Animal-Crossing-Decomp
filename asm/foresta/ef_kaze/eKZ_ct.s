lbl_80612BCC:
/* 80612BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80612BD0  7C 08 02 A6 */	mflr r0
/* 80612BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80612BD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80612BDC  7C 7F 1B 78 */	mr r31, r3
/* 80612BE0  7C 83 23 78 */	mr r3, r4
/* 80612BE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80612BE8  7C BE 2B 78 */	mr r30, r5
/* 80612BEC  4B D6 BE C5 */	bl getCamera2AngleY
/* 80612BF0  7C 63 07 34 */	extsh r3, r3
/* 80612BF4  A8 1E 00 00 */	lha r0, 0(r30)
/* 80612BF8  3C A3 00 01 */	addis r5, r3, 1
/* 80612BFC  3C 80 80 65 */	lis r4, data_8064C4C4@ha /* 0x8064C4C4@ha */
/* 80612C00  38 A5 80 00 */	addi r5, r5, -32768
/* 80612C04  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064C4C8@ha */
/* 80612C08  7C A6 07 34 */	extsh r6, r5
/* 80612C0C  38 A4 C4 C4 */	addi r5, r4, data_8064C4C4@l /* 0x8064C4C4@l */
/* 80612C10  38 83 C4 C8 */	addi r4, r3, lit_387@l /* 0x8064C4C8@l */
/* 80612C14  7C 06 00 50 */	subf r0, r6, r0
/* 80612C18  C0 05 00 00 */	lfs f0, 0(r5)
/* 80612C1C  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 80612C20  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 80612C24  C0 24 00 00 */	lfs f1, 0(r4)
/* 80612C28  3C 60 80 65 */	lis r3, lit_388@ha /* 0x8064C4CC@ha */
/* 80612C2C  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80612C30  28 06 40 00 */	cmplwi r6, 0x4000
/* 80612C34  C0 03 C4 CC */	lfs f0, lit_388@l(r3)  /* 0x8064C4CC@l */
/* 80612C38  38 00 00 64 */	li r0, 0x64
/* 80612C3C  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 80612C40  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80612C44  B0 1F 00 00 */	sth r0, 0(r31)
/* 80612C48  41 80 00 18 */	blt lbl_80612C60
/* 80612C4C  28 06 C0 00 */	cmplwi r6, 0xc000
/* 80612C50  41 81 00 10 */	bgt lbl_80612C60
/* 80612C54  38 00 00 01 */	li r0, 1
/* 80612C58  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80612C5C  48 00 00 0C */	b lbl_80612C68
lbl_80612C60:
/* 80612C60  38 00 00 00 */	li r0, 0
/* 80612C64  B0 1F 00 4C */	sth r0, 0x4c(r31)
lbl_80612C68:
/* 80612C68  3C 80 80 65 */	lis r4, lit_389@ha /* 0x8064C4D0@ha */
/* 80612C6C  3C 60 80 65 */	lis r3, lit_390@ha /* 0x8064C4D4@ha */
/* 80612C70  38 A4 C4 D0 */	addi r5, r4, lit_389@l /* 0x8064C4D0@l */
/* 80612C74  C0 03 C4 D4 */	lfs f0, lit_390@l(r3)  /* 0x8064C4D4@l */
/* 80612C78  C0 25 00 00 */	lfs f1, 0(r5)
/* 80612C7C  38 9F 00 10 */	addi r4, r31, 0x10
/* 80612C80  38 60 01 3A */	li r3, 0x13a
/* 80612C84  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 80612C88  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80612C8C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80612C90  48 01 B3 19 */	bl sAdo_OngenTrgStart
/* 80612C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80612C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80612C9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80612CA0  7C 08 03 A6 */	mtlr r0
/* 80612CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80612CA8  4E 80 00 20 */	blr 
