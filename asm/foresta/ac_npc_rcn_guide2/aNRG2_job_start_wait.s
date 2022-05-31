lbl_80571A94:
/* 80571A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571A98  7C 08 02 A6 */	mflr r0
/* 80571A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571AA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80571AA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80571AA8  7C 7E 1B 78 */	mr r30, r3
/* 80571AAC  4B E7 20 BD */	bl mQst_GetFirstJobData
/* 80571AB0  88 03 00 00 */	lbz r0, 0(r3)
/* 80571AB4  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 80571AB8  3B E3 FF FD */	addi r31, r3, -3
/* 80571ABC  4B FF EA 55 */	bl aNRG2_check_job_start
/* 80571AC0  2C 03 00 01 */	cmpwi r3, 1
/* 80571AC4  40 82 00 1C */	bne lbl_80571AE0
/* 80571AC8  3C 60 80 6C */	lis r3, job_start_talk_idx@ha /* 0x806BF314@ha */
/* 80571ACC  57 E0 10 3A */	slwi r0, r31, 2
/* 80571AD0  38 63 F3 14 */	addi r3, r3, job_start_talk_idx@l /* 0x806BF314@l */
/* 80571AD4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80571AD8  90 1E 09 A4 */	stw r0, 0x9a4(r30)
/* 80571ADC  48 00 00 18 */	b lbl_80571AF4
lbl_80571AE0:
/* 80571AE0  3C 60 80 6C */	lis r3, job_start_refuse_talk_idx@ha /* 0x806BF340@ha */
/* 80571AE4  57 E0 10 3A */	slwi r0, r31, 2
/* 80571AE8  38 63 F3 40 */	addi r3, r3, job_start_refuse_talk_idx@l /* 0x806BF340@l */
/* 80571AEC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80571AF0  90 1E 09 A4 */	stw r0, 0x9a4(r30)
lbl_80571AF4:
/* 80571AF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80571AFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80571B00  7C 08 03 A6 */	mtlr r0
/* 80571B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80571B08  4E 80 00 20 */	blr 
