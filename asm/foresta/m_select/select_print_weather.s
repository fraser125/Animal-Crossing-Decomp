lbl_80629304:
/* 80629304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80629308  7C 08 02 A6 */	mflr r0
/* 8062930C  38 80 00 17 */	li r4, 0x17
/* 80629310  38 A0 00 0A */	li r5, 0xa
/* 80629314  90 01 00 14 */	stw r0, 0x14(r1)
/* 80629318  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062931C  7C 7F 1B 78 */	mr r31, r3
/* 80629320  4B A3 1E F1 */	bl gfxprint_locate8x8
/* 80629324  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80629328  3C 60 80 6D */	lis r3, Weather_type@ha /* 0x806D4434@ha */
/* 8062932C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80629330  3C C0 80 6D */	lis r6, lit_988@ha /* 0x806D4448@ha */
/* 80629334  3C 84 00 02 */	addis r4, r4, 2
/* 80629338  38 A3 44 34 */	addi r5, r3, Weather_type@l /* 0x806D4434@l */
/* 8062933C  A8 04 66 6C */	lha r0, 0x666c(r4)
/* 80629340  38 86 44 48 */	addi r4, r6, lit_988@l /* 0x806D4448@l */
/* 80629344  7F E3 FB 78 */	mr r3, r31
/* 80629348  54 00 10 3A */	slwi r0, r0, 2
/* 8062934C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80629350  4C C6 31 82 */	crclr 6
/* 80629354  4B A3 25 C9 */	bl gfxprint_printf
/* 80629358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062935C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80629360  7C 08 03 A6 */	mtlr r0
/* 80629364  38 21 00 10 */	addi r1, r1, 0x10
/* 80629368  4E 80 00 20 */	blr 
