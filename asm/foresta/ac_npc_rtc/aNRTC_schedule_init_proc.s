lbl_805735D0:
/* 805735D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805735D4  7C 08 02 A6 */	mflr r0
/* 805735D8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805735DC  38 E0 00 76 */	li r7, 0x76
/* 805735E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805735E4  38 00 00 01 */	li r0, 1
/* 805735E8  39 20 00 00 */	li r9, 0
/* 805735EC  39 00 00 5A */	li r8, 0x5a
/* 805735F0  98 03 07 52 */	stb r0, 0x752(r3)
/* 805735F4  38 00 FF FF */	li r0, -1
/* 805735F8  3C C0 80 57 */	lis r6, aNRTC_think_proc@ha /* 0x8057359C@ha */
/* 805735FC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80573600  B0 E3 09 74 */	sth r7, 0x974(r3)
/* 80573604  3C E5 00 02 */	addis r7, r5, 2
/* 80573608  38 A0 00 06 */	li r5, 6
/* 8057360C  90 03 09 B4 */	stw r0, 0x9b4(r3)
/* 80573610  38 06 35 9C */	addi r0, r6, aNRTC_think_proc@l /* 0x8057359C@l */
/* 80573614  38 C0 00 00 */	li r6, 0
/* 80573618  91 23 09 B0 */	stw r9, 0x9b0(r3)
/* 8057361C  91 03 09 B8 */	stw r8, 0x9b8(r3)
/* 80573620  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80573624  91 23 09 A8 */	stw r9, 0x9a8(r3)
/* 80573628  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8057362C  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80573630  7D 89 03 A6 */	mtctr r12
/* 80573634  4E 80 04 21 */	bctrl 
/* 80573638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057363C  7C 08 03 A6 */	mtlr r0
/* 80573640  38 21 00 10 */	addi r1, r1, 0x10
/* 80573644  4E 80 00 20 */	blr 
