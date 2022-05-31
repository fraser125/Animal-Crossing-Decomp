lbl_8057AACC:
/* 8057AACC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057AAD0  7C 08 02 A6 */	mflr r0
/* 8057AAD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057AAD8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057AADC  4B B2 03 F9 */	bl func_8009AED4
/* 8057AAE0  7C 7D 1B 78 */	mr r29, r3
/* 8057AAE4  7C 9E 23 78 */	mr r30, r4
/* 8057AAE8  38 60 00 04 */	li r3, 4
/* 8057AAEC  38 80 00 09 */	li r4, 9
/* 8057AAF0  4B E1 D9 8D */	bl mDemo_Get_OrderValue
/* 8057AAF4  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 8057AAF8  4B E4 4B B1 */	bl func_803BF6A8
/* 8057AAFC  2C 1F 00 00 */	cmpwi r31, 0
/* 8057AB00  7C 7F 1B 78 */	mr r31, r3
/* 8057AB04  41 82 00 68 */	beq lbl_8057AB6C
/* 8057AB08  4B E4 61 91 */	bl mMsg_Check_MainNormalContinue
/* 8057AB0C  2C 03 00 00 */	cmpwi r3, 0
/* 8057AB10  41 82 00 5C */	beq lbl_8057AB6C
/* 8057AB14  4B FF C9 F9 */	bl aNSC_set_last_day_str
/* 8057AB18  4B AE 21 DD */	bl fqrand
/* 8057AB1C  3C 60 80 65 */	lis r3, lit_1706@ha /* 0x806499FC@ha */
/* 8057AB20  C0 03 99 FC */	lfs f0, lit_1706@l(r3)  /* 0x806499FC@l */
/* 8057AB24  EC 00 00 72 */	fmuls f0, f0, f1
/* 8057AB28  FC 00 00 1E */	fctiwz f0, f0
/* 8057AB2C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8057AB30  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8057AB34  38 63 00 35 */	addi r3, r3, 0x35
/* 8057AB38  4B FF D7 45 */	bl aNSC_get_msg_no
/* 8057AB3C  7C 65 1B 78 */	mr r5, r3
/* 8057AB40  7F E3 FB 78 */	mr r3, r31
/* 8057AB44  7F A4 EB 78 */	mr r4, r29
/* 8057AB48  4B FF D7 7D */	bl aNSC_Set_continue_msg_num
/* 8057AB4C  38 60 00 04 */	li r3, 4
/* 8057AB50  38 80 00 09 */	li r4, 9
/* 8057AB54  38 A0 00 00 */	li r5, 0
/* 8057AB58  4B E1 D8 E1 */	bl mDemo_Set_OrderValue
/* 8057AB5C  7F A3 EB 78 */	mr r3, r29
/* 8057AB60  7F C4 F3 78 */	mr r4, r30
/* 8057AB64  38 A0 00 0F */	li r5, 0xf
/* 8057AB68  48 00 19 4D */	bl aNSC_setupAction
lbl_8057AB6C:
/* 8057AB6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8057AB70  4B B2 03 B1 */	bl func_8009AF20
/* 8057AB74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057AB78  7C 08 03 A6 */	mtlr r0
/* 8057AB7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8057AB80  4E 80 00 20 */	blr 
