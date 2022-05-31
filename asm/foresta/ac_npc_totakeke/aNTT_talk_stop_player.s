lbl_80586860:
/* 80586860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586864  7C 08 02 A6 */	mflr r0
/* 80586868  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058686C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80586870  7C 7F 1B 78 */	mr r31, r3
/* 80586874  93 C1 00 08 */	stw r30, 8(r1)
/* 80586878  7C 9E 23 78 */	mr r30, r4
/* 8058687C  4B E3 8E 2D */	bl func_803BF6A8
/* 80586880  4B E3 A4 7D */	bl mMsg_Check_MainDisappear
/* 80586884  2C 03 00 00 */	cmpwi r3, 0
/* 80586888  41 82 00 44 */	beq lbl_805868CC
/* 8058688C  88 1F 09 AB */	lbz r0, 0x9ab(r31)
/* 80586890  28 00 00 00 */	cmplwi r0, 0
/* 80586894  40 82 00 38 */	bne lbl_805868CC
/* 80586898  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058689C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805868A0  3C 63 00 02 */	addis r3, r3, 2
/* 805868A4  80 63 60 84 */	lwz r3, 0x6084(r3)
/* 805868A8  28 03 00 00 */	cmplwi r3, 0
/* 805868AC  41 82 00 10 */	beq lbl_805868BC
/* 805868B0  81 83 00 14 */	lwz r12, 0x14(r3)
/* 805868B4  7D 89 03 A6 */	mtctr r12
/* 805868B8  4E 80 04 21 */	bctrl 
lbl_805868BC:
/* 805868BC  38 60 00 05 */	li r3, 5
/* 805868C0  4B DF 5F 61 */	bl mBGMPsComp_scene_mode
/* 805868C4  38 00 00 01 */	li r0, 1
/* 805868C8  98 1F 09 AB */	stb r0, 0x9ab(r31)
lbl_805868CC:
/* 805868CC  7F E4 FB 78 */	mr r4, r31
/* 805868D0  38 60 00 07 */	li r3, 7
/* 805868D4  4B E1 39 91 */	bl mDemo_Check
/* 805868D8  2C 03 00 00 */	cmpwi r3, 0
/* 805868DC  40 82 00 48 */	bne lbl_80586924
/* 805868E0  7F E4 FB 78 */	mr r4, r31
/* 805868E4  38 60 00 08 */	li r3, 8
/* 805868E8  4B E1 39 7D */	bl mDemo_Check
/* 805868EC  2C 03 00 00 */	cmpwi r3, 0
/* 805868F0  40 82 00 34 */	bne lbl_80586924
/* 805868F4  7F C3 F3 78 */	mr r3, r30
/* 805868F8  4B E5 2D 79 */	bl mPlib_get_player_actor_main_index
/* 805868FC  2C 03 00 4A */	cmpwi r3, 0x4a
/* 80586900  41 82 00 18 */	beq lbl_80586918
/* 80586904  7F C3 F3 78 */	mr r3, r30
/* 80586908  38 80 00 00 */	li r4, 0
/* 8058690C  38 A0 00 00 */	li r5, 0
/* 80586910  4B E5 44 75 */	bl mPlib_request_main_demo_wait_type1
/* 80586914  48 00 00 10 */	b lbl_80586924
lbl_80586918:
/* 80586918  7F E3 FB 78 */	mr r3, r31
/* 8058691C  38 80 00 00 */	li r4, 0
/* 80586920  48 00 02 45 */	bl aNTT_change_talk_proc
lbl_80586924:
/* 80586924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80586928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058692C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80586930  7C 08 03 A6 */	mtlr r0
/* 80586934  38 21 00 10 */	addi r1, r1, 0x10
/* 80586938  4E 80 00 20 */	blr 
