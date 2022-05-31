lbl_804E1A34:
/* 804E1A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1A38  7C 08 02 A6 */	mflr r0
/* 804E1A3C  3C 80 80 64 */	lis r4, lit_6171@ha /* 0x80647DDC@ha */
/* 804E1A40  3C C0 80 66 */	lis r6, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804E1A44  38 A4 7D DC */	addi r5, r4, lit_6171@l /* 0x80647DDC@l */
/* 804E1A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1A4C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E1A50  38 86 F0 5C */	addi r4, r6, ZeroSVec@l /* 0x8065F05C@l */
/* 804E1A54  38 63 0E 5C */	addi r3, r3, 0xe5c
/* 804E1A58  38 A0 0A AA */	li r5, 0xaaa
/* 804E1A5C  38 C0 00 64 */	li r6, 0x64
/* 804E1A60  4B FF FA 39 */	bl func_804E1498
/* 804E1A64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1A68  7C 08 03 A6 */	mtlr r0
/* 804E1A6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1A70  4E 80 00 20 */	blr 
