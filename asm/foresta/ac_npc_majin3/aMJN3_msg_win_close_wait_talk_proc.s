lbl_80558220:
/* 80558220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80558224  7C 08 02 A6 */	mflr r0
/* 80558228  38 80 00 09 */	li r4, 9
/* 8055822C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80558230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80558234  7C 7F 1B 78 */	mr r31, r3
/* 80558238  38 60 00 04 */	li r3, 4
/* 8055823C  4B E4 02 41 */	bl mDemo_Get_OrderValue
/* 80558240  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80558244  41 82 00 18 */	beq lbl_8055825C
/* 80558248  4B E6 74 61 */	bl func_803BF6A8
/* 8055824C  4B E6 77 F9 */	bl mMsg_request_main_disappear_wait_type1
/* 80558250  7F E3 FB 78 */	mr r3, r31
/* 80558254  38 80 00 01 */	li r4, 1
/* 80558258  48 00 01 6D */	bl aMJN3_change_talk_proc
lbl_8055825C:
/* 8055825C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80558260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80558264  7C 08 03 A6 */	mtlr r0
/* 80558268  38 21 00 10 */	addi r1, r1, 0x10
/* 8055826C  4E 80 00 20 */	blr 
