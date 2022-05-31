lbl_805719C8:
/* 805719C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805719CC  7C 08 02 A6 */	mflr r0
/* 805719D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805719D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805719D8  7C 7F 1B 78 */	mr r31, r3
/* 805719DC  4B E7 21 8D */	bl mQst_GetFirstJobData
/* 805719E0  88 03 00 00 */	lbz r0, 0(r3)
/* 805719E4  3C 80 80 6C */	lis r4, setup_job_cont_proc@ha /* 0x806BF2BC@ha */
/* 805719E8  38 84 F2 BC */	addi r4, r4, setup_job_cont_proc@l /* 0x806BF2BC@l */
/* 805719EC  7F E3 FB 78 */	mr r3, r31
/* 805719F0  54 05 06 BE */	clrlwi r5, r0, 0x1a
/* 805719F4  38 05 FF FD */	addi r0, r5, -3
/* 805719F8  54 00 10 3A */	slwi r0, r0, 2
/* 805719FC  7D 84 00 2E */	lwzx r12, r4, r0
/* 80571A00  7D 89 03 A6 */	mtctr r12
/* 80571A04  4E 80 04 21 */	bctrl 
/* 80571A08  90 7F 09 A4 */	stw r3, 0x9a4(r31)
/* 80571A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571A10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80571A14  7C 08 03 A6 */	mtlr r0
/* 80571A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80571A1C  4E 80 00 20 */	blr 
