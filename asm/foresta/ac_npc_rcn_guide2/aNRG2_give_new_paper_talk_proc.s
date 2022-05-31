lbl_80570FDC:
/* 80570FDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570FE0  7C 08 02 A6 */	mflr r0
/* 80570FE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570FE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570FEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80570FF0  7C 7E 1B 78 */	mr r30, r3
/* 80570FF4  4B E4 E6 B5 */	bl func_803BF6A8
/* 80570FF8  7C 7F 1B 78 */	mr r31, r3
/* 80570FFC  4B FF F5 15 */	bl aNRG2_check_job_start
/* 80571000  2C 03 00 01 */	cmpwi r3, 1
/* 80571004  40 82 00 24 */	bne lbl_80571028
/* 80571008  7F E3 FB 78 */	mr r3, r31
/* 8057100C  38 80 08 05 */	li r4, 0x805
/* 80571010  4B E4 EF B5 */	bl mMsg_Set_continue_msg_num
/* 80571014  7F C3 F3 78 */	mr r3, r30
/* 80571018  4B FF FC 69 */	bl aNRG2_job_start_talk_proc
/* 8057101C  38 00 00 01 */	li r0, 1
/* 80571020  90 1E 09 B8 */	stw r0, 0x9b8(r30)
/* 80571024  48 00 00 24 */	b lbl_80571048
lbl_80571028:
/* 80571028  7F E3 FB 78 */	mr r3, r31
/* 8057102C  38 80 07 FA */	li r4, 0x7fa
/* 80571030  4B E4 EF 95 */	bl mMsg_Set_continue_msg_num
/* 80571034  7F C3 F3 78 */	mr r3, r30
/* 80571038  38 80 00 04 */	li r4, 4
/* 8057103C  48 00 02 79 */	bl aNRG2_change_talk_proc
/* 80571040  38 00 00 00 */	li r0, 0
/* 80571044  90 1E 09 B8 */	stw r0, 0x9b8(r30)
lbl_80571048:
/* 80571048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057104C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80571050  83 C1 00 08 */	lwz r30, 8(r1)
/* 80571054  7C 08 03 A6 */	mtlr r0
/* 80571058  38 21 00 10 */	addi r1, r1, 0x10
/* 8057105C  4E 80 00 20 */	blr 
