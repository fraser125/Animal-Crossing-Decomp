lbl_805728A8:
/* 805728A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805728AC  7C 08 02 A6 */	mflr r0
/* 805728B0  38 80 00 09 */	li r4, 9
/* 805728B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805728B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805728BC  7C 7F 1B 78 */	mr r31, r3
/* 805728C0  38 60 00 04 */	li r3, 4
/* 805728C4  4B E2 5B B9 */	bl mDemo_Get_OrderValue
/* 805728C8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805728CC  41 82 00 60 */	beq lbl_8057292C
/* 805728D0  4B E4 CD D9 */	bl func_803BF6A8
/* 805728D4  4B E4 E3 C5 */	bl mMsg_Check_MainNormalContinue
/* 805728D8  2C 03 00 01 */	cmpwi r3, 1
/* 805728DC  40 82 00 50 */	bne lbl_8057292C
/* 805728E0  38 60 00 04 */	li r3, 4
/* 805728E4  38 80 00 09 */	li r4, 9
/* 805728E8  38 A0 00 00 */	li r5, 0
/* 805728EC  4B E2 5B 4D */	bl mDemo_Set_OrderValue
/* 805728F0  4B E1 0C 51 */	bl func_80383540
/* 805728F4  4B E1 12 79 */	bl mChoice_Get_ChoseNum
/* 805728F8  2C 03 00 01 */	cmpwi r3, 1
/* 805728FC  41 82 00 24 */	beq lbl_80572920
/* 80572900  40 80 00 2C */	bge lbl_8057292C
/* 80572904  2C 03 00 00 */	cmpwi r3, 0
/* 80572908  40 80 00 08 */	bge lbl_80572910
/* 8057290C  48 00 00 20 */	b lbl_8057292C
lbl_80572910:
/* 80572910  7F E3 FB 78 */	mr r3, r31
/* 80572914  38 80 00 05 */	li r4, 5
/* 80572918  48 00 05 09 */	bl aNRST_change_talk_proc
/* 8057291C  48 00 00 10 */	b lbl_8057292C
lbl_80572920:
/* 80572920  7F E3 FB 78 */	mr r3, r31
/* 80572924  38 80 00 03 */	li r4, 3
/* 80572928  48 00 04 F9 */	bl aNRST_change_talk_proc
lbl_8057292C:
/* 8057292C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80572930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80572934  7C 08 03 A6 */	mtlr r0
/* 80572938  38 21 00 10 */	addi r1, r1, 0x10
/* 8057293C  4E 80 00 20 */	blr 
