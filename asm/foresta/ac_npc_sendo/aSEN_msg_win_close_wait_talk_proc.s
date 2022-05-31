lbl_80574D50:
/* 80574D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80574D54  7C 08 02 A6 */	mflr r0
/* 80574D58  38 80 00 09 */	li r4, 9
/* 80574D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80574D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80574D64  7C 7F 1B 78 */	mr r31, r3
/* 80574D68  38 60 00 04 */	li r3, 4
/* 80574D6C  4B E2 37 11 */	bl mDemo_Get_OrderValue
/* 80574D70  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80574D74  41 82 00 18 */	beq lbl_80574D8C
/* 80574D78  4B E4 A9 31 */	bl func_803BF6A8
/* 80574D7C  4B E4 AC C9 */	bl mMsg_request_main_disappear_wait_type1
/* 80574D80  7F E3 FB 78 */	mr r3, r31
/* 80574D84  38 80 00 05 */	li r4, 5
/* 80574D88  48 00 11 E5 */	bl aSEN_change_talk_proc
lbl_80574D8C:
/* 80574D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80574D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80574D94  7C 08 03 A6 */	mtlr r0
/* 80574D98  38 21 00 10 */	addi r1, r1, 0x10
/* 80574D9C  4E 80 00 20 */	blr 
