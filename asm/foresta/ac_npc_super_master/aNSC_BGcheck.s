lbl_80580B88:
/* 80580B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80580B8C  7C 08 02 A6 */	mflr r0
/* 80580B90  3C A0 80 65 */	lis r5, lit_594@ha /* 0x80649A88@ha */
/* 80580B94  3C 80 80 65 */	lis r4, data_80649A5C@ha /* 0x80649A5C@ha */
/* 80580B98  C0 25 9A 88 */	lfs f1, lit_594@l(r5)  /* 0x80649A88@l */
/* 80580B9C  38 A0 00 01 */	li r5, 1
/* 80580BA0  C0 44 9A 5C */	lfs f2, data_80649A5C@l(r4)  /* 0x80649A5C@l */
/* 80580BA4  7C 64 1B 78 */	mr r4, r3
/* 80580BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80580BAC  38 60 00 00 */	li r3, 0
/* 80580BB0  38 C0 00 00 */	li r6, 0
/* 80580BB4  38 E0 00 00 */	li r7, 0
/* 80580BB8  4B E0 91 E9 */	bl mCoBG_BgCheckControll
/* 80580BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580BC0  7C 08 03 A6 */	mtlr r0
/* 80580BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80580BC8  4E 80 00 20 */	blr 
