lbl_805C257C:
/* 805C257C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C2580  7C 08 02 A6 */	mflr r0
/* 805C2584  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C2588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C258C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C2590  80 C5 09 28 */	lwz r6, 0x928(r5)
/* 805C2594  83 E5 09 94 */	lwz r31, 0x994(r5)
/* 805C2598  54 C0 04 63 */	rlwinm. r0, r6, 0, 0x11, 0x11
/* 805C259C  41 82 00 0C */	beq lbl_805C25A8
/* 805C25A0  4B FF FA F5 */	bl func_805C2094
/* 805C25A4  48 00 00 34 */	b lbl_805C25D8
lbl_805C25A8:
/* 805C25A8  70 C0 90 00 */	andi. r0, r6, 0x9000
/* 805C25AC  41 82 00 2C */	beq lbl_805C25D8
/* 805C25B0  38 00 00 02 */	li r0, 2
/* 805C25B4  38 60 00 02 */	li r3, 2
/* 805C25B8  98 1F 00 02 */	stb r0, 2(r31)
/* 805C25BC  48 06 B7 49 */	bl sAdo_SysTrgStart
/* 805C25C0  88 BF 00 03 */	lbz r5, 3(r31)
/* 805C25C4  7F E3 FB 78 */	mr r3, r31
/* 805C25C8  38 9F 00 14 */	addi r4, r31, 0x14
/* 805C25CC  4B FF FB 9D */	bl mAD_pile_init
/* 805C25D0  38 00 00 00 */	li r0, 0
/* 805C25D4  98 1F 00 05 */	stb r0, 5(r31)
lbl_805C25D8:
/* 805C25D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C25DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C25E0  7C 08 03 A6 */	mtlr r0
/* 805C25E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805C25E8  4E 80 00 20 */	blr 
