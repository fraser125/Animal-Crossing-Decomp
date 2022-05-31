lbl_8059E9DC:
/* 8059E9DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059E9E0  7C 08 02 A6 */	mflr r0
/* 8059E9E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059E9E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059E9EC  7C 9F 23 78 */	mr r31, r4
/* 8059E9F0  38 81 00 08 */	addi r4, r1, 8
/* 8059E9F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059E9F8  7C 7E 1B 78 */	mr r30, r3
/* 8059E9FC  3C 60 80 65 */	lis r3, lit_576@ha /* 0x8064A1A8@ha */
/* 8059EA00  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 8059EA04  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8059EA08  C0 23 A1 A8 */	lfs f1, lit_576@l(r3)  /* 0x8064A1A8@l */
/* 8059EA0C  38 60 00 00 */	li r3, 0
/* 8059EA10  90 A1 00 08 */	stw r5, 8(r1)
/* 8059EA14  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059EA18  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8059EA1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059EA20  4B DF 0C 99 */	bl func_8038F6B8
/* 8059EA24  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8059EA28  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8059EA2C  40 80 00 18 */	bge lbl_8059EA44
/* 8059EA30  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 8059EA34  7F C3 F3 78 */	mr r3, r30
/* 8059EA38  7F E5 FB 78 */	mr r5, r31
/* 8059EA3C  38 80 00 01 */	li r4, 1
/* 8059EA40  48 00 05 AD */	bl aIMN_setupAction
lbl_8059EA44:
/* 8059EA44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059EA48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059EA4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059EA50  7C 08 03 A6 */	mtlr r0
/* 8059EA54  38 21 00 20 */	addi r1, r1, 0x20
/* 8059EA58  4E 80 00 20 */	blr 
