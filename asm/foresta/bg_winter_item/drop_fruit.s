lbl_804C10A0:
/* 804C10A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804C10A4  7C 08 02 A6 */	mflr r0
/* 804C10A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 804C10AC  39 61 00 50 */	addi r11, r1, 0x50
/* 804C10B0  4B BD 9E 1D */	bl func_8009AECC
/* 804C10B4  3D 00 80 6A */	lis r8, fg_ytable@ha /* 0x806989CC@ha */
/* 804C10B8  38 00 00 15 */	li r0, 0x15
/* 804C10BC  7C 9C 23 78 */	mr r28, r4
/* 804C10C0  7C BD 2B 78 */	mr r29, r5
/* 804C10C4  7C DE 33 78 */	mr r30, r6
/* 804C10C8  7C FF 3B 78 */	mr r31, r7
/* 804C10CC  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 804C10D0  38 68 89 CC */	addi r3, r8, fg_ytable@l /* 0x806989CC@l */
/* 804C10D4  3B 60 00 00 */	li r27, 0
/* 804C10D8  7C 09 03 A6 */	mtctr r0
lbl_804C10DC:
/* 804C10DC  7C 03 DA 2E */	lhzx r0, r3, r27
/* 804C10E0  7C 04 00 40 */	cmplw r4, r0
/* 804C10E4  40 82 01 8C */	bne lbl_804C1270
/* 804C10E8  3C 60 80 6A */	lis r3, fg_ytable@ha /* 0x806989CC@ha */
/* 804C10EC  38 03 89 CC */	addi r0, r3, fg_ytable@l /* 0x806989CC@l */
/* 804C10F0  7C 60 DA 14 */	add r3, r0, r27
/* 804C10F4  A0 03 00 02 */	lhz r0, 2(r3)
/* 804C10F8  28 00 10 88 */	cmplwi r0, 0x1088
/* 804C10FC  40 82 00 98 */	bne lbl_804C1194
/* 804C1100  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C1104  39 20 00 08 */	li r9, 8
/* 804C1108  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C110C  3C 63 00 02 */	addis r3, r3, 2
/* 804C1110  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804C1114  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804C1118  28 00 00 05 */	cmplwi r0, 5
/* 804C111C  40 82 00 28 */	bne lbl_804C1144
/* 804C1120  4B B9 BB D5 */	bl fqrand
/* 804C1124  3C 60 80 64 */	lis r3, lit_1004@ha /* 0x8064617C@ha */
/* 804C1128  C0 03 61 7C */	lfs f0, lit_1004@l(r3)  /* 0x8064617C@l */
/* 804C112C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C1130  4C 41 13 82 */	cror 2, 1, 2
/* 804C1134  40 82 00 0C */	bne lbl_804C1140
/* 804C1138  39 20 00 03 */	li r9, 3
/* 804C113C  48 00 00 08 */	b lbl_804C1144
lbl_804C1140:
/* 804C1140  39 20 00 05 */	li r9, 5
lbl_804C1144:
/* 804C1144  38 81 00 08 */	addi r4, r1, 8
/* 804C1148  38 60 00 00 */	li r3, 0
/* 804C114C  38 A0 00 01 */	li r5, 1
/* 804C1150  38 C0 00 00 */	li r6, 0
/* 804C1154  38 E0 00 00 */	li r7, 0
/* 804C1158  39 00 00 00 */	li r8, 0
/* 804C115C  39 40 00 00 */	li r10, 0
/* 804C1160  4B F2 72 7D */	bl mSP_SelectRandomItem_New
/* 804C1164  3C 80 80 6A */	lis r4, fg_ytable@ha /* 0x806989CC@ha */
/* 804C1168  A0 61 00 08 */	lhz r3, 8(r1)
/* 804C116C  38 04 89 CC */	addi r0, r4, fg_ytable@l /* 0x806989CC@l */
/* 804C1170  7F 84 E3 78 */	mr r4, r28
/* 804C1174  7C C0 DA 14 */	add r6, r0, r27
/* 804C1178  7F A5 EB 78 */	mr r5, r29
/* 804C117C  A8 C6 00 06 */	lha r6, 6(r6)
/* 804C1180  7F C8 F3 78 */	mr r8, r30
/* 804C1184  7F E9 FB 78 */	mr r9, r31
/* 804C1188  38 E0 00 00 */	li r7, 0
/* 804C118C  4B FF F8 E1 */	bl fruit_set
/* 804C1190  48 00 00 68 */	b lbl_804C11F8
lbl_804C1194:
/* 804C1194  28 04 00 69 */	cmplwi r4, 0x69
/* 804C1198  7C 03 03 78 */	mr r3, r0
/* 804C119C  41 82 00 14 */	beq lbl_804C11B0
/* 804C11A0  28 04 00 78 */	cmplwi r4, 0x78
/* 804C11A4  41 82 00 0C */	beq lbl_804C11B0
/* 804C11A8  28 04 00 7F */	cmplwi r4, 0x7f
/* 804C11AC  40 82 00 24 */	bne lbl_804C11D0
lbl_804C11B0:
/* 804C11B0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804C11B4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804C11B8  3C 84 00 02 */	addis r4, r4, 2
/* 804C11BC  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 804C11C0  88 04 10 A2 */	lbz r0, 0x10a2(r4)
/* 804C11C4  28 00 00 04 */	cmplwi r0, 4
/* 804C11C8  40 82 00 08 */	bne lbl_804C11D0
/* 804C11CC  38 60 21 00 */	li r3, 0x2100
lbl_804C11D0:
/* 804C11D0  3C 80 80 6A */	lis r4, fg_ytable@ha /* 0x806989CC@ha */
/* 804C11D4  7F A5 EB 78 */	mr r5, r29
/* 804C11D8  38 04 89 CC */	addi r0, r4, fg_ytable@l /* 0x806989CC@l */
/* 804C11DC  7F C8 F3 78 */	mr r8, r30
/* 804C11E0  7C C0 DA 14 */	add r6, r0, r27
/* 804C11E4  7F 84 E3 78 */	mr r4, r28
/* 804C11E8  A8 C6 00 06 */	lha r6, 6(r6)
/* 804C11EC  7F E9 FB 78 */	mr r9, r31
/* 804C11F0  38 E0 00 00 */	li r7, 0
/* 804C11F4  4B FF F8 79 */	bl fruit_set
lbl_804C11F8:
/* 804C11F8  7F 84 E3 78 */	mr r4, r28
/* 804C11FC  7F A5 EB 78 */	mr r5, r29
/* 804C1200  38 61 00 24 */	addi r3, r1, 0x24
/* 804C1204  4B EE 42 79 */	bl mFI_UtNum2CenterWpos
/* 804C1208  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804C120C  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646144@ha */
/* 804C1210  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 804C1214  38 83 61 44 */	addi r4, r3, lit_664@l /* 0x80646144@l */
/* 804C1218  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804C121C  38 61 00 18 */	addi r3, r1, 0x18
/* 804C1220  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804C1224  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C1228  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 804C122C  90 01 00 20 */	stw r0, 0x20(r1)
/* 804C1230  4B EC E7 69 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C1234  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804C1238  3C 60 80 6A */	lis r3, fg_ytable@ha /* 0x806989CC@ha */
/* 804C123C  38 03 89 CC */	addi r0, r3, fg_ytable@l /* 0x806989CC@l */
/* 804C1240  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804C1244  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804C1248  7C 60 DA 14 */	add r3, r0, r27
/* 804C124C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804C1250  38 81 00 0C */	addi r4, r1, 0xc
/* 804C1254  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804C1258  38 A0 00 01 */	li r5, 1
/* 804C125C  A0 63 00 04 */	lhz r3, 4(r3)
/* 804C1260  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804C1264  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C1268  4B EE 65 C9 */	bl mFI_SetFG_common
/* 804C126C  48 00 00 0C */	b lbl_804C1278
lbl_804C1270:
/* 804C1270  3B 7B 00 08 */	addi r27, r27, 8
/* 804C1274  42 00 FE 68 */	bdnz lbl_804C10DC
lbl_804C1278:
/* 804C1278  39 61 00 50 */	addi r11, r1, 0x50
/* 804C127C  4B BD 9C 9D */	bl func_8009AF18
/* 804C1280  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804C1284  7C 08 03 A6 */	mtlr r0
/* 804C1288  38 21 00 50 */	addi r1, r1, 0x50
/* 804C128C  4E 80 00 20 */	blr 
