lbl_80564008:
/* 80564008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056400C  7C 08 02 A6 */	mflr r0
/* 80564010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80564014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80564018  7C 9F 23 78 */	mr r31, r4
/* 8056401C  93 C1 00 08 */	stw r30, 8(r1)
/* 80564020  7C 7E 1B 78 */	mr r30, r3
/* 80564024  4B E5 B6 85 */	bl func_803BF6A8
/* 80564028  88 1F 1F 4E */	lbz r0, 0x1f4e(r31)
/* 8056402C  7C 7F 1B 78 */	mr r31, r3
/* 80564030  28 00 00 00 */	cmplwi r0, 0
/* 80564034  40 82 00 48 */	bne lbl_8056407C
/* 80564038  48 07 82 AD */	bl func_805DC2E4
/* 8056403C  2C 03 00 00 */	cmpwi r3, 0
/* 80564040  41 82 00 14 */	beq lbl_80564054
/* 80564044  7F C3 F3 78 */	mr r3, r30
/* 80564048  38 80 00 35 */	li r4, 0x35
/* 8056404C  48 00 04 3D */	bl aNNW_change_talk_proc
/* 80564050  48 00 00 2C */	b lbl_8056407C
lbl_80564054:
/* 80564054  4B E5 B6 55 */	bl func_803BF6A8
/* 80564058  38 80 30 0F */	li r4, 0x300f
/* 8056405C  4B E5 BF 69 */	bl mMsg_Set_continue_msg_num
/* 80564060  7F E3 FB 78 */	mr r3, r31
/* 80564064  4B E5 BB 25 */	bl mMsg_request_main_appear_wait_type1
/* 80564068  7F E3 FB 78 */	mr r3, r31
/* 8056406C  4B E5 CC BD */	bl mMsg_Set_ForceNext
/* 80564070  7F C3 F3 78 */	mr r3, r30
/* 80564074  38 80 00 01 */	li r4, 1
/* 80564078  48 00 04 11 */	bl aNNW_change_talk_proc
lbl_8056407C:
/* 8056407C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80564080  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80564084  83 C1 00 08 */	lwz r30, 8(r1)
/* 80564088  7C 08 03 A6 */	mtlr r0
/* 8056408C  38 21 00 10 */	addi r1, r1, 0x10
/* 80564090  4E 80 00 20 */	blr 
