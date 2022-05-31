lbl_8054B484:
/* 8054B484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B488  7C 08 02 A6 */	mflr r0
/* 8054B48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054B494  7C 7F 1B 78 */	mr r31, r3
/* 8054B498  4B FF FD 1D */	bl aCR_check_sleep_time
/* 8054B49C  38 03 FF FF */	addi r0, r3, -1
/* 8054B4A0  3C 60 80 55 */	lis r3, aCR_act_proc@ha /* 0x8054B3B4@ha */
/* 8054B4A4  30 00 FF FF */	addic r0, r0, -1
/* 8054B4A8  38 80 00 02 */	li r4, 2
/* 8054B4AC  7C A0 01 10 */	subfe r5, r0, r0
/* 8054B4B0  38 03 B3 B4 */	addi r0, r3, aCR_act_proc@l /* 0x8054B3B4@l */
/* 8054B4B4  7C 84 28 38 */	and r4, r4, r5
/* 8054B4B8  7F E3 FB 78 */	mr r3, r31
/* 8054B4BC  90 9F 09 94 */	stw r4, 0x994(r31)
/* 8054B4C0  90 1F 08 04 */	stw r0, 0x804(r31)
/* 8054B4C4  4B FF FC D5 */	bl aCR_set_request_act
/* 8054B4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B4CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054B4D0  7C 08 03 A6 */	mtlr r0
/* 8054B4D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B4D8  4E 80 00 20 */	blr 
