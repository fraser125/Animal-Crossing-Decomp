lbl_8057D4E0:
/* 8057D4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D4E4  7C 08 02 A6 */	mflr r0
/* 8057D4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D4EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D4F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8057D4F4  7C 7E 1B 78 */	mr r30, r3
/* 8057D4F8  4B E4 21 B1 */	bl func_803BF6A8
/* 8057D4FC  7C 7F 1B 78 */	mr r31, r3
/* 8057D500  4B E4 38 69 */	bl mMsg_Check_idling_now
/* 8057D504  2C 03 00 01 */	cmpwi r3, 1
/* 8057D508  40 82 00 18 */	bne lbl_8057D520
/* 8057D50C  7F E3 FB 78 */	mr r3, r31
/* 8057D510  4B E4 25 35 */	bl mMsg_request_main_disappear_wait_type1
/* 8057D514  7F C3 F3 78 */	mr r3, r30
/* 8057D518  38 80 00 08 */	li r4, 8
/* 8057D51C  48 00 00 91 */	bl aSHM_change_talk_proc
lbl_8057D520:
/* 8057D520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D528  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057D52C  7C 08 03 A6 */	mtlr r0
/* 8057D530  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D534  4E 80 00 20 */	blr 
