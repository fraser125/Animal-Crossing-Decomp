lbl_804086F0:
/* 804086F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804086F4  7C 08 02 A6 */	mflr r0
/* 804086F8  3C 80 80 66 */	lis r4, data_8065F038@ha /* 0x8065F038@ha */
/* 804086FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80408700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80408704  7C 7F 1B 78 */	mr r31, r3
/* 80408708  38 64 F0 38 */	addi r3, r4, data_8065F038@l /* 0x8065F038@l */
/* 8040870C  38 80 04 60 */	li r4, 0x460
/* 80408710  80 63 00 00 */	lwz r3, 0(r3)
/* 80408714  4B C5 49 55 */	bl bzero
/* 80408718  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 8040871C  38 A0 00 01 */	li r5, 1
/* 80408720  80 83 F0 38 */	lwz r4, data_8065F038@l(r3)  /* 0x8065F038@l */
/* 80408724  38 64 00 4C */	addi r3, r4, 0x4c
/* 80408728  38 84 00 24 */	addi r4, r4, 0x24
/* 8040872C  4B C5 78 49 */	bl osCreateMesgQueue
/* 80408730  7F E3 FB 78 */	mr r3, r31
/* 80408734  4B FF F5 15 */	bl padmgr_UnlockSerialMesgQ
/* 80408738  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 8040873C  38 A0 00 01 */	li r5, 1
/* 80408740  80 83 F0 38 */	lwz r4, data_8065F038@l(r3)  /* 0x8065F038@l */
/* 80408744  38 64 00 6C */	addi r3, r4, 0x6c
/* 80408748  38 84 00 28 */	addi r4, r4, 0x28
/* 8040874C  4B C5 78 29 */	bl osCreateMesgQueue
/* 80408750  4B FF F5 65 */	bl padmgr_UnlockContData
/* 80408754  3C 80 80 66 */	lis r4, data_8065F038@ha /* 0x8065F038@ha */
/* 80408758  7F E3 FB 78 */	mr r3, r31
/* 8040875C  38 84 F0 38 */	addi r4, r4, data_8065F038@l /* 0x8065F038@l */
/* 80408760  80 84 00 00 */	lwz r4, 0(r4)
/* 80408764  38 A4 00 14 */	addi r5, r4, 0x14
/* 80408768  4B C5 84 C1 */	bl func_80060C28
/* 8040876C  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 80408770  38 00 00 04 */	li r0, 4
/* 80408774  38 83 F0 38 */	addi r4, r3, data_8065F038@l /* 0x8065F038@l */
/* 80408778  80 64 00 00 */	lwz r3, 0(r4)
/* 8040877C  98 03 04 40 */	stb r0, 0x440(r3)
/* 80408780  80 64 00 00 */	lwz r3, 0(r4)
/* 80408784  88 63 04 40 */	lbz r3, 0x440(r3)
/* 80408788  4B C5 85 F5 */	bl osContSetCh
/* 8040878C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80408790  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80408794  7C 08 03 A6 */	mtlr r0
/* 80408798  38 21 00 10 */	addi r1, r1, 0x10
/* 8040879C  4E 80 00 20 */	blr 
