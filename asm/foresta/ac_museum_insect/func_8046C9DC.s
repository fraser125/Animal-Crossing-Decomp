lbl_8046C9DC:
/* 8046C9DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046C9E0  7C 08 02 A6 */	mflr r0
/* 8046C9E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046C9E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046C9EC  7C 7F 1B 78 */	mr r31, r3
/* 8046C9F0  A8 A3 00 7E */	lha r5, 0x7e(r3)
/* 8046C9F4  2C 05 00 07 */	cmpwi r5, 7
/* 8046C9F8  40 80 00 44 */	bge lbl_8046CA3C
/* 8046C9FC  7C A0 07 35 */	extsh. r0, r5
/* 8046CA00  41 80 00 3C */	blt lbl_8046CA3C
/* 8046CA04  3C 80 80 68 */	lis r4, scale_table@ha /* 0x80686DB0@ha */
/* 8046CA08  3C 60 80 64 */	lis r3, lit_1966@ha /* 0x806447B0@ha */
/* 8046CA0C  54 A0 10 3A */	slwi r0, r5, 2
/* 8046CA10  C0 43 47 B0 */	lfs f2, lit_1966@l(r3)  /* 0x806447B0@l */
/* 8046CA14  38 84 6D B0 */	addi r4, r4, scale_table@l /* 0x80686DB0@l */
/* 8046CA18  38 7F 00 58 */	addi r3, r31, 0x58
/* 8046CA1C  7C 24 04 2E */	lfsx f1, r4, r0
/* 8046CA20  4B F4 E2 49 */	bl chase_f
/* 8046CA24  2C 03 00 01 */	cmpwi r3, 1
/* 8046CA28  40 82 00 20 */	bne lbl_8046CA48
/* 8046CA2C  A8 7F 00 7E */	lha r3, 0x7e(r31)
/* 8046CA30  38 03 FF FF */	addi r0, r3, -1
/* 8046CA34  B0 1F 00 7E */	sth r0, 0x7e(r31)
/* 8046CA38  48 00 00 10 */	b lbl_8046CA48
lbl_8046CA3C:
/* 8046CA3C  A8 7F 00 7E */	lha r3, 0x7e(r31)
/* 8046CA40  38 03 FF FF */	addi r0, r3, -1
/* 8046CA44  B0 1F 00 7E */	sth r0, 0x7e(r31)
lbl_8046CA48:
/* 8046CA48  A8 1F 00 7E */	lha r0, 0x7e(r31)
/* 8046CA4C  2C 00 00 00 */	cmpwi r0, 0
/* 8046CA50  40 80 00 0C */	bge lbl_8046CA5C
/* 8046CA54  38 00 FF FF */	li r0, -1
/* 8046CA58  B0 1F 00 7E */	sth r0, 0x7e(r31)
lbl_8046CA5C:
/* 8046CA5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046CA60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046CA64  7C 08 03 A6 */	mtlr r0
/* 8046CA68  38 21 00 10 */	addi r1, r1, 0x10
/* 8046CA6C  4E 80 00 20 */	blr 
