lbl_80629574:
/* 80629574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80629578  7C 08 02 A6 */	mflr r0
/* 8062957C  38 80 00 17 */	li r4, 0x17
/* 80629580  38 A0 00 0C */	li r5, 0xc
/* 80629584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80629588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062958C  7C 7F 1B 78 */	mr r31, r3
/* 80629590  4B A3 1C 81 */	bl gfxprint_locate8x8
/* 80629594  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80629598  3C 60 80 6D */	lis r3, Distinction_1025@ha /* 0x806D44FC@ha */
/* 8062959C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 806295A0  3C E0 80 6D */	lis r7, lit_1035@ha /* 0x806D451C@ha */
/* 806295A4  3C 84 00 02 */	addis r4, r4, 2
/* 806295A8  38 A3 44 FC */	addi r5, r3, Distinction_1025@l /* 0x806D44FC@l */
/* 806295AC  80 C4 61 3C */	lwz r6, 0x613c(r4)
/* 806295B0  38 87 45 1C */	addi r4, r7, lit_1035@l /* 0x806D451C@l */
/* 806295B4  7F E3 FB 78 */	mr r3, r31
/* 806295B8  88 06 00 15 */	lbz r0, 0x15(r6)
/* 806295BC  7C 00 07 74 */	extsb r0, r0
/* 806295C0  54 00 10 3A */	slwi r0, r0, 2
/* 806295C4  7C A5 00 2E */	lwzx r5, r5, r0
/* 806295C8  4C C6 31 82 */	crclr 6
/* 806295CC  4B A3 23 51 */	bl gfxprint_printf
/* 806295D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806295D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806295D8  7C 08 03 A6 */	mtlr r0
/* 806295DC  38 21 00 10 */	addi r1, r1, 0x10
/* 806295E0  4E 80 00 20 */	blr 
