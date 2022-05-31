lbl_80570F88:
/* 80570F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570F8C  7C 08 02 A6 */	mflr r0
/* 80570F90  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80570F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570F98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570F9C  7C 7F 1B 78 */	mr r31, r3
/* 80570FA0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80570FA4  3C 63 00 02 */	addis r3, r3, 2
/* 80570FA8  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80570FAC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80570FB0  28 00 00 00 */	cmplwi r0, 0
/* 80570FB4  40 82 00 14 */	bne lbl_80570FC8
/* 80570FB8  4B E4 E6 F1 */	bl func_803BF6A8
/* 80570FBC  4B E4 FD 91 */	bl mMsg_Unset_LockContinue
/* 80570FC0  7F E3 FB 78 */	mr r3, r31
/* 80570FC4  4B FF FC BD */	bl aNRG2_job_start_talk_proc
lbl_80570FC8:
/* 80570FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570FD0  7C 08 03 A6 */	mtlr r0
/* 80570FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80570FD8  4E 80 00 20 */	blr 
