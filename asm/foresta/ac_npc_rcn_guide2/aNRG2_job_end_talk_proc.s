lbl_80570D04:
/* 80570D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570D08  7C 08 02 A6 */	mflr r0
/* 80570D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570D14  93 C1 00 08 */	stw r30, 8(r1)
/* 80570D18  7C 7E 1B 78 */	mr r30, r3
/* 80570D1C  4B E7 2E 4D */	bl mQst_GetFirstJobData
/* 80570D20  7C 7F 1B 78 */	mr r31, r3
/* 80570D24  88 03 00 00 */	lbz r0, 0(r3)
/* 80570D28  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80570D2C  28 00 00 04 */	cmplwi r0, 4
/* 80570D30  40 82 00 34 */	bne lbl_80570D64
/* 80570D34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80570D38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80570D3C  3C 63 00 02 */	addis r3, r3, 2
/* 80570D40  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80570D44  4B E5 F6 1D */	bl mNpc_CheckFriendAllAnimal
/* 80570D48  2C 03 00 00 */	cmpwi r3, 0
/* 80570D4C  41 82 00 10 */	beq lbl_80570D5C
/* 80570D50  4B E7 D0 65 */	bl mSC_check_ArbeitPlayer
/* 80570D54  28 03 00 00 */	cmplwi r3, 0
/* 80570D58  40 82 00 0C */	bne lbl_80570D64
lbl_80570D5C:
/* 80570D5C  38 60 00 09 */	li r3, 9
/* 80570D60  48 00 00 1C */	b lbl_80570D7C
lbl_80570D64:
/* 80570D64  88 1F 00 00 */	lbz r0, 0(r31)
/* 80570D68  3C 60 80 6C */	lis r3, next_job_no@ha /* 0x806BF0B4@ha */
/* 80570D6C  38 63 F0 B4 */	addi r3, r3, next_job_no@l /* 0x806BF0B4@l */
/* 80570D70  54 00 16 3A */	rlwinm r0, r0, 2, 0x18, 0x1d
/* 80570D74  7C 63 02 14 */	add r3, r3, r0
/* 80570D78  80 63 FF F4 */	lwz r3, -0xc(r3)
lbl_80570D7C:
/* 80570D7C  4B FF FB A1 */	bl aNRG2_setup_job
/* 80570D80  7F C3 F3 78 */	mr r3, r30
/* 80570D84  38 80 00 00 */	li r4, 0
/* 80570D88  48 00 05 2D */	bl aNRG2_change_talk_proc
/* 80570D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570D94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80570D98  7C 08 03 A6 */	mtlr r0
/* 80570D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80570DA0  4E 80 00 20 */	blr 
