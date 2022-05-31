lbl_80407BD0:
/* 80407BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80407BD4  7C 08 02 A6 */	mflr r0
/* 80407BD8  3C 60 80 66 */	lis r3, lit_416@ha /* 0x8065F018@ha */
/* 80407BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80407BE0  38 63 F0 18 */	addi r3, r3, lit_416@l /* 0x8065F018@l */
/* 80407BE4  4C C6 31 82 */	crclr 6
/* 80407BE8  4B C5 2B 69 */	bl OSReport
/* 80407BEC  3C 80 80 40 */	lis r4, entry@ha /* 0x80407B88@ha */
/* 80407BF0  3C 60 80 0E */	lis r3, HotStartEntry@ha /* 0x800E2310@ha */
/* 80407BF4  38 04 7B 88 */	addi r0, r4, entry@l /* 0x80407B88@l */
/* 80407BF8  90 03 23 10 */	stw r0, HotStartEntry@l(r3)  /* 0x800E2310@l */
/* 80407BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80407C00  7C 08 03 A6 */	mtlr r0
/* 80407C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80407C08  4E 80 00 20 */	blr 
