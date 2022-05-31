lbl_80609C1C:
/* 80609C1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80609C20  7C 08 02 A6 */	mflr r0
/* 80609C24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80609C28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80609C2C  7C 7F 1B 78 */	mr r31, r3
/* 80609C30  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80609C34  7C 65 1B 78 */	mr r5, r3
/* 80609C38  38 9F 00 28 */	addi r4, r31, 0x28
/* 80609C3C  4B DB 13 09 */	bl xyz_t_add
/* 80609C40  38 7F 00 10 */	addi r3, r31, 0x10
/* 80609C44  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80609C48  7C 65 1B 78 */	mr r5, r3
/* 80609C4C  4B DB 12 F9 */	bl xyz_t_add
/* 80609C50  A8 7F 00 00 */	lha r3, 0(r31)
/* 80609C54  2C 03 00 12 */	cmpwi r3, 0x12
/* 80609C58  40 80 00 7C */	bge lbl_80609CD4
/* 80609C5C  A8 1F 00 50 */	lha r0, 0x50(r31)
/* 80609C60  2C 00 00 01 */	cmpwi r0, 1
/* 80609C64  41 82 00 3C */	beq lbl_80609CA0
/* 80609C68  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80609C6C  3C C0 80 65 */	lis r6, lit_440@ha /* 0x8064BE74@ha */
/* 80609C70  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80609C74  3C A0 80 65 */	lis r5, lit_415@ha /* 0x8064BE4C@ha */
/* 80609C78  3C 84 00 02 */	addis r4, r4, 2
/* 80609C7C  C0 45 BE 4C */	lfs f2, lit_415@l(r5)  /* 0x8064BE4C@l */
/* 80609C80  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 80609C84  38 A0 00 12 */	li r5, 0x12
/* 80609C88  C0 26 BE 74 */	lfs f1, lit_440@l(r6)  /* 0x8064BE74@l */
/* 80609C8C  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80609C90  38 80 00 00 */	li r4, 0
/* 80609C94  7D 89 03 A6 */	mtctr r12
/* 80609C98  4E 80 04 21 */	bctrl 
/* 80609C9C  48 00 00 38 */	b lbl_80609CD4
lbl_80609CA0:
/* 80609CA0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80609CA4  3C C0 80 65 */	lis r6, lit_441@ha /* 0x8064BE78@ha */
/* 80609CA8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80609CAC  3C A0 80 65 */	lis r5, lit_442@ha /* 0x8064BE7C@ha */
/* 80609CB0  3C 84 00 02 */	addis r4, r4, 2
/* 80609CB4  C0 45 BE 7C */	lfs f2, lit_442@l(r5)  /* 0x8064BE7C@l */
/* 80609CB8  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 80609CBC  38 A0 00 12 */	li r5, 0x12
/* 80609CC0  C0 26 BE 78 */	lfs f1, lit_441@l(r6)  /* 0x8064BE78@l */
/* 80609CC4  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80609CC8  38 80 00 00 */	li r4, 0
/* 80609CCC  7D 89 03 A6 */	mtctr r12
/* 80609CD0  4E 80 04 21 */	bctrl 
lbl_80609CD4:
/* 80609CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80609CD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80609CDC  7C 08 03 A6 */	mtlr r0
/* 80609CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80609CE4  4E 80 00 20 */	blr 
