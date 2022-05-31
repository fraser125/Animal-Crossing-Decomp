lbl_80571A20:
/* 80571A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571A24  7C 08 02 A6 */	mflr r0
/* 80571A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571A2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80571A30  93 C1 00 08 */	stw r30, 8(r1)
/* 80571A34  7C 7E 1B 78 */	mr r30, r3
/* 80571A38  4B E7 21 31 */	bl mQst_GetFirstJobData
/* 80571A3C  88 03 00 00 */	lbz r0, 0(r3)
/* 80571A40  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 80571A44  3B E4 FF FD */	addi r31, r4, -3
/* 80571A48  4B E7 22 8D */	bl mQst_CheckFirstJobFin
/* 80571A4C  2C 03 00 01 */	cmpwi r3, 1
/* 80571A50  40 82 00 24 */	bne lbl_80571A74
/* 80571A54  3C 60 80 6C */	lis r3, job_end_talk_idx@ha /* 0x806BF2E8@ha */
/* 80571A58  57 E4 10 3A */	slwi r4, r31, 2
/* 80571A5C  38 63 F2 E8 */	addi r3, r3, job_end_talk_idx@l /* 0x806BF2E8@l */
/* 80571A60  38 00 00 00 */	li r0, 0
/* 80571A64  7C 63 20 2E */	lwzx r3, r3, r4
/* 80571A68  90 7E 09 A4 */	stw r3, 0x9a4(r30)
/* 80571A6C  90 1E 09 B8 */	stw r0, 0x9b8(r30)
/* 80571A70  48 00 00 0C */	b lbl_80571A7C
lbl_80571A74:
/* 80571A74  7F C3 F3 78 */	mr r3, r30
/* 80571A78  4B FF FF 51 */	bl aNRG2_setup_job_cont
lbl_80571A7C:
/* 80571A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571A80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80571A84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80571A88  7C 08 03 A6 */	mtlr r0
/* 80571A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80571A90  4E 80 00 20 */	blr 
