lbl_80564094:
/* 80564094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80564098  7C 08 02 A6 */	mflr r0
/* 8056409C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805640A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805640A4  7C 9F 23 78 */	mr r31, r4
/* 805640A8  93 C1 00 08 */	stw r30, 8(r1)
/* 805640AC  7C 7E 1B 78 */	mr r30, r3
/* 805640B0  4B E5 B5 F9 */	bl func_803BF6A8
/* 805640B4  3B FF 1D EC */	addi r31, r31, 0x1dec
/* 805640B8  4B E5 B6 89 */	bl mMsg_Check_main_wait
/* 805640BC  2C 03 00 01 */	cmpwi r3, 1
/* 805640C0  40 82 00 14 */	bne lbl_805640D4
/* 805640C4  7F E3 FB 78 */	mr r3, r31
/* 805640C8  4B FF D5 09 */	bl aNNW_gba_open_submenu_card_e
/* 805640CC  7F C3 F3 78 */	mr r3, r30
/* 805640D0  48 00 03 CD */	bl aNNW_change_talk_proc_next
lbl_805640D4:
/* 805640D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805640D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805640DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805640E0  7C 08 03 A6 */	mtlr r0
/* 805640E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805640E8  4E 80 00 20 */	blr 
