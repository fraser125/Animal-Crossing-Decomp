lbl_805608F8:
/* 805608F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805608FC  7C 08 02 A6 */	mflr r0
/* 80560900  90 01 00 34 */	stw r0, 0x34(r1)
/* 80560904  39 61 00 30 */	addi r11, r1, 0x30
/* 80560908  4B B3 A5 C5 */	bl func_8009AECC
/* 8056090C  7C 7B 1B 78 */	mr r27, r3
/* 80560910  7C 9C 23 78 */	mr r28, r4
/* 80560914  4B E5 ED 95 */	bl func_803BF6A8
/* 80560918  7C 7F 1B 78 */	mr r31, r3
/* 8056091C  4B E5 EE 49 */	bl mMsg_Check_not_series_main_wait
/* 80560920  2C 03 00 01 */	cmpwi r3, 1
/* 80560924  40 82 00 68 */	bne lbl_8056098C
/* 80560928  3B C0 32 1A */	li r30, 0x321a
/* 8056092C  3B A0 00 13 */	li r29, 0x13
/* 80560930  4B FF F4 C1 */	bl aNM2_chk_mask_texture
/* 80560934  2C 03 00 01 */	cmpwi r3, 1
/* 80560938  40 82 00 28 */	bne lbl_80560960
/* 8056093C  4B AF C3 B9 */	bl fqrand
/* 80560940  3C 60 80 65 */	lis r3, lit_876@ha /* 0x80649774@ha */
/* 80560944  3B A0 00 17 */	li r29, 0x17
/* 80560948  C0 03 97 74 */	lfs f0, lit_876@l(r3)  /* 0x80649774@l */
/* 8056094C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80560950  FC 00 00 1E */	fctiwz f0, f0
/* 80560954  D8 01 00 08 */	stfd f0, 8(r1)
/* 80560958  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8056095C  3B C3 31 E1 */	addi r30, r3, 0x31e1
lbl_80560960:
/* 80560960  7F E3 FB 78 */	mr r3, r31
/* 80560964  4B E6 03 E9 */	bl mMsg_Unset_LockContinue
/* 80560968  7F E3 FB 78 */	mr r3, r31
/* 8056096C  7F C4 F3 78 */	mr r4, r30
/* 80560970  4B E5 F6 55 */	bl mMsg_Set_continue_msg_num
/* 80560974  7F E3 FB 78 */	mr r3, r31
/* 80560978  4B E6 03 B1 */	bl mMsg_Set_ForceNext
/* 8056097C  7F 63 DB 78 */	mr r3, r27
/* 80560980  7F 84 E3 78 */	mr r4, r28
/* 80560984  7F A5 EB 78 */	mr r5, r29
/* 80560988  48 00 04 69 */	bl aNM2_setupAction
lbl_8056098C:
/* 8056098C  39 61 00 30 */	addi r11, r1, 0x30
/* 80560990  4B B3 A5 89 */	bl func_8009AF18
/* 80560994  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80560998  7C 08 03 A6 */	mtlr r0
/* 8056099C  38 21 00 30 */	addi r1, r1, 0x30
/* 805609A0  4E 80 00 20 */	blr 
