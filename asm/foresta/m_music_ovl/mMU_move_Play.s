lbl_805E8C3C:
/* 805E8C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E8C40  7C 08 02 A6 */	mflr r0
/* 805E8C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E8C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E8C4C  7C 9F 23 78 */	mr r31, r4
/* 805E8C50  93 C1 00 08 */	stw r30, 8(r1)
/* 805E8C54  7C 7E 1B 78 */	mr r30, r3
/* 805E8C58  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 805E8C5C  2C 00 00 00 */	cmpwi r0, 0
/* 805E8C60  40 82 00 90 */	bne lbl_805E8CF0
/* 805E8C64  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E8C68  3C 80 80 65 */	lis r4, data_8064B64C@ha /* 0x8064B64C@ha */
/* 805E8C6C  38 C4 B6 4C */	addi r6, r4, data_8064B64C@l /* 0x8064B64C@l */
/* 805E8C70  38 80 00 10 */	li r4, 0x10
/* 805E8C74  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805E8C78  38 A0 00 00 */	li r5, 0
/* 805E8C7C  C0 26 00 00 */	lfs f1, 0(r6)
/* 805E8C80  38 C0 00 00 */	li r6, 0
/* 805E8C84  81 87 02 E4 */	lwz r12, 0x2e4(r7)
/* 805E8C88  FC 40 08 90 */	fmr f2, f1
/* 805E8C8C  7D 89 03 A6 */	mtctr r12
/* 805E8C90  4E 80 04 21 */	bctrl 
/* 805E8C94  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805E8C98  7F C3 F3 78 */	mr r3, r30
/* 805E8C9C  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805E8CA0  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805E8CA4  7D 89 03 A6 */	mtctr r12
/* 805E8CA8  4E 80 04 21 */	bctrl 
/* 805E8CAC  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E8CB0  3C 60 80 65 */	lis r3, lit_445@ha /* 0x8064B650@ha */
/* 805E8CB4  38 83 B6 50 */	addi r4, r3, lit_445@l /* 0x8064B650@l */
/* 805E8CB8  38 00 00 01 */	li r0, 1
/* 805E8CBC  80 A5 09 80 */	lwz r5, 0x980(r5)
/* 805E8CC0  3C 60 80 65 */	lis r3, lit_446@ha /* 0x8064B654@ha */
/* 805E8CC4  C0 24 00 00 */	lfs f1, 0(r4)
/* 805E8CC8  C0 45 00 04 */	lfs f2, 4(r5)
/* 805E8CCC  C0 03 B6 54 */	lfs f0, lit_446@l(r3)  /* 0x8064B654@l */
/* 805E8CD0  EC 22 08 2A */	fadds f1, f2, f1
/* 805E8CD4  D0 25 00 04 */	stfs f1, 4(r5)
/* 805E8CD8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805E8CDC  80 63 09 80 */	lwz r3, 0x980(r3)
/* 805E8CE0  C0 23 00 08 */	lfs f1, 8(r3)
/* 805E8CE4  EC 01 00 2A */	fadds f0, f1, f0
/* 805E8CE8  D0 03 00 08 */	stfs f0, 8(r3)
/* 805E8CEC  90 1F 00 2C */	stw r0, 0x2c(r31)
lbl_805E8CF0:
/* 805E8CF0  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E8CF4  7F C3 F3 78 */	mr r3, r30
/* 805E8CF8  7F E4 FB 78 */	mr r4, r31
/* 805E8CFC  81 85 09 1C */	lwz r12, 0x91c(r5)
/* 805E8D00  7D 89 03 A6 */	mtctr r12
/* 805E8D04  4E 80 04 21 */	bctrl 
/* 805E8D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E8D0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E8D10  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E8D14  7C 08 03 A6 */	mtlr r0
/* 805E8D18  38 21 00 10 */	addi r1, r1, 0x10
/* 805E8D1C  4E 80 00 20 */	blr 
