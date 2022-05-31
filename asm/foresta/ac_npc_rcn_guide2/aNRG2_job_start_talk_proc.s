lbl_80570C80:
/* 80570C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570C84  7C 08 02 A6 */	mflr r0
/* 80570C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570C8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570C90  93 C1 00 08 */	stw r30, 8(r1)
/* 80570C94  7C 7E 1B 78 */	mr r30, r3
/* 80570C98  4B E7 2E D1 */	bl mQst_GetFirstJobData
/* 80570C9C  7C 7F 1B 78 */	mr r31, r3
/* 80570CA0  7F C3 F3 78 */	mr r3, r30
/* 80570CA4  88 1F 00 00 */	lbz r0, 0(r31)
/* 80570CA8  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 80570CAC  38 84 FF FD */	addi r4, r4, -3
/* 80570CB0  4B FF FC 01 */	bl aNRG2_stepup_job
/* 80570CB4  4B FF F7 05 */	bl aNRG2_set_possession
/* 80570CB8  88 1F 00 00 */	lbz r0, 0(r31)
/* 80570CBC  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80570CC0  28 00 00 0C */	cmplwi r0, 0xc
/* 80570CC4  41 82 00 0C */	beq lbl_80570CD0
/* 80570CC8  28 00 00 0D */	cmplwi r0, 0xd
/* 80570CCC  40 82 00 0C */	bne lbl_80570CD8
lbl_80570CD0:
/* 80570CD0  38 80 00 04 */	li r4, 4
/* 80570CD4  48 00 00 08 */	b lbl_80570CDC
lbl_80570CD8:
/* 80570CD8  38 80 00 05 */	li r4, 5
lbl_80570CDC:
/* 80570CDC  7F C3 F3 78 */	mr r3, r30
/* 80570CE0  48 00 05 D5 */	bl aNRG2_change_talk_proc
/* 80570CE4  38 00 00 04 */	li r0, 4
/* 80570CE8  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80570CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570CF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570CF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80570CF8  7C 08 03 A6 */	mtlr r0
/* 80570CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80570D00  4E 80 00 20 */	blr 
