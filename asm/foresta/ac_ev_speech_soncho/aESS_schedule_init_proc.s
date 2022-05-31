lbl_80525C1C:
/* 80525C1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80525C20  7C 08 02 A6 */	mflr r0
/* 80525C24  3C A0 80 52 */	lis r5, aESS_think_proc@ha /* 0x80525BE8@ha */
/* 80525C28  38 E0 FF FF */	li r7, -1
/* 80525C2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80525C30  38 05 5B E8 */	addi r0, r5, aESS_think_proc@l /* 0x80525BE8@l */
/* 80525C34  38 C0 00 FE */	li r6, 0xfe
/* 80525C38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80525C3C  7C 7F 1B 78 */	mr r31, r3
/* 80525C40  3C 60 80 65 */	lis r3, data_806491A4@ha /* 0x806491A4@ha */
/* 80525C44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80525C48  38 A3 91 A4 */	addi r5, r3, data_806491A4@l /* 0x806491A4@l */
/* 80525C4C  3C 60 80 65 */	lis r3, lit_530@ha /* 0x806491A8@ha */
/* 80525C50  C0 05 00 00 */	lfs f0, 0(r5)
/* 80525C54  90 1F 07 D4 */	stw r0, 0x7d4(r31)
/* 80525C58  38 00 01 37 */	li r0, 0x137
/* 80525C5C  C0 23 91 A8 */	lfs f1, lit_530@l(r3)  /* 0x806491A8@l */
/* 80525C60  7C 9E 23 78 */	mr r30, r4
/* 80525C64  90 1F 08 40 */	stw r0, 0x840(r31)
/* 80525C68  38 00 00 00 */	li r0, 0
/* 80525C6C  38 61 00 08 */	addi r3, r1, 8
/* 80525C70  98 1F 08 31 */	stb r0, 0x831(r31)
/* 80525C74  38 00 00 02 */	li r0, 2
/* 80525C78  90 FF 08 F4 */	stw r7, 0x8f4(r31)
/* 80525C7C  98 DF 00 D6 */	stb r6, 0xd6(r31)
/* 80525C80  98 1F 09 73 */	stb r0, 0x973(r31)
/* 80525C84  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80525C88  EC 02 00 28 */	fsubs f0, f2, f0
/* 80525C8C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80525C90  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80525C94  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80525C98  90 81 00 08 */	stw r4, 8(r1)
/* 80525C9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80525CA0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80525CA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80525CA8  4B E6 9C F1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 80525CAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80525CB0  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 80525CB4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80525CB8  7F E3 FB 78 */	mr r3, r31
/* 80525CBC  3C A4 00 02 */	addis r5, r4, 2
/* 80525CC0  7F C4 F3 78 */	mr r4, r30
/* 80525CC4  80 E5 60 4C */	lwz r7, 0x604c(r5)
/* 80525CC8  38 A0 00 09 */	li r5, 9
/* 80525CCC  38 C0 00 00 */	li r6, 0
/* 80525CD0  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80525CD4  7D 89 03 A6 */	mtctr r12
/* 80525CD8  4E 80 04 21 */	bctrl 
/* 80525CDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80525CE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80525CE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80525CE8  7C 08 03 A6 */	mtlr r0
/* 80525CEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80525CF0  4E 80 00 20 */	blr 
