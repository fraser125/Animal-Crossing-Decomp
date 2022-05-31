lbl_8062C9EC:
/* 8062C9EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062C9F0  3C 80 80 65 */	lis r4, lit_391@ha /* 0x8064D184@ha */
/* 8062C9F4  38 C4 D1 84 */	addi r6, r4, lit_391@l /* 0x8064D184@l */
/* 8062C9F8  38 00 00 03 */	li r0, 3
/* 8062C9FC  81 06 00 00 */	lwz r8, 0(r6)
/* 8062CA00  38 A1 00 08 */	addi r5, r1, 8
/* 8062CA04  80 E6 00 04 */	lwz r7, 4(r6)
/* 8062CA08  38 80 00 00 */	li r4, 0
/* 8062CA0C  80 C6 00 08 */	lwz r6, 8(r6)
/* 8062CA10  91 01 00 08 */	stw r8, 8(r1)
/* 8062CA14  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8062CA18  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8062CA1C  7C 09 03 A6 */	mtctr r0
lbl_8062CA20:
/* 8062CA20  7C 05 20 2E */	lwzx r0, r5, r4
/* 8062CA24  7C 03 21 2E */	stwx r0, r3, r4
/* 8062CA28  38 84 00 04 */	addi r4, r4, 4
/* 8062CA2C  42 00 FF F4 */	bdnz lbl_8062CA20
/* 8062CA30  38 21 00 20 */	addi r1, r1, 0x20
/* 8062CA34  4E 80 00 20 */	blr 
