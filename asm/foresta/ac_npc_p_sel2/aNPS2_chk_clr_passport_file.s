lbl_80568FEC:
/* 80568FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80568FF0  7C 08 02 A6 */	mflr r0
/* 80568FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80568FF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80568FFC  7C 9F 23 78 */	mr r31, r4
/* 80569000  38 80 00 09 */	li r4, 9
/* 80569004  93 C1 00 08 */	stw r30, 8(r1)
/* 80569008  7C 7E 1B 78 */	mr r30, r3
/* 8056900C  38 60 00 04 */	li r3, 4
/* 80569010  4B E2 F4 6D */	bl mDemo_Get_OrderValue
/* 80569014  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80569018  41 82 00 58 */	beq lbl_80569070
/* 8056901C  38 60 00 04 */	li r3, 4
/* 80569020  38 80 00 09 */	li r4, 9
/* 80569024  38 A0 00 00 */	li r5, 0
/* 80569028  4B E2 F4 11 */	bl mDemo_Set_OrderValue
/* 8056902C  4B E1 A5 15 */	bl func_80383540
/* 80569030  4B E1 AB 3D */	bl mChoice_Get_ChoseNum
/* 80569034  2C 03 00 01 */	cmpwi r3, 1
/* 80569038  41 82 00 14 */	beq lbl_8056904C
/* 8056903C  40 80 00 34 */	bge lbl_80569070
/* 80569040  2C 03 00 00 */	cmpwi r3, 0
/* 80569044  40 80 00 1C */	bge lbl_80569060
/* 80569048  48 00 00 28 */	b lbl_80569070
lbl_8056904C:
/* 8056904C  7F C3 F3 78 */	mr r3, r30
/* 80569050  7F E4 FB 78 */	mr r4, r31
/* 80569054  38 A0 00 0E */	li r5, 0xe
/* 80569058  48 00 0D 71 */	bl aNPS2_change_talk_proc
/* 8056905C  48 00 00 14 */	b lbl_80569070
lbl_80569060:
/* 80569060  7F C3 F3 78 */	mr r3, r30
/* 80569064  7F E4 FB 78 */	mr r4, r31
/* 80569068  38 A0 00 04 */	li r5, 4
/* 8056906C  48 00 0D 5D */	bl aNPS2_change_talk_proc
lbl_80569070:
/* 80569070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80569074  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80569078  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056907C  7C 08 03 A6 */	mtlr r0
/* 80569080  38 21 00 10 */	addi r1, r1, 0x10
/* 80569084  4E 80 00 20 */	blr 