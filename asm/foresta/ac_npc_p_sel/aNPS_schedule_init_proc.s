lbl_80566764:
/* 80566764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566768  7C 08 02 A6 */	mflr r0
/* 8056676C  3C A0 80 56 */	lis r5, aNPS_think_proc@ha /* 0x80566730@ha */
/* 80566770  38 C0 00 76 */	li r6, 0x76
/* 80566774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566778  38 00 00 01 */	li r0, 1
/* 8056677C  39 00 01 B8 */	li r8, 0x1b8
/* 80566780  98 03 07 52 */	stb r0, 0x752(r3)
/* 80566784  38 05 67 30 */	addi r0, r5, aNPS_think_proc@l /* 0x80566730@l */
/* 80566788  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056678C  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80566790  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80566794  3C E5 00 02 */	addis r7, r5, 2
/* 80566798  38 00 FF FF */	li r0, -1
/* 8056679C  B0 C3 09 74 */	sth r6, 0x974(r3)
/* 805667A0  38 A0 00 06 */	li r5, 6
/* 805667A4  38 C0 00 00 */	li r6, 0
/* 805667A8  91 03 09 A8 */	stw r8, 0x9a8(r3)
/* 805667AC  90 03 09 AC */	stw r0, 0x9ac(r3)
/* 805667B0  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 805667B4  81 87 01 20 */	lwz r12, 0x120(r7)
/* 805667B8  7D 89 03 A6 */	mtctr r12
/* 805667BC  4E 80 04 21 */	bctrl 
/* 805667C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805667C4  7C 08 03 A6 */	mtlr r0
/* 805667C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805667CC  4E 80 00 20 */	blr 
