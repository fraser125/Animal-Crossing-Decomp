lbl_80522BA4:
/* 80522BA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80522BA8  7C 08 02 A6 */	mflr r0
/* 80522BAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80522BB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80522BB4  4B B7 83 1D */	bl func_8009AED0
/* 80522BB8  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 80522BBC  7C 7C 1B 78 */	mr r28, r3
/* 80522BC0  28 00 00 00 */	cmplwi r0, 0
/* 80522BC4  40 82 00 B8 */	bne lbl_80522C7C
/* 80522BC8  83 E4 1F 60 */	lwz r31, 0x1f60(r4)
/* 80522BCC  3B A0 00 01 */	li r29, 1
/* 80522BD0  A0 1F 00 00 */	lhz r0, 0(r31)
/* 80522BD4  28 00 00 00 */	cmplwi r0, 0
/* 80522BD8  B0 1C 09 A2 */	sth r0, 0x9a2(r28)
/* 80522BDC  40 82 00 18 */	bne lbl_80522BF4
/* 80522BE0  3B C0 00 07 */	li r30, 7
/* 80522BE4  38 60 09 B6 */	li r3, 0x9b6
/* 80522BE8  4B FF FD 79 */	bl aEPK_restart_msg_win
/* 80522BEC  3B A0 00 00 */	li r29, 0
/* 80522BF0  48 00 00 58 */	b lbl_80522C48
lbl_80522BF4:
/* 80522BF4  28 00 28 06 */	cmplwi r0, 0x2806
/* 80522BF8  41 82 00 40 */	beq lbl_80522C38
/* 80522BFC  28 00 22 00 */	cmplwi r0, 0x2200
/* 80522C00  41 80 00 0C */	blt lbl_80522C0C
/* 80522C04  28 00 22 03 */	cmplwi r0, 0x2203
/* 80522C08  40 81 00 14 */	ble lbl_80522C1C
lbl_80522C0C:
/* 80522C0C  28 00 22 39 */	cmplwi r0, 0x2239
/* 80522C10  41 80 00 10 */	blt lbl_80522C20
/* 80522C14  28 00 22 3C */	cmplwi r0, 0x223c
/* 80522C18  41 81 00 08 */	bgt lbl_80522C20
lbl_80522C1C:
/* 80522C1C  3B A0 00 00 */	li r29, 0
lbl_80522C20:
/* 80522C20  3B C0 00 04 */	li r30, 4
/* 80522C24  38 60 00 04 */	li r3, 4
/* 80522C28  38 80 00 01 */	li r4, 1
/* 80522C2C  38 A0 00 03 */	li r5, 3
/* 80522C30  4B E7 58 09 */	bl mDemo_Set_OrderValue
/* 80522C34  48 00 00 14 */	b lbl_80522C48
lbl_80522C38:
/* 80522C38  4B FF FD 81 */	bl aEPK_decide_present
/* 80522C3C  3B C0 00 0A */	li r30, 0xa
/* 80522C40  38 60 09 B9 */	li r3, 0x9b9
/* 80522C44  4B FF FD 1D */	bl aEPK_restart_msg_win
lbl_80522C48:
/* 80522C48  2C 1D 00 01 */	cmpwi r29, 1
/* 80522C4C  40 82 00 24 */	bne lbl_80522C70
/* 80522C50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80522C54  88 9F 00 02 */	lbz r4, 2(r31)
/* 80522C58  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80522C5C  38 A0 00 00 */	li r5, 0
/* 80522C60  3C 63 00 02 */	addis r3, r3, 2
/* 80522C64  38 C0 00 00 */	li r6, 0
/* 80522C68  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80522C6C  4B EB E1 BD */	bl mPr_SetPossessionItem
lbl_80522C70:
/* 80522C70  7F 83 E3 78 */	mr r3, r28
/* 80522C74  7F C4 F3 78 */	mr r4, r30
/* 80522C78  48 00 05 69 */	bl aEPK_change_talk_proc
lbl_80522C7C:
/* 80522C7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80522C80  4B B7 82 9D */	bl func_8009AF1C
/* 80522C84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80522C88  7C 08 03 A6 */	mtlr r0
/* 80522C8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80522C90  4E 80 00 20 */	blr 
