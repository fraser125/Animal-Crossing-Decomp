lbl_80625BDC:
/* 80625BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80625BE0  7C 08 02 A6 */	mflr r0
/* 80625BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80625BE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80625BEC  7C 7F 1B 78 */	mr r31, r3
/* 80625BF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80625BF4  A8 63 00 00 */	lha r3, 0(r3)
/* 80625BF8  2C 03 00 46 */	cmpwi r3, 0x46
/* 80625BFC  41 80 00 1C */	blt lbl_80625C18
/* 80625C00  3C 60 80 65 */	lis r3, data_8064CFE4@ha /* 0x8064CFE4@ha */
/* 80625C04  C0 03 CF E4 */	lfs f0, data_8064CFE4@l(r3)  /* 0x8064CFE4@l */
/* 80625C08  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80625C0C  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80625C10  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80625C14  48 00 00 80 */	b lbl_80625C94
lbl_80625C18:
/* 80625C18  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80625C1C  3C C0 80 65 */	lis r6, lit_392@ha /* 0x8064CFE8@ha */
/* 80625C20  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80625C24  3C A0 80 65 */	lis r5, data_8064CFE4@ha /* 0x8064CFE4@ha */
/* 80625C28  3F C4 00 02 */	addis r30, r4, 2
/* 80625C2C  C0 45 CF E4 */	lfs f2, data_8064CFE4@l(r5)  /* 0x8064CFE4@l */
/* 80625C30  80 9E 60 9C */	lwz r4, 0x609c(r30)
/* 80625C34  38 A0 00 46 */	li r5, 0x46
/* 80625C38  C0 26 CF E8 */	lfs f1, lit_392@l(r6)  /* 0x8064CFE8@l */
/* 80625C3C  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80625C40  38 80 00 00 */	li r4, 0
/* 80625C44  7D 89 03 A6 */	mtctr r12
/* 80625C48  4E 80 04 21 */	bctrl 
/* 80625C4C  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 80625C50  3C C0 80 65 */	lis r6, lit_393@ha /* 0x8064CFEC@ha */
/* 80625C54  3C 60 80 65 */	lis r3, data_8064CFE4@ha /* 0x8064CFE4@ha */
/* 80625C58  38 80 00 00 */	li r4, 0
/* 80625C5C  80 BE 60 9C */	lwz r5, 0x609c(r30)
/* 80625C60  38 E6 CF EC */	addi r7, r6, lit_393@l /* 0x8064CFEC@l */
/* 80625C64  38 C3 CF E4 */	addi r6, r3, data_8064CFE4@l /* 0x8064CFE4@l */
/* 80625C68  A8 7F 00 00 */	lha r3, 0(r31)
/* 80625C6C  81 85 00 14 */	lwz r12, 0x14(r5)
/* 80625C70  38 A0 00 46 */	li r5, 0x46
/* 80625C74  C0 27 00 00 */	lfs f1, 0(r7)
/* 80625C78  C0 46 00 00 */	lfs f2, 0(r6)
/* 80625C7C  7D 89 03 A6 */	mtctr r12
/* 80625C80  4E 80 04 21 */	bctrl 
/* 80625C84  3C 60 80 65 */	lis r3, data_8064CFE4@ha /* 0x8064CFE4@ha */
/* 80625C88  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 80625C8C  C0 03 CF E4 */	lfs f0, data_8064CFE4@l(r3)  /* 0x8064CFE4@l */
/* 80625C90  D0 1F 00 3C */	stfs f0, 0x3c(r31)
lbl_80625C94:
/* 80625C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80625C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80625C9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80625CA0  7C 08 03 A6 */	mtlr r0
/* 80625CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80625CA8  4E 80 00 20 */	blr 
