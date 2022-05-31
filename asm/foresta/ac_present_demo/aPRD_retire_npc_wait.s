lbl_80483DF4:
/* 80483DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483DF8  7C 08 02 A6 */	mflr r0
/* 80483DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483E00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80483E04  7C 9F 23 78 */	mr r31, r4
/* 80483E08  93 C1 00 08 */	stw r30, 8(r1)
/* 80483E0C  7C 7E 1B 78 */	mr r30, r3
/* 80483E10  80 03 01 7C */	lwz r0, 0x17c(r3)
/* 80483E14  28 00 00 00 */	cmplwi r0, 0
/* 80483E18  40 82 00 94 */	bne lbl_80483EAC
/* 80483E1C  38 A0 00 00 */	li r5, 0
/* 80483E20  98 BF 1F 51 */	stb r5, 0x1f51(r31)
/* 80483E24  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 80483E28  2C 00 00 01 */	cmpwi r0, 1
/* 80483E2C  41 82 00 40 */	beq lbl_80483E6C
/* 80483E30  40 80 00 10 */	bge lbl_80483E40
/* 80483E34  2C 00 00 00 */	cmpwi r0, 0
/* 80483E38  40 80 00 14 */	bge lbl_80483E4C
/* 80483E3C  48 00 00 60 */	b lbl_80483E9C
lbl_80483E40:
/* 80483E40  2C 00 00 03 */	cmpwi r0, 3
/* 80483E44  40 80 00 58 */	bge lbl_80483E9C
/* 80483E48  48 00 00 3C */	b lbl_80483E84
lbl_80483E4C:
/* 80483E4C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80483E50  7F E3 FB 78 */	mr r3, r31
/* 80483E54  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80483E58  3C 84 00 02 */	addis r4, r4, 2
/* 80483E5C  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 80483E60  B0 A4 23 D8 */	sth r5, 0x23d8(r4)
/* 80483E64  4B F5 63 6D */	bl mPlib_request_main_wait_type3
/* 80483E68  48 00 00 3C */	b lbl_80483EA4
lbl_80483E6C:
/* 80483E6C  38 60 00 1F */	li r3, 0x1f
/* 80483E70  4B F6 86 01 */	bl mSC_trophy_set
/* 80483E74  7F E3 FB 78 */	mr r3, r31
/* 80483E78  38 80 00 02 */	li r4, 2
/* 80483E7C  4B F5 63 A5 */	bl mPlib_request_main_demo_get_golden_item2_type1
/* 80483E80  48 00 00 24 */	b lbl_80483EA4
lbl_80483E84:
/* 80483E84  38 60 00 1C */	li r3, 0x1c
/* 80483E88  4B F6 85 E9 */	bl mSC_trophy_set
/* 80483E8C  7F E3 FB 78 */	mr r3, r31
/* 80483E90  38 80 00 01 */	li r4, 1
/* 80483E94  4B F5 63 8D */	bl mPlib_request_main_demo_get_golden_item2_type1
/* 80483E98  48 00 00 0C */	b lbl_80483EA4
lbl_80483E9C:
/* 80483E9C  7F E3 FB 78 */	mr r3, r31
/* 80483EA0  4B F5 63 31 */	bl mPlib_request_main_wait_type3
lbl_80483EA4:
/* 80483EA4  7F C3 F3 78 */	mr r3, r30
/* 80483EA8  4B EF 05 99 */	bl Actor_delete
lbl_80483EAC:
/* 80483EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483EB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80483EB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80483EB8  7C 08 03 A6 */	mtlr r0
/* 80483EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80483EC0  4E 80 00 20 */	blr 
