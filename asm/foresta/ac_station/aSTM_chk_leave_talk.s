lbl_805BBFC8:
/* 805BBFC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BBFCC  7C 08 02 A6 */	mflr r0
/* 805BBFD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BBFD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BBFD8  7C 7F 1B 78 */	mr r31, r3
/* 805BBFDC  4B E0 36 CD */	bl func_803BF6A8
/* 805BBFE0  4B E0 4C B9 */	bl mMsg_Check_MainNormalContinue
/* 805BBFE4  2C 03 00 01 */	cmpwi r3, 1
/* 805BBFE8  40 82 00 40 */	bne lbl_805BC028
/* 805BBFEC  4B DC 75 55 */	bl func_80383540
/* 805BBFF0  4B DC 7B 7D */	bl mChoice_Get_ChoseNum
/* 805BBFF4  2C 03 00 01 */	cmpwi r3, 1
/* 805BBFF8  41 82 00 24 */	beq lbl_805BC01C
/* 805BBFFC  40 80 00 2C */	bge lbl_805BC028
/* 805BC000  2C 03 00 00 */	cmpwi r3, 0
/* 805BC004  40 80 00 08 */	bge lbl_805BC00C
/* 805BC008  48 00 00 20 */	b lbl_805BC028
lbl_805BC00C:
/* 805BC00C  7F E3 FB 78 */	mr r3, r31
/* 805BC010  38 80 00 01 */	li r4, 1
/* 805BC014  48 00 08 E9 */	bl aSTC_clip_change_talk_proc
/* 805BC018  48 00 00 10 */	b lbl_805BC028
lbl_805BC01C:
/* 805BC01C  7F E3 FB 78 */	mr r3, r31
/* 805BC020  38 80 00 0F */	li r4, 0xf
/* 805BC024  48 00 08 D9 */	bl aSTC_clip_change_talk_proc
lbl_805BC028:
/* 805BC028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC02C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC030  7C 08 03 A6 */	mtlr r0
/* 805BC034  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC038  4E 80 00 20 */	blr 
