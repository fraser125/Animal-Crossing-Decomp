lbl_805A2358:
/* 805A2358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A235C  7C 08 02 A6 */	mflr r0
/* 805A2360  38 60 00 1C */	li r3, 0x1c
/* 805A2364  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A236C  3B E0 00 00 */	li r31, 0
/* 805A2370  4B E1 A0 ED */	bl zelda_malloc
/* 805A2374  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805A2378  28 03 00 00 */	cmplwi r3, 0
/* 805A237C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805A2380  3D 24 00 02 */	addis r9, r4, 2
/* 805A2384  90 69 60 B8 */	stw r3, 0x60b8(r9)
/* 805A2388  41 82 00 64 */	beq lbl_805A23EC
/* 805A238C  3C 80 80 5A */	lis r4, aGYO_make_gyoei@ha /* 0x805A20C8@ha */
/* 805A2390  3D 00 80 5A */	lis r8, aGYO_destruct@ha /* 0x805A1DE0@ha */
/* 805A2394  38 04 20 C8 */	addi r0, r4, aGYO_make_gyoei@l /* 0x805A20C8@l */
/* 805A2398  3C C0 80 5A */	lis r6, aGYO_ballcheck@ha /* 0x805A2130@ha */
/* 805A239C  90 03 00 00 */	stw r0, 0(r3)
/* 805A23A0  3C A0 80 5A */	lis r5, aGYO_hitcheck@ha /* 0x805A21CC@ha */
/* 805A23A4  3C 80 80 5A */	lis r4, aGYO_chk_live_gyoei@ha /* 0x805A2290@ha */
/* 805A23A8  3C 60 80 5A */	lis r3, aGYO_search_near_gyoei@ha /* 0x805A22F0@ha */
/* 805A23AC  80 E9 60 B8 */	lwz r7, 0x60b8(r9)
/* 805A23B0  38 08 1D E0 */	addi r0, r8, aGYO_destruct@l /* 0x805A1DE0@l */
/* 805A23B4  38 C6 21 30 */	addi r6, r6, aGYO_ballcheck@l /* 0x805A2130@l */
/* 805A23B8  38 A5 21 CC */	addi r5, r5, aGYO_hitcheck@l /* 0x805A21CC@l */
/* 805A23BC  90 07 00 08 */	stw r0, 8(r7)
/* 805A23C0  38 84 22 90 */	addi r4, r4, aGYO_chk_live_gyoei@l /* 0x805A2290@l */
/* 805A23C4  38 03 22 F0 */	addi r0, r3, aGYO_search_near_gyoei@l /* 0x805A22F0@l */
/* 805A23C8  3B E0 00 01 */	li r31, 1
/* 805A23CC  80 69 60 B8 */	lwz r3, 0x60b8(r9)
/* 805A23D0  90 C3 00 0C */	stw r6, 0xc(r3)
/* 805A23D4  80 69 60 B8 */	lwz r3, 0x60b8(r9)
/* 805A23D8  90 A3 00 10 */	stw r5, 0x10(r3)
/* 805A23DC  80 69 60 B8 */	lwz r3, 0x60b8(r9)
/* 805A23E0  90 83 00 14 */	stw r4, 0x14(r3)
/* 805A23E4  80 69 60 B8 */	lwz r3, 0x60b8(r9)
/* 805A23E8  90 03 00 18 */	stw r0, 0x18(r3)
lbl_805A23EC:
/* 805A23EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A23F0  7F E3 FB 78 */	mr r3, r31
/* 805A23F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A23F8  7C 08 03 A6 */	mtlr r0
/* 805A23FC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2400  4E 80 00 20 */	blr 
