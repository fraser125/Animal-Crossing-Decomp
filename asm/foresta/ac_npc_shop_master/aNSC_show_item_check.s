lbl_8057AB84:
/* 8057AB84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057AB88  7C 08 02 A6 */	mflr r0
/* 8057AB8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057AB90  39 61 00 20 */	addi r11, r1, 0x20
/* 8057AB94  4B B2 03 35 */	bl func_8009AEC8
/* 8057AB98  7C 7C 1B 78 */	mr r28, r3
/* 8057AB9C  7C 9D 23 78 */	mr r29, r4
/* 8057ABA0  4B E4 4B 09 */	bl func_803BF6A8
/* 8057ABA4  7C 7F 1B 78 */	mr r31, r3
/* 8057ABA8  4B E4 60 F1 */	bl mMsg_Check_MainNormalContinue
/* 8057ABAC  2C 03 00 00 */	cmpwi r3, 0
/* 8057ABB0  41 82 01 88 */	beq lbl_8057AD38
/* 8057ABB4  A3 7C 09 B4 */	lhz r27, 0x9b4(r28)
/* 8057ABB8  3B C0 00 1E */	li r30, 0x1e
/* 8057ABBC  3B 40 FF FF */	li r26, -1
/* 8057ABC0  4B E0 89 81 */	bl func_80383540
/* 8057ABC4  4B E0 8F A9 */	bl mChoice_Get_ChoseNum
/* 8057ABC8  2C 03 00 01 */	cmpwi r3, 1
/* 8057ABCC  41 82 01 04 */	beq lbl_8057ACD0
/* 8057ABD0  40 80 00 10 */	bge lbl_8057ABE0
/* 8057ABD4  2C 03 00 00 */	cmpwi r3, 0
/* 8057ABD8  40 80 00 14 */	bge lbl_8057ABEC
/* 8057ABDC  48 00 01 24 */	b lbl_8057AD00
lbl_8057ABE0:
/* 8057ABE0  2C 03 00 03 */	cmpwi r3, 3
/* 8057ABE4  40 80 01 1C */	bge lbl_8057AD00
/* 8057ABE8  48 00 01 10 */	b lbl_8057ACF8
lbl_8057ABEC:
/* 8057ABEC  57 60 C7 3E */	rlwinm r0, r27, 0x18, 0x1c, 0x1f
/* 8057ABF0  2C 00 00 07 */	cmpwi r0, 7
/* 8057ABF4  41 82 00 14 */	beq lbl_8057AC08
/* 8057ABF8  40 80 00 78 */	bge lbl_8057AC70
/* 8057ABFC  2C 00 00 06 */	cmpwi r0, 6
/* 8057AC00  40 80 00 3C */	bge lbl_8057AC3C
/* 8057AC04  48 00 00 6C */	b lbl_8057AC70
lbl_8057AC08:
/* 8057AC08  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057AC0C  7F 63 DB 78 */	mr r3, r27
/* 8057AC10  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8057AC14  3C 84 00 02 */	addis r4, r4, 2
/* 8057AC18  80 84 60 7C */	lwz r4, 0x607c(r4)
/* 8057AC1C  81 84 00 04 */	lwz r12, 4(r4)
/* 8057AC20  7D 89 03 A6 */	mtctr r12
/* 8057AC24  4E 80 04 21 */	bctrl 
/* 8057AC28  7F A3 EB 78 */	mr r3, r29
/* 8057AC2C  3B 40 00 29 */	li r26, 0x29
/* 8057AC30  38 80 00 00 */	li r4, 0
/* 8057AC34  4B FF C5 21 */	bl aNSC_request_show_camera
/* 8057AC38  48 00 00 8C */	b lbl_8057ACC4
lbl_8057AC3C:
/* 8057AC3C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057AC40  7F 63 DB 78 */	mr r3, r27
/* 8057AC44  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8057AC48  3C 84 00 02 */	addis r4, r4, 2
/* 8057AC4C  80 84 60 7C */	lwz r4, 0x607c(r4)
/* 8057AC50  81 84 00 08 */	lwz r12, 8(r4)
/* 8057AC54  7D 89 03 A6 */	mtctr r12
/* 8057AC58  4E 80 04 21 */	bctrl 
/* 8057AC5C  7F A3 EB 78 */	mr r3, r29
/* 8057AC60  3B 40 00 29 */	li r26, 0x29
/* 8057AC64  38 80 00 01 */	li r4, 1
/* 8057AC68  4B FF C4 ED */	bl aNSC_request_show_camera
/* 8057AC6C  48 00 00 58 */	b lbl_8057ACC4
lbl_8057AC70:
/* 8057AC70  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057AC74  88 7C 09 B6 */	lbz r3, 0x9b6(r28)
/* 8057AC78  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8057AC7C  88 9C 09 B7 */	lbz r4, 0x9b7(r28)
/* 8057AC80  3C A5 00 02 */	addis r5, r5, 2
/* 8057AC84  80 A5 60 6C */	lwz r5, 0x606c(r5)
/* 8057AC88  81 85 00 08 */	lwz r12, 8(r5)
/* 8057AC8C  7D 89 03 A6 */	mtctr r12
/* 8057AC90  4E 80 04 21 */	bctrl 
/* 8057AC94  38 00 00 1E */	li r0, 0x1e
/* 8057AC98  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057AC9C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057ACA0  90 1C 09 98 */	stw r0, 0x998(r28)
/* 8057ACA4  3C 63 00 02 */	addis r3, r3, 2
/* 8057ACA8  3B C0 00 27 */	li r30, 0x27
/* 8057ACAC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8057ACB0  3B 40 00 13 */	li r26, 0x13
/* 8057ACB4  A0 03 10 8A */	lhz r0, 0x108a(r3)
/* 8057ACB8  B0 1C 09 BC */	sth r0, 0x9bc(r28)
/* 8057ACBC  A0 1C 09 B4 */	lhz r0, 0x9b4(r28)
/* 8057ACC0  B0 1C 09 BE */	sth r0, 0x9be(r28)
lbl_8057ACC4:
/* 8057ACC4  38 00 00 01 */	li r0, 1
/* 8057ACC8  98 1C 09 B8 */	stb r0, 0x9b8(r28)
/* 8057ACCC  48 00 00 34 */	b lbl_8057AD00
lbl_8057ACD0:
/* 8057ACD0  57 60 C7 3E */	rlwinm r0, r27, 0x18, 0x1c, 0x1f
/* 8057ACD4  2C 00 00 08 */	cmpwi r0, 8
/* 8057ACD8  40 80 00 18 */	bge lbl_8057ACF0
/* 8057ACDC  2C 00 00 06 */	cmpwi r0, 6
/* 8057ACE0  40 80 00 08 */	bge lbl_8057ACE8
/* 8057ACE4  48 00 00 0C */	b lbl_8057ACF0
lbl_8057ACE8:
/* 8057ACE8  3B 40 00 2A */	li r26, 0x2a
/* 8057ACEC  48 00 00 14 */	b lbl_8057AD00
lbl_8057ACF0:
/* 8057ACF0  3B 40 00 14 */	li r26, 0x14
/* 8057ACF4  48 00 00 0C */	b lbl_8057AD00
lbl_8057ACF8:
/* 8057ACF8  3B C0 00 21 */	li r30, 0x21
/* 8057ACFC  3B 40 00 1F */	li r26, 0x1f
lbl_8057AD00:
/* 8057AD00  2C 1A FF FF */	cmpwi r26, -1
/* 8057AD04  41 82 00 34 */	beq lbl_8057AD38
/* 8057AD08  7F 43 D3 78 */	mr r3, r26
/* 8057AD0C  4B FF D5 71 */	bl aNSC_get_msg_no
/* 8057AD10  7C 65 1B 78 */	mr r5, r3
/* 8057AD14  7F E3 FB 78 */	mr r3, r31
/* 8057AD18  7F 84 E3 78 */	mr r4, r28
/* 8057AD1C  4B FF D5 A9 */	bl aNSC_Set_continue_msg_num
/* 8057AD20  7F E3 FB 78 */	mr r3, r31
/* 8057AD24  4B E4 60 05 */	bl mMsg_Set_ForceNext
/* 8057AD28  7F 83 E3 78 */	mr r3, r28
/* 8057AD2C  7F A4 EB 78 */	mr r4, r29
/* 8057AD30  7F C5 F3 78 */	mr r5, r30
/* 8057AD34  48 00 17 81 */	bl aNSC_setupAction
lbl_8057AD38:
/* 8057AD38  39 61 00 20 */	addi r11, r1, 0x20
/* 8057AD3C  4B B2 01 D9 */	bl func_8009AF14
/* 8057AD40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057AD44  7C 08 03 A6 */	mtlr r0
/* 8057AD48  38 21 00 20 */	addi r1, r1, 0x20
/* 8057AD4C  4E 80 00 20 */	blr 
