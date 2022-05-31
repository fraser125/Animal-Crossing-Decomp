lbl_805A4A48:
/* 805A4A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4A4C  7C 08 02 A6 */	mflr r0
/* 805A4A50  3C 80 80 65 */	lis r4, lit_927@ha /* 0x8064A438@ha */
/* 805A4A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4A58  38 00 00 00 */	li r0, 0
/* 805A4A5C  C0 04 A4 38 */	lfs f0, lit_927@l(r4)  /* 0x8064A438@l */
/* 805A4A60  90 03 02 18 */	stw r0, 0x218(r3)
/* 805A4A64  38 00 00 05 */	li r0, 5
/* 805A4A68  D0 03 01 F4 */	stfs f0, 0x1f4(r3)
/* 805A4A6C  B0 03 02 3E */	sth r0, 0x23e(r3)
/* 805A4A70  4B FF E4 89 */	bl aGTT_speed_reset
/* 805A4A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4A78  7C 08 03 A6 */	mtlr r0
/* 805A4A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4A80  4E 80 00 20 */	blr 
