lbl_805BC5E8:
/* 805BC5E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC5EC  7C 08 02 A6 */	mflr r0
/* 805BC5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC5F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC5F8  7C 7F 1B 78 */	mr r31, r3
/* 805BC5FC  93 C1 00 08 */	stw r30, 8(r1)
/* 805BC600  7C 9E 23 78 */	mr r30, r4
/* 805BC604  88 03 09 A5 */	lbz r0, 0x9a5(r3)
/* 805BC608  28 00 00 01 */	cmplwi r0, 1
/* 805BC60C  41 82 00 44 */	beq lbl_805BC650
/* 805BC610  88 1F 09 A1 */	lbz r0, 0x9a1(r31)
/* 805BC614  28 00 00 0A */	cmplwi r0, 0xa
/* 805BC618  40 82 00 38 */	bne lbl_805BC650
/* 805BC61C  4B E0 30 8D */	bl func_803BF6A8
/* 805BC620  4B E0 46 DD */	bl mMsg_Check_MainDisappear
/* 805BC624  2C 03 00 00 */	cmpwi r3, 0
/* 805BC628  41 82 00 28 */	beq lbl_805BC650
/* 805BC62C  88 7F 09 A5 */	lbz r3, 0x9a5(r31)
/* 805BC630  28 03 00 00 */	cmplwi r3, 0
/* 805BC634  41 82 00 0C */	beq lbl_805BC640
/* 805BC638  38 80 01 68 */	li r4, 0x168
/* 805BC63C  4B DB FC E9 */	bl mBGMPsComp_delete_ps_demo
lbl_805BC640:
/* 805BC640  38 60 02 1C */	li r3, 0x21c
/* 805BC644  4B DB F5 41 */	bl mBGMPsComp_make_ps_quiet
/* 805BC648  38 00 00 01 */	li r0, 1
/* 805BC64C  98 1F 09 A5 */	stb r0, 0x9a5(r31)
lbl_805BC650:
/* 805BC650  7F E4 FB 78 */	mr r4, r31
/* 805BC654  38 60 00 07 */	li r3, 7
/* 805BC658  4B DD DC 0D */	bl mDemo_Check
/* 805BC65C  2C 03 00 00 */	cmpwi r3, 0
/* 805BC660  40 82 00 34 */	bne lbl_805BC694
/* 805BC664  7F C3 F3 78 */	mr r3, r30
/* 805BC668  4B E1 D0 09 */	bl mPlib_get_player_actor_main_index
/* 805BC66C  2C 03 00 4A */	cmpwi r3, 0x4a
/* 805BC670  41 82 00 18 */	beq lbl_805BC688
/* 805BC674  7F C3 F3 78 */	mr r3, r30
/* 805BC678  38 80 00 00 */	li r4, 0
/* 805BC67C  38 A0 00 00 */	li r5, 0
/* 805BC680  4B E1 E7 05 */	bl mPlib_request_main_demo_wait_type1
/* 805BC684  48 00 00 10 */	b lbl_805BC694
lbl_805BC688:
/* 805BC688  7F E3 FB 78 */	mr r3, r31
/* 805BC68C  38 80 00 0F */	li r4, 0xf
/* 805BC690  48 00 02 6D */	bl aSTC_clip_change_talk_proc
lbl_805BC694:
/* 805BC694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC69C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BC6A0  7C 08 03 A6 */	mtlr r0
/* 805BC6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC6A8  4E 80 00 20 */	blr 
