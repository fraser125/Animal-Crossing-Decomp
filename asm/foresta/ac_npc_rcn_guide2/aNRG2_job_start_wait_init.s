lbl_80571D1C:
/* 80571D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571D20  7C 08 02 A6 */	mflr r0
/* 80571D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571D28  4B FF FD 6D */	bl aNRG2_job_start_wait
/* 80571D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571D30  7C 08 03 A6 */	mtlr r0
/* 80571D34  38 21 00 10 */	addi r1, r1, 0x10
/* 80571D38  4E 80 00 20 */	blr 
