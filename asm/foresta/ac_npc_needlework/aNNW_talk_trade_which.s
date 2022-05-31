lbl_80562BBC:
/* 80562BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80562BC0  7C 08 02 A6 */	mflr r0
/* 80562BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80562BC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80562BCC  7C 7F 1B 78 */	mr r31, r3
/* 80562BD0  4B E5 CA D9 */	bl func_803BF6A8
/* 80562BD4  4B E5 E0 C5 */	bl mMsg_Check_MainNormalContinue
/* 80562BD8  2C 03 00 01 */	cmpwi r3, 1
/* 80562BDC  40 82 00 20 */	bne lbl_80562BFC
/* 80562BE0  4B E5 CA C9 */	bl func_803BF6A8
/* 80562BE4  4B E5 CE 61 */	bl mMsg_request_main_disappear_wait_type1
/* 80562BE8  88 9F 09 B2 */	lbz r4, 0x9b2(r31)
/* 80562BEC  7F E3 FB 78 */	mr r3, r31
/* 80562BF0  38 04 00 01 */	addi r0, r4, 1
/* 80562BF4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80562BF8  48 00 18 91 */	bl aNNW_change_talk_proc
lbl_80562BFC:
/* 80562BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80562C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80562C04  7C 08 03 A6 */	mtlr r0
/* 80562C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80562C0C  4E 80 00 20 */	blr 
