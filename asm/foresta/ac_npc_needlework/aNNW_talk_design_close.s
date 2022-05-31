lbl_8056280C:
/* 8056280C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80562810  7C 08 02 A6 */	mflr r0
/* 80562814  90 01 00 24 */	stw r0, 0x24(r1)
/* 80562818  39 61 00 20 */	addi r11, r1, 0x20
/* 8056281C  4B B3 86 B9 */	bl func_8009AED4
/* 80562820  7C 7D 1B 78 */	mr r29, r3
/* 80562824  3B E4 1D EC */	addi r31, r4, 0x1dec
/* 80562828  4B E5 CE 81 */	bl func_803BF6A8
/* 8056282C  88 1F 01 62 */	lbz r0, 0x162(r31)
/* 80562830  7C 7E 1B 78 */	mr r30, r3
/* 80562834  28 00 00 00 */	cmplwi r0, 0
/* 80562838  40 82 00 70 */	bne lbl_805628A8
/* 8056283C  80 9F 01 74 */	lwz r4, 0x174(r31)
/* 80562840  A0 04 00 00 */	lhz r0, 0(r4)
/* 80562844  28 00 FF FF */	cmplwi r0, 0xffff
/* 80562848  40 82 00 3C */	bne lbl_80562884
/* 8056284C  8B C4 00 02 */	lbz r30, 2(r4)
/* 80562850  7F E3 FB 78 */	mr r3, r31
/* 80562854  7F C4 F3 78 */	mr r4, r30
/* 80562858  48 08 6F C9 */	bl mNW_get_image_no
/* 8056285C  98 7D 09 AE */	stb r3, 0x9ae(r29)
/* 80562860  7F E3 FB 78 */	mr r3, r31
/* 80562864  7F C5 F3 78 */	mr r5, r30
/* 80562868  38 80 00 19 */	li r4, 0x19
/* 8056286C  38 C0 00 00 */	li r6, 0
/* 80562870  4B E8 CE 6D */	bl mSM_open_submenu
/* 80562874  7F A3 EB 78 */	mr r3, r29
/* 80562878  38 80 00 10 */	li r4, 0x10
/* 8056287C  48 00 1C 0D */	bl aNNW_change_talk_proc
/* 80562880  48 00 00 28 */	b lbl_805628A8
lbl_80562884:
/* 80562884  38 80 2F E9 */	li r4, 0x2fe9
/* 80562888  4B E5 E1 11 */	bl mMsg_ChangeMsgData
/* 8056288C  7F C3 F3 78 */	mr r3, r30
/* 80562890  4B E5 E4 99 */	bl mMsg_Set_ForceNext
/* 80562894  7F C3 F3 78 */	mr r3, r30
/* 80562898  4B E5 D2 F1 */	bl mMsg_request_main_appear_wait_type1
/* 8056289C  7F A3 EB 78 */	mr r3, r29
/* 805628A0  38 80 00 01 */	li r4, 1
/* 805628A4  48 00 1B E5 */	bl aNNW_change_talk_proc
lbl_805628A8:
/* 805628A8  39 61 00 20 */	addi r11, r1, 0x20
/* 805628AC  4B B3 86 75 */	bl func_8009AF20
/* 805628B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805628B4  7C 08 03 A6 */	mtlr r0
/* 805628B8  38 21 00 20 */	addi r1, r1, 0x20
/* 805628BC  4E 80 00 20 */	blr 
