lbl_805685A4:
/* 805685A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805685A8  7C 08 02 A6 */	mflr r0
/* 805685AC  7C 67 1B 78 */	mr r7, r3
/* 805685B0  3C 60 80 6C */	lis r3, start_data@ha /* 0x806BE470@ha */
/* 805685B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805685B8  38 A3 E4 70 */	addi r5, r3, start_data@l /* 0x806BE470@l */
/* 805685BC  38 C1 00 08 */	addi r6, r1, 8
/* 805685C0  80 87 09 94 */	lwz r4, 0x994(r7)
/* 805685C4  80 67 09 A4 */	lwz r3, 0x9a4(r7)
/* 805685C8  38 04 FF E9 */	addi r0, r4, -23
/* 805685CC  80 87 09 A8 */	lwz r4, 0x9a8(r7)
/* 805685D0  54 00 10 3A */	slwi r0, r0, 2
/* 805685D4  7C A5 00 2E */	lwzx r5, r5, r0
/* 805685D8  80 A5 00 00 */	lwz r5, 0(r5)
/* 805685DC  4B E9 77 C5 */	bl mCD_InitGameStart_bg
/* 805685E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805685E4  7C 08 03 A6 */	mtlr r0
/* 805685E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805685EC  4E 80 00 20 */	blr 
