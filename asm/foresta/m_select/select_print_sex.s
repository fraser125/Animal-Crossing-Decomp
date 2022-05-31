lbl_8062936C:
/* 8062936C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80629370  7C 08 02 A6 */	mflr r0
/* 80629374  38 80 00 17 */	li r4, 0x17
/* 80629378  38 A0 00 0B */	li r5, 0xb
/* 8062937C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80629380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80629384  7C 7F 1B 78 */	mr r31, r3
/* 80629388  4B A3 1E 89 */	bl gfxprint_locate8x8
/* 8062938C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80629390  3C 60 80 6D */	lis r3, Distinction_992@ha /* 0x806D4464@ha */
/* 80629394  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80629398  3C E0 80 6D */	lis r7, lit_996@ha /* 0x806D446C@ha */
/* 8062939C  3C 84 00 02 */	addis r4, r4, 2
/* 806293A0  38 A3 44 64 */	addi r5, r3, Distinction_992@l /* 0x806D4464@l */
/* 806293A4  80 C4 61 3C */	lwz r6, 0x613c(r4)
/* 806293A8  38 87 44 6C */	addi r4, r7, lit_996@l /* 0x806D446C@l */
/* 806293AC  7F E3 FB 78 */	mr r3, r31
/* 806293B0  88 06 00 14 */	lbz r0, 0x14(r6)
/* 806293B4  7C 00 07 74 */	extsb r0, r0
/* 806293B8  54 00 10 3A */	slwi r0, r0, 2
/* 806293BC  7C A5 00 2E */	lwzx r5, r5, r0
/* 806293C0  4C C6 31 82 */	crclr 6
/* 806293C4  4B A3 25 59 */	bl gfxprint_printf
/* 806293C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806293CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806293D0  7C 08 03 A6 */	mtlr r0
/* 806293D4  38 21 00 10 */	addi r1, r1, 0x10
/* 806293D8  4E 80 00 20 */	blr 
