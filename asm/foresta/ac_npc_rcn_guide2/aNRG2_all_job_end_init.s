lbl_80571D3C:
/* 80571D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571D40  7C 08 02 A6 */	mflr r0
/* 80571D44  38 A0 00 00 */	li r5, 0
/* 80571D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80571D50  7C 9F 23 78 */	mr r31, r4
/* 80571D54  38 80 00 00 */	li r4, 0
/* 80571D58  7F E3 FB 78 */	mr r3, r31
/* 80571D5C  4B E6 90 29 */	bl mPlib_request_main_demo_wait_type1
/* 80571D60  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 80571D64  38 80 00 5B */	li r4, 0x5b
/* 80571D68  38 A0 00 07 */	li r5, 7
/* 80571D6C  4B E0 3F 75 */	bl Actor_info_name_search
/* 80571D70  38 00 00 01 */	li r0, 1
/* 80571D74  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 80571D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80571D80  7C 08 03 A6 */	mtlr r0
/* 80571D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80571D88  4E 80 00 20 */	blr 
