lbl_805708B0:
/* 805708B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805708B4  7C 08 02 A6 */	mflr r0
/* 805708B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805708BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805708C0  7C 9F 23 78 */	mr r31, r4
/* 805708C4  93 C1 00 08 */	stw r30, 8(r1)
/* 805708C8  7C 7E 1B 78 */	mr r30, r3
/* 805708CC  4B E7 32 9D */	bl mQst_GetFirstJobData
/* 805708D0  88 03 00 01 */	lbz r0, 1(r3)
/* 805708D4  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 805708D8  28 00 00 01 */	cmplwi r0, 1
/* 805708DC  40 82 00 28 */	bne lbl_80570904
/* 805708E0  3C 60 80 6C */	lis r3, stepup_job_proc@ha /* 0x806BEFE4@ha */
/* 805708E4  57 E0 10 3A */	slwi r0, r31, 2
/* 805708E8  38 83 EF E4 */	addi r4, r3, stepup_job_proc@l /* 0x806BEFE4@l */
/* 805708EC  7F E3 FB 78 */	mr r3, r31
/* 805708F0  7D 84 00 2E */	lwzx r12, r4, r0
/* 805708F4  7F C4 F3 78 */	mr r4, r30
/* 805708F8  7D 89 03 A6 */	mtctr r12
/* 805708FC  4E 80 04 21 */	bctrl 
/* 80570900  4B FF FA 75 */	bl aNRG2_set_str_proc
lbl_80570904:
/* 80570904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057090C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80570910  7C 08 03 A6 */	mtlr r0
/* 80570914  38 21 00 10 */	addi r1, r1, 0x10
/* 80570918  4E 80 00 20 */	blr 
