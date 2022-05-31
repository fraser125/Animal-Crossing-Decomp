lbl_805628C0:
/* 805628C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805628C4  7C 08 02 A6 */	mflr r0
/* 805628C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805628CC  39 61 00 20 */	addi r11, r1, 0x20
/* 805628D0  4B B3 86 05 */	bl func_8009AED4
/* 805628D4  7C 7D 1B 78 */	mr r29, r3
/* 805628D8  7C 9E 23 78 */	mr r30, r4
/* 805628DC  4B E5 CD CD */	bl func_803BF6A8
/* 805628E0  88 1E 1F 4E */	lbz r0, 0x1f4e(r30)
/* 805628E4  7C 7F 1B 78 */	mr r31, r3
/* 805628E8  28 00 00 00 */	cmplwi r0, 0
/* 805628EC  40 82 00 60 */	bne lbl_8056294C
/* 805628F0  80 9E 1F 60 */	lwz r4, 0x1f60(r30)
/* 805628F4  88 04 00 02 */	lbz r0, 2(r4)
/* 805628F8  28 00 00 01 */	cmplwi r0, 1
/* 805628FC  40 82 00 2C */	bne lbl_80562928
/* 80562900  38 80 2F EA */	li r4, 0x2fea
/* 80562904  4B E5 E0 95 */	bl mMsg_ChangeMsgData
/* 80562908  7F E3 FB 78 */	mr r3, r31
/* 8056290C  4B E5 E4 1D */	bl mMsg_Set_ForceNext
/* 80562910  7F E3 FB 78 */	mr r3, r31
/* 80562914  4B E5 D2 75 */	bl mMsg_request_main_appear_wait_type1
/* 80562918  7F A3 EB 78 */	mr r3, r29
/* 8056291C  38 80 00 11 */	li r4, 0x11
/* 80562920  48 00 1B 69 */	bl aNNW_change_talk_proc
/* 80562924  48 00 00 28 */	b lbl_8056294C
lbl_80562928:
/* 80562928  38 80 2F E9 */	li r4, 0x2fe9
/* 8056292C  4B E5 E0 6D */	bl mMsg_ChangeMsgData
/* 80562930  7F E3 FB 78 */	mr r3, r31
/* 80562934  4B E5 E3 F5 */	bl mMsg_Set_ForceNext
/* 80562938  7F E3 FB 78 */	mr r3, r31
/* 8056293C  4B E5 D2 4D */	bl mMsg_request_main_appear_wait_type1
/* 80562940  7F A3 EB 78 */	mr r3, r29
/* 80562944  38 80 00 01 */	li r4, 1
/* 80562948  48 00 1B 41 */	bl aNNW_change_talk_proc
lbl_8056294C:
/* 8056294C  39 61 00 20 */	addi r11, r1, 0x20
/* 80562950  4B B3 85 D1 */	bl func_8009AF20
/* 80562954  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80562958  7C 08 03 A6 */	mtlr r0
/* 8056295C  38 21 00 20 */	addi r1, r1, 0x20
/* 80562960  4E 80 00 20 */	blr 
