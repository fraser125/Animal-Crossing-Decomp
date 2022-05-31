lbl_805BC560:
/* 805BC560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC564  7C 08 02 A6 */	mflr r0
/* 805BC568  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC56C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC570  7C 7F 1B 78 */	mr r31, r3
/* 805BC574  4B E0 31 35 */	bl func_803BF6A8
/* 805BC578  4B E0 47 21 */	bl mMsg_Check_MainNormalContinue
/* 805BC57C  2C 03 00 01 */	cmpwi r3, 1
/* 805BC580  40 82 00 54 */	bne lbl_805BC5D4
/* 805BC584  4B DC 6F BD */	bl func_80383540
/* 805BC588  4B DC 75 E5 */	bl mChoice_Get_ChoseNum
/* 805BC58C  2C 03 00 01 */	cmpwi r3, 1
/* 805BC590  41 82 00 2C */	beq lbl_805BC5BC
/* 805BC594  40 80 00 40 */	bge lbl_805BC5D4
/* 805BC598  2C 03 00 00 */	cmpwi r3, 0
/* 805BC59C  40 80 00 08 */	bge lbl_805BC5A4
/* 805BC5A0  48 00 00 34 */	b lbl_805BC5D4
lbl_805BC5A4:
/* 805BC5A4  38 00 00 08 */	li r0, 8
/* 805BC5A8  7F E3 FB 78 */	mr r3, r31
/* 805BC5AC  98 1F 09 A1 */	stb r0, 0x9a1(r31)
/* 805BC5B0  38 80 00 0F */	li r4, 0xf
/* 805BC5B4  48 00 03 49 */	bl aSTC_clip_change_talk_proc
/* 805BC5B8  48 00 00 1C */	b lbl_805BC5D4
lbl_805BC5BC:
/* 805BC5BC  7F E3 FB 78 */	mr r3, r31
/* 805BC5C0  38 80 00 03 */	li r4, 3
/* 805BC5C4  48 00 03 39 */	bl aSTC_clip_change_talk_proc
/* 805BC5C8  7F E3 FB 78 */	mr r3, r31
/* 805BC5CC  38 80 00 47 */	li r4, 0x47
/* 805BC5D0  4B FF F6 E1 */	bl aSTC_clip_change_sound
lbl_805BC5D4:
/* 805BC5D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC5D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC5DC  7C 08 03 A6 */	mtlr r0
/* 805BC5E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC5E4  4E 80 00 20 */	blr 
