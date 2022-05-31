lbl_80489EB8:
/* 80489EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80489EBC  7C 08 02 A6 */	mflr r0
/* 80489EC0  38 83 01 C8 */	addi r4, r3, 0x1c8
/* 80489EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80489EC8  80 A3 01 78 */	lwz r5, 0x178(r3)
/* 80489ECC  80 65 00 00 */	lwz r3, 0(r5)
/* 80489ED0  80 63 01 80 */	lwz r3, 0x180(r3)
/* 80489ED4  38 63 00 20 */	addi r3, r3, 0x20
/* 80489ED8  4B F5 8B 7D */	bl mQst_CopyQuestInfo
/* 80489EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80489EE0  7C 08 03 A6 */	mtlr r0
/* 80489EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80489EE8  4E 80 00 20 */	blr 
