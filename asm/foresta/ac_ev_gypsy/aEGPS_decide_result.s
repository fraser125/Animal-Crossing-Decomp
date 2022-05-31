lbl_80520F8C:
/* 80520F8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80520F90  7C 08 02 A6 */	mflr r0
/* 80520F94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80520F98  39 61 00 20 */	addi r11, r1, 0x20
/* 80520F9C  4B B7 9F 35 */	bl func_8009AED0
/* 80520FA0  3C A0 80 6A */	lis r5, data_806A0838@ha /* 0x806A0838@ha */
/* 80520FA4  7C 7D 1B 78 */	mr r29, r3
/* 80520FA8  7C 9E 23 78 */	mr r30, r4
/* 80520FAC  38 60 00 04 */	li r3, 4
/* 80520FB0  3B 85 08 38 */	addi r28, r5, data_806A0838@l /* 0x806A0838@l */
/* 80520FB4  38 80 00 09 */	li r4, 9
/* 80520FB8  4B E7 74 C5 */	bl mDemo_Get_OrderValue
/* 80520FBC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80520FC0  41 82 00 D0 */	beq lbl_80521090
/* 80520FC4  4B E9 E6 E5 */	bl func_803BF6A8
/* 80520FC8  7C 60 1B 78 */	mr r0, r3
/* 80520FCC  38 60 00 04 */	li r3, 4
/* 80520FD0  7C 1F 03 78 */	mr r31, r0
/* 80520FD4  38 80 00 09 */	li r4, 9
/* 80520FD8  38 A0 00 00 */	li r5, 0
/* 80520FDC  4B E7 74 5D */	bl mDemo_Set_OrderValue
/* 80520FE0  80 1D 09 94 */	lwz r0, 0x994(r29)
/* 80520FE4  2C 00 00 02 */	cmpwi r0, 2
/* 80520FE8  40 82 00 64 */	bne lbl_8052104C
/* 80520FEC  4B B3 BD 09 */	bl fqrand
/* 80520FF0  3C 60 80 65 */	lis r3, lit_510@ha /* 0x80649148@ha */
/* 80520FF4  C0 03 91 48 */	lfs f0, lit_510@l(r3)  /* 0x80649148@l */
/* 80520FF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80520FFC  FC 00 00 1E */	fctiwz f0, f0
/* 80521000  D8 01 00 08 */	stfd f0, 8(r1)
/* 80521004  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80521008  2C 05 00 04 */	cmpwi r5, 4
/* 8052100C  40 80 00 08 */	bge lbl_80521014
/* 80521010  38 A0 00 04 */	li r5, 4
lbl_80521014:
/* 80521014  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80521018  38 85 00 90 */	addi r4, r5, 0x90
/* 8052101C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80521020  38 05 FF FC */	addi r0, r5, -4
/* 80521024  3C 63 00 02 */	addis r3, r3, 2
/* 80521028  7C C4 E0 AE */	lbzx r6, r4, r28
/* 8052102C  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 80521030  54 00 10 3A */	slwi r0, r0, 2
/* 80521034  38 9C 00 68 */	addi r4, r28, 0x68
/* 80521038  7F E3 FB 78 */	mr r3, r31
/* 8052103C  98 C5 10 A2 */	stb r6, 0x10a2(r5)
/* 80521040  7C 84 00 2E */	lwzx r4, r4, r0
/* 80521044  4B E9 EF 81 */	bl mMsg_Set_continue_msg_num
/* 80521048  48 00 00 30 */	b lbl_80521078
lbl_8052104C:
/* 8052104C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80521050  38 9C 00 80 */	addi r4, r28, 0x80
/* 80521054  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 80521058  7F E3 FB 78 */	mr r3, r31
/* 8052105C  3C A5 00 02 */	addis r5, r5, 2
/* 80521060  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 80521064  88 A5 10 A2 */	lbz r5, 0x10a2(r5)
/* 80521068  38 05 FF FF */	addi r0, r5, -1
/* 8052106C  54 00 10 3A */	slwi r0, r0, 2
/* 80521070  7C 84 00 2E */	lwzx r4, r4, r0
/* 80521074  4B E9 EF 51 */	bl mMsg_Set_continue_msg_num
lbl_80521078:
/* 80521078  81 9D 09 9C */	lwz r12, 0x99c(r29)
/* 8052107C  7F A3 EB 78 */	mr r3, r29
/* 80521080  7F C4 F3 78 */	mr r4, r30
/* 80521084  38 A0 00 00 */	li r5, 0
/* 80521088  7D 89 03 A6 */	mtctr r12
/* 8052108C  4E 80 04 21 */	bctrl 
lbl_80521090:
/* 80521090  39 61 00 20 */	addi r11, r1, 0x20
/* 80521094  4B B7 9E 89 */	bl func_8009AF1C
/* 80521098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052109C  7C 08 03 A6 */	mtlr r0
/* 805210A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805210A4  4E 80 00 20 */	blr 
